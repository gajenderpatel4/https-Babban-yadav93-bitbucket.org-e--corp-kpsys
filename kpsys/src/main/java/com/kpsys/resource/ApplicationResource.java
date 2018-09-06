package com.kpsys.resource;

import com.codahale.metrics.annotation.Timed;
import com.google.inject.Inject;
import com.google.inject.Singleton;
import com.kpsys.common.dao.ClientDao;
import com.kpsys.domain.Client;
import com.kpsys.domain.User;
import io.dropwizard.auth.Auth;
import io.dropwizard.hibernate.UnitOfWork;

import javax.ws.rs.DefaultValue;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import java.util.List;

@Path("/dashboard/")
@Singleton
public class ApplicationResource {

    @Inject
    private ClientDao clientDao;

    @Path("clients")
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Timed
    @UnitOfWork
    public List<Client> listClients(@Auth User principal, @QueryParam("start") @DefaultValue("0") int start,
                                    @QueryParam("limit") @DefaultValue("100") int limit) {
        return clientDao.getClients(start, limit);
    }
}
