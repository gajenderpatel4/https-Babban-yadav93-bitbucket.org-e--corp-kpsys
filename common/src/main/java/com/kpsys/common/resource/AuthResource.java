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

@Path("/auth")
public class AuthResource {

    @Inject
    private AuthDao authDao;

    @Inject
    private UserLoginDao userLoginDao;

    @Inject
    private RoleAuthorisationDao roleAuthorisationDao;

    //@Inject
    //private LoginLogDao loginLogDao;

    @Inject
    private ItemRoleDao itemRoleDao;

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
}
