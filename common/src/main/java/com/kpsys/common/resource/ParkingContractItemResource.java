package com.kpsys.common.resource;

import com.google.inject.Inject;
import com.kpsys.common.dao.ParkingContractItemDao;
import com.kpsys.common.dto.EntityResponse;
import com.kpsys.domain.ParkingContractItem;
import com.kpsys.domain.User;
import io.dropwizard.auth.Auth;
import io.dropwizard.hibernate.UnitOfWork;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

@Path("/parkingcontractitem")
public class ParkingContractItemResource {

    private static final Logger LOGGER = LoggerFactory.getLogger(ParkingContractItemResource.class);

    @Inject
    private ParkingContractItemDao parkingContractItemDao;

    @GET
    @Path("/findByParkingContract/{id}")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    @UnitOfWork
    public EntityResponse<List<ParkingContractItem>> findByParkingContract(@Auth User principal, @PathParam("id") Integer parkingContractId) {
        Integer userId = principal.getUserId();
        return EntityResponse.of(parkingContractItemDao.findByParkingContract(userId, parkingContractId));
    }
}
