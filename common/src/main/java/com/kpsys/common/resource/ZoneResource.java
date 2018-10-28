package com.kpsys.common.resource;

import com.google.inject.Inject;
import com.kpsys.common.dao.ZoneDao;
import com.kpsys.common.dto.EntityResponse;
import com.kpsys.domain.User;
import com.kpsys.domain.Zone;
import io.dropwizard.auth.Auth;
import io.dropwizard.hibernate.UnitOfWork;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import java.util.List;

@Path("/zone")
public class ZoneResource {

    @Inject
    private ZoneDao zoneDao;

    @GET
    @Path("/list")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    @UnitOfWork
    public EntityResponse<List<Zone>> getAllZones(@Auth User principal) {
        return EntityResponse.of(zoneDao.getZones());
    }
}
