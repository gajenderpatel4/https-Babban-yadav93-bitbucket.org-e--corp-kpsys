package com.kpsys.common.resource;

import com.codahale.metrics.annotation.Timed;
import com.google.inject.Inject;
import com.kpsys.common.dao.ParkingContractItemDao;
import com.kpsys.common.dto.BaseResponse;
import com.kpsys.common.dto.EntityResponse;
import com.kpsys.common.exceptions.KpsysException;
import com.kpsys.domain.ParkingContractItem;
import com.kpsys.domain.User;
import io.dropwizard.auth.Auth;
import io.dropwizard.hibernate.UnitOfWork;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.validation.Valid;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.util.List;
import java.util.Optional;

import static com.kpsys.common.dto.BaseResponse.ok;

@Path("/parkingcontractitem")
public class ParkingContractItemResource {

    private static final Logger LOGGER = LoggerFactory.getLogger(ParkingContractItemResource.class);

    @Inject
    private ParkingContractItemDao parkingContractItemDao;

    @GET
    @Path("/{parkingContractId}/list")
    @Produces(MediaType.APPLICATION_JSON)
    @Timed
    @UnitOfWork
    public EntityResponse<List<ParkingContractItem>> findByParkingContract(@Auth User principal, @PathParam("parkingContractId") Integer parkingContractId) {
        Integer userId = principal.getUserId();
        return EntityResponse.of(parkingContractItemDao.getByParkingContractAndUserIdAndParkingContractId(userId, parkingContractId));
    }

    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    @Timed
    @UnitOfWork
    public EntityResponse<ParkingContractItem> addParkingContractItem(@Auth User principal, @Valid ParkingContractItem parkingContractItem) {
        return EntityResponse.of(parkingContractItemDao.save(parkingContractItem));
    }

    @Path("{id}")
    @DELETE
    @Produces(MediaType.APPLICATION_JSON)
    @Timed
    @UnitOfWork
    public BaseResponse deleteParkingContractItem(@Auth User principal, @PathParam("id") Integer parkingContractItemId) {
        Integer userId = principal.getUserId();
        Optional<ParkingContractItem> parkingContractItemOptional = parkingContractItemDao.getByUserIdAndId(userId, parkingContractItemId);

        ParkingContractItem parkingContractItem = parkingContractItemOptional.orElseThrow(() -> {
            LOGGER.error("Unable to find parking contract item with id: " + parkingContractItemId);
            return new KpsysException("Unable to find parking contract item with id: " + parkingContractItemId, Response.Status.NOT_FOUND);
        });

        parkingContractItemDao.delete(parkingContractItem);
        return ok();
    }

    @Path("{id}")
    @PUT
    @Produces(MediaType.APPLICATION_JSON)
    @Timed
    @UnitOfWork
    public BaseResponse updateParkingContractItem(@Auth User principal, @PathParam("id") Integer parkingContractItemId, @Valid ParkingContractItem update) {
        Integer userId = principal.getUserId();
        Optional<ParkingContractItem> parkingContractItemOptional = parkingContractItemDao.getByUserIdAndId(userId, parkingContractItemId);

        ParkingContractItem parkingContractItem = parkingContractItemOptional.orElseThrow(() -> {
            LOGGER.error("Unable to find parking contract item with id: " + parkingContractItemId);
            return new KpsysException("Unable to find parking contract item with id: " + parkingContractItemId, Response.Status.NOT_FOUND);
        });

        parkingContractItem.shallowCopy(update);
        return EntityResponse.of(parkingContractItemDao.save(parkingContractItem));
    }
}
