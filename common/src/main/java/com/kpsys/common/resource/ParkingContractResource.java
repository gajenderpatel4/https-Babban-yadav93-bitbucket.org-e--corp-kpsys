package com.kpsys.common.resource;

import com.google.inject.Inject;
import com.kpsys.common.dao.ParkingContractDao;
import com.kpsys.common.dto.EntityResponse;
import com.kpsys.common.exceptions.KpsysException;
import com.kpsys.domain.ParkingContract;
import com.kpsys.domain.User;
import io.dropwizard.auth.Auth;
import io.dropwizard.hibernate.UnitOfWork;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.util.Optional;

@Path("/parkingcontract")
public class ParkingContractResource {

    private static final Logger LOGGER = LoggerFactory.getLogger(ParkingContractResource.class);

    @Inject
    private ParkingContractDao parkingContractDao;

    @GET
    @Path("read/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    @UnitOfWork
    public EntityResponse<ParkingContract> findParkingContractById(@Auth User principal, @PathParam("id") Long id) {
        Long userId = principal.getUserId();
        Optional<ParkingContract> parkingContractOptional = parkingContractDao.getParkingContractByIdAndUserId(id, userId);
        ParkingContract parkingContract = parkingContractOptional.orElseThrow(() -> {
            LOGGER.error("Unable to find parking contract with id: " + id);
            return new KpsysException("Unable to find parking contract with id: " + id, Response.Status.NOT_FOUND);
        });
        return EntityResponse.of(parkingContract);
    }
}
