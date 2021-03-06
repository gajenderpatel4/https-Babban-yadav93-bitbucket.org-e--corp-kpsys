package com.kpsys.resource;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.kpsys.common.config.SiteConfiguration;
import com.kpsys.common.dto.EntityResponse;
import com.kpsys.common.exceptions.KpsysException;
import com.kpsys.common.requests.LicensePlateQueryRequest;
import com.kpsys.domain.LicensePlateResponse;
import com.kpsys.domain.LicensePlateResponseList;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.validation.Valid;
import javax.ws.rs.*;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.Invocation;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.io.IOException;
import java.util.List;

@Path("/service")
public class ExternalServiceResource {

    private static final Logger LOGGER = LoggerFactory.getLogger(ExternalServiceResource.class);
    private static final ObjectMapper mapper = new ObjectMapper();
    private final Client client;
    private final SiteConfiguration siteConfiguration;

    public ExternalServiceResource(Client client, SiteConfiguration siteConfiguration) {
        this.client = client;
        this.siteConfiguration = siteConfiguration;
    }

    private <RequestType> String doPost(WebTarget target, RequestType requestType) {
        Invocation.Builder invocationBuilder = target.request().accept(MediaType.APPLICATION_JSON);
        Response response = null;
        try {
            response = invocationBuilder.post(Entity.json(requestType));
            if (response.getStatus() != Response.Status.OK.getStatusCode()) {
                LOGGER.error("Error during external service request. Returned status: " + response.getStatus());
                throw new KpsysException("Error during external service request", Response.Status.INTERNAL_SERVER_ERROR);
            } else {
                return response.readEntity(String.class);
            }
        } catch (ProcessingException e) {
            LOGGER.error("Error during external service request", e);
            throw new KpsysException("Error during external service request: " + e.getMessage(), Response.Status.INTERNAL_SERVER_ERROR);
        } finally {
            if (response != null) {
                response.close();
            }
        }
    }

    @POST
    @Path("/query")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public EntityResponse<LicensePlateResponseList> query(@Valid LicensePlateQueryRequest query) {

        query.setApiKey("12345");
        query.setParkingZone("Z01");

        String url = String.format(siteConfiguration.getParkingApi(), "query");
        WebTarget target = client.target(url);
        String json = doPost(target, query);
        try {
            LicensePlateResponseList licensePlateResponseList = mapper.readValue(json, LicensePlateResponseList.class);
            List<LicensePlateResponse> items = licensePlateResponseList.getItems();
            for (LicensePlateResponse item : items) {
                //item.setParkingId("");
                item.setDescription("");
            }
            return EntityResponse.of(new LicensePlateResponseList(items));
        } catch (IOException e) {
            LOGGER.error("Error during external service request", e);
            throw new KpsysException("Error during external service request: " + e.getMessage(), Response.Status.INTERNAL_SERVER_ERROR);
        }
    }
}
