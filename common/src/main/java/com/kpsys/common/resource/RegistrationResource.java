package com.kpsys.common.resource;

import com.google.i18n.phonenumbers.NumberParseException;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.Phonenumber;
import com.google.inject.Inject;
import com.kpsys.clickatell.ClickatellService;
import com.kpsys.common.config.RegisterConfiguration;
import com.kpsys.common.dao.AuthDao;
import com.kpsys.common.dao.UserDao;
import com.kpsys.common.dao.UserLoginDao;
import com.kpsys.common.dao.UserRegistrationDao;
import com.kpsys.common.dto.RegisterResponse;
import com.kpsys.common.exceptions.KpsysException;
import com.kpsys.common.requests.CompleteRegistrationRequest;
import com.kpsys.common.requests.ConfirmRequest;
import com.kpsys.common.requests.RegisterRequest;
import com.kpsys.domain.AccessToken;
import com.kpsys.domain.User;
import com.kpsys.domain.UserRegistration;
import com.kpsys.domain.enums.UserStatus;
import com.kpsys.domain.enums.UserType;
import io.dropwizard.auth.Auth;
import io.dropwizard.hibernate.UnitOfWork;
import org.apache.commons.lang3.StringUtils;
import org.joda.time.DateTime;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.util.Optional;
import java.util.Random;

import static com.kpsys.domain.User.encodePassword;

@Path("/registration")
public class RegistrationResource {

    private static final Logger LOGGER = LoggerFactory.getLogger(ClientResource.class);
    private static final Long DEFAULT_TENANT_ID = 24L;
    private static final String NULL_PASSWORD = "eil3thai3yoy3Iwumaicooxa4LohT0Gevoo0va7l";

    @Inject
    private AuthDao authDao;

    @Inject
    private UserDao userDao;

    @Inject
    private UserRegistrationDao userRegistrationDao;

    @Inject
    private RegisterConfiguration registerConfiguration;

    @Inject
    private ClickatellService clickatell;

    @Inject
    private UserLoginDao userLoginDao;

    private final Random random = new Random();

    private static String normalizePhone(String phone) {
        PhoneNumberUtil phoneUtil = PhoneNumberUtil.getInstance();
        Phonenumber.PhoneNumber phoneNumber;
        try {
            phoneNumber = phoneUtil.parse(phone, null);
        } catch (NumberParseException e) {
            return null;
        }
        if (phoneUtil.isValidNumber(phoneNumber) && phoneUtil.isPossibleNumber(phoneNumber)) {
            return phoneUtil.format(phoneNumber, PhoneNumberUtil.PhoneNumberFormat.E164);
        } else {
            return null;
        }
    }

    @POST
    @Path("register")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    @UnitOfWork
    public RegisterResponse register(@Context HttpServletRequest req, RegisterRequest registerRequest) throws KpsysException {
        if (!registerRequest.isValid()) {
            LOGGER.info("Wrong register request: " + registerRequest.toString());
            throw new KpsysException("Wrong register request");
        }
        String normalizedPhone = normalizePhone(registerRequest.getPhone());
        if (normalizedPhone == null) {
            LOGGER.info("Incorrect phone number: " + registerRequest.getPhone());
            throw new KpsysException("Incorrect phone number: " + registerRequest.getPhone());
        }

        if (userLoginDao.findUserByPhone(normalizedPhone).isPresent()) {
            LOGGER.info("Phone number already registered: " + registerRequest.toString());
            throw new KpsysException("User with the given phone number already exists");
        }

        String confirmationCode = StringUtils.leftPad(String.valueOf(random.nextInt(9999)), 4, '0');
        Optional<UserRegistration> userRegistration = userRegistrationDao.findByPhone(normalizedPhone)
            .flatMap(registration -> {
                if (registration.getCounter() >= 10) {
                    throwServiceUnavailable();
                }
                if (registration.getRegisterDate().plusSeconds(registerConfiguration.getSmsTimeout()).isAfter(new DateTime())) {
                    throwServiceUnavailable();
                }
                return Optional.of(registration
                    .withConfirmationCode(confirmationCode)
                    .withUpdatedRegistrationDate()
                    .withUpdatedCounter());
            });

        clickatell.sendConfirmationMessage(normalizedPhone, confirmationCode);

        UserRegistration result = userRegistrationDao.save(userRegistration
            .orElse(UserRegistration.fromRegisterRequest(registerRequest)
                .confirmationCode(confirmationCode)
                .phone(normalizedPhone)
                .build()));
        LOGGER.info("Saved user registration request: " + result.toString());
        return new RegisterResponse(DEFAULT_TENANT_ID, normalizedPhone, registerConfiguration.getSmsTimeout());
    }

    @POST
    @Path("confirm")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    @UnitOfWork
    public AccessToken confirmRegistration(@Context HttpServletRequest req, ConfirmRequest confirmRequest) {
        String code = StringUtils.leftPad(confirmRequest.getCode(), 4, '0');
        UserRegistration userRegistration = userRegistrationDao.findByPhoneAndCode(confirmRequest.getPhone(), code)
            .orElseThrow(() -> {
                LOGGER.info(String.format("Wrong confirmation code %s for number %s", confirmRequest.getCode(), confirmRequest.getPhone()));
                return new KpsysException("Wrong confirmation code");
            });
        LOGGER.info("Confirmed user registration: " + userRegistration.toString());
        User user = User.builder()
            .phone(confirmRequest.getPhone())
            .userStatus(UserStatus.ACTIVE)
            .userType(UserType.EXTERNAL_USER)
            .email(userRegistration.getEmail())
            .password(NULL_PASSWORD)
            .login(userRegistration.getFirstName() + " " + userRegistration.getLastName())
            .build();
        userDao.save(user);
        LOGGER.debug("Created user: " + user.toString());
        userRegistrationDao.delete(userRegistration);
        return authDao.generateNewAccessToken(user, new DateTime());
    }

    @POST
    @Path("completeRegistration")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    @UnitOfWork
    public User completeRegistration(@Context HttpServletRequest req, @Auth User __, CompleteRegistrationRequest completeRegistrationRequest) {
        User user = userLoginDao.findUserByToken(completeRegistrationRequest.getToken())
            .orElseThrow(() -> new KpsysException("Bad token"));
        user.setPassword(encodePassword(completeRegistrationRequest.getPassword()));
        userDao.save(user);
        return user;
    }

    private Optional<UserRegistration> throwServiceUnavailable() {
        throw new KpsysException("Service is unavailable at the moment", Response.Status.BAD_REQUEST);
    }
}
