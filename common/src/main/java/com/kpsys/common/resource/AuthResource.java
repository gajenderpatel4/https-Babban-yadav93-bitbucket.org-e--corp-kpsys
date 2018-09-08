package com.kpsys.common.resource;

import com.google.inject.Inject;
import com.kpsys.common.dao.AuthDao;
import com.kpsys.common.dao.LoginLogDao;
import com.kpsys.common.dao.RoleAuthorisationDao;
import com.kpsys.common.dao.UserLoginDao;
import com.kpsys.common.exceptions.KpsysException;
import com.kpsys.common.security.LoginRequest;
import com.kpsys.domain.AccessToken;
import com.kpsys.domain.RoleAuthorisation;
import com.kpsys.domain.User;
import io.dropwizard.auth.Auth;
import io.dropwizard.hibernate.UnitOfWork;
import org.joda.time.DateTime;

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

    @Inject
    private LoginLogDao loginLogDao;

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
        loginLogDao.logLogout(principal);
    }

    @Path("roleAuthorisation")
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    @UnitOfWork
    public List<RoleAuthorisation> getRoleAuthorisation(@Auth User principal) {
        Long userId = principal.getUserId();
        return roleAuthorisationDao.getRoleAuthorisation(userId);
    }

}
