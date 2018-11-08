package com.kpsys.common.resource;

import com.codahale.metrics.annotation.Timed;
import com.google.inject.Inject;
import com.kpsys.common.dao.ParkingContractDao;
import com.kpsys.common.dto.BaseResponse;
import com.kpsys.common.dto.EntityResponse;
import com.kpsys.common.exceptions.KpsysException;
import com.kpsys.domain.ParkingContract;
import com.kpsys.domain.User;
import io.dropwizard.auth.Auth;
import io.dropwizard.hibernate.UnitOfWork;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.validation.Valid;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.util.Optional;

@Path("/parkingcontract")
public class ParkingContractResource {

    private static final Logger LOGGER = LoggerFactory.getLogger(ParkingContractResource.class);

    @Inject
    private ParkingContractDao parkingContractDao;

    @GET
    @Path("{id}")
    @Produces(MediaType.APPLICATION_JSON)
    @Timed
    @UnitOfWork
    public EntityResponse<ParkingContract> findParkingContractById(@Auth User principal, @PathParam("id") Integer id) {
        Integer userId = principal.getUserId();
        Optional<ParkingContract> parkingContractOptional = parkingContractDao.getByIdAndUserId(id, userId);
        ParkingContract parkingContract = parkingContractOptional.orElseThrow(() -> {
            LOGGER.error("Unable to find parking contract with id: " + id);
            return new KpsysException("Unable to find parking contract with id: " + id, Response.Status.NOT_FOUND);
        });
        return EntityResponse.of(parkingContract);
    }

    @Path("{id}")
    @PUT
    @Produces(MediaType.APPLICATION_JSON)
    @Timed
    @UnitOfWork
    public BaseResponse updateParkingContract(@Auth User principal, @PathParam("id") Integer parkingContractId, @Valid ParkingContract update) {
        Integer userId = principal.getUserId();
        Optional<ParkingContract> parkingContractOptional = parkingContractDao.getByIdAndUserId(userId, parkingContractId);

        ParkingContract parkingContract = parkingContractOptional.orElseThrow(() -> {
            LOGGER.error("Unable to find parking contract with id: " + parkingContractId);
            return new KpsysException("Unable to find parking contract with id: " + parkingContractId, Response.Status.NOT_FOUND);
        });

        parkingContract.shallowCopy(update);
        return EntityResponse.of(parkingContractDao.save(parkingContract));
    }
}
