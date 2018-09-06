package com.kpsys.resource;

import com.codahale.metrics.annotation.Timed;
import com.google.inject.Inject;
import com.kpsys.dao.StaticPageDao;
import com.kpsys.domain.StaticPage;
import com.kpsys.domain.User;
import io.dropwizard.auth.Auth;
import io.dropwizard.hibernate.UnitOfWork;

import javax.annotation.security.RolesAllowed;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import java.util.List;

@Path("/editor")
public class StaticPageResource {

    @Inject
    private StaticPageDao staticPageDao;

    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    @UnitOfWork
    @RolesAllowed("PAGES:edit")
    public void getEditorStaticPage(@Auth User principal, StaticPage page) {
        staticPageDao.save(page);
    }

    @Path("staticPages")
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Timed
    @UnitOfWork
    public List<StaticPage> getStaticPages() {
        return staticPageDao.getStaticPages();
    }

}
