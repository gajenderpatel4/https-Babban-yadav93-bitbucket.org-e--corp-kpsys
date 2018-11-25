package com.kpsys.common.resource;

import com.google.i18n.phonenumbers.NumberParseException;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.Phonenumber;
import com.google.inject.Inject;
import com.kpsys.clickatell.ClickatellService;
import com.kpsys.common.config.RegisterConfiguration;
import com.kpsys.common.dao.UserLoginDao;
import com.kpsys.common.dao.UserRegistrationDao;
import com.kpsys.common.dto.RegisterResponse;
import com.kpsys.common.exceptions.KpsysException;
import com.kpsys.common.requests.RegisterRequest;
import com.kpsys.domain.UserRegistration;
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

@Path("/registration")
public class RegistrationResource {

    private static final Logger LOGGER = LoggerFactory.getLogger(ClientResource.class);
    private static final Long DEFAULT_TENANT_ID = 24L;

    @Inject
    private UserRegistrationDao userRegistrationDao;

    @Inject
    private RegisterConfiguration registerConfiguration;

    @Inject
    private ClickatellService clickatell;

    @Inject
    private UserLoginDao userLoginDao;

    private Random random = new Random();

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

        if (userLoginDao.findUserByLogin(normalizedPhone).isPresent()) {
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

    private Optional<UserRegistration> throwServiceUnavailable() {
        throw new KpsysException("Service is unavailable at the moment", Response.Status.BAD_REQUEST);
    }
}
