package com.kpsys.common.resource;

import com.google.i18n.phonenumbers.NumberParseException;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.Phonenumber;
import com.google.inject.Inject;
import com.kpsys.clickatell.ClickatellService;
import com.kpsys.common.config.RegisterConfiguration;
import com.kpsys.common.dao.*;
import com.kpsys.common.dto.RegisterResponse;
import com.kpsys.common.exceptions.KpsysException;
import com.kpsys.common.requests.RegisterRequest;
import com.kpsys.common.security.LoginRequest;
import com.kpsys.domain.*;
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
import java.util.List;
import java.util.Optional;
import java.util.Random;

@Path("/auth")
public class AuthResource {

    private static final Logger LOGGER = LoggerFactory.getLogger(ClientResource.class);
    private static final Long DEFAULT_TENANT_ID = 24L;

    @Inject
    private AuthDao authDao;

    @Inject
    private UserLoginDao userLoginDao;

    @Inject
    private RoleAuthorisationDao roleAuthorisationDao;

    @Inject
    private UserRegistrationDao userRegistrationDao;

    @Inject
    private RegisterConfiguration registerConfiguration;

    //@Inject
    //private LoginLogDao loginLogDao;

    @Inject
    private ItemRoleDao itemRoleDao;

    @Inject
    private ClickatellService clickatell;

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
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    @UnitOfWork
    public AccessToken login(@Context HttpServletRequest req, LoginRequest loginRequest) {
        Optional<User> userOptional = userLoginDao.findUserByUsernameAndPassword(loginRequest.getLogin(), loginRequest.getPassword());
        User user = userOptional.orElseThrow(() -> new KpsysException("Incorrect login/password", Response.Status.UNAUTHORIZED));
        AccessToken token = authDao.generateNewAccessToken(user, new DateTime());
        //loginLogDao.logLogin(user, req.getRemoteAddr());
        return token;
    }

    @Path("logout")
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    @UnitOfWork
    public void logout(@Auth User principal, String token) {
        authDao.deleteByAccessToken(token);
        //loginLogDao.logLogout(principal);
    }

    @Path("roleAuthorisation")
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    @UnitOfWork
    public List<RoleAuthorisation> getRoleAuthorisation(@Auth User principal) {
        Integer userId = principal.getUserId();
        return roleAuthorisationDao.getRoleAuthorisation(userId);
    }

    @Path("parkingContractRoleAuthorisation")
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    @UnitOfWork
    public List<ItemRole> getParkingContractRoleAuthorisation(@Auth User principal) {
        Integer userId = principal.getUserId();
        return itemRoleDao.getParkingContractsIdsWithRolesForUser(userId);
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
