package com.kpsys.common.resource;

import com.codahale.metrics.annotation.Timed;
import com.google.inject.Inject;
import com.kpsys.common.dao.UserDao;
import com.kpsys.common.dto.BaseResponse;
import com.kpsys.common.dto.EntityResponse;
import com.kpsys.common.requests.UpdateUserRequest;
import com.kpsys.domain.User;
import io.dropwizard.auth.Auth;
import io.dropwizard.hibernate.UnitOfWork;

import javax.validation.Valid;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;

@Path("/users")
public class UsersResource {

    @Inject
    private UserDao userDao;

    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    @UnitOfWork
    public EntityResponse<User> getUser(@Auth User principal) {
        Integer userId = principal.getUserId();
        User user = userDao.getUser(userId);
        return EntityResponse.of(user);
    }

    @PUT
    @Produces(MediaType.APPLICATION_JSON)
    @Timed
    @UnitOfWork
    public BaseResponse updateParkingContract(@Auth User principal, @Valid UpdateUserRequest update) {
        principal.shallowCopy(update);
        return EntityResponse.of(userDao.save(principal));
    }
}
