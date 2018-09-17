package com.kpsys.common.resource;

import com.kpsys.common.Requests.PaymentRequest;
import com.kpsys.common.Requests.QueryRequest;
import com.kpsys.common.exceptions.KpsysException;
import com.kpsys.domain.User;
import io.dropwizard.auth.Auth;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.ws.rs.*;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.Invocation;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

@Path("/service")
public class ExternalServiceResource {

    private static final Logger LOGGER = LoggerFactory.getLogger(ExternalServiceResource.class);
    private static final String EXTERNAL_SERVICE_URL = "http://anpr01.parkingguru.com:8080/api/rest/parking/%s";
    private final Client client;

    public ExternalServiceResource(Client client) {
        this.client = client;
    }

    private <RequestType> String doPost(WebTarget target, RequestType requestType) {
        Invocation.Builder invocationBuilder = target.request().accept(MediaType.APPLICATION_JSON);
        Response response = null;
        try {
            response = invocationBuilder.post(Entity.json(requestType));
            if (response.getStatus() != Response.Status.OK.getStatusCode()) {
                LOGGER.error("Error during external service request");
                throw new KpsysException("Error during external service request", Response.Status.fromStatusCode(response.getStatus()));
            } else {
                return response.readEntity(String.class);
            }
        } catch (ProcessingException e) {
            LOGGER.error("Error during external service request", e);
            throw new KpsysException(e, Response.Status.INTERNAL_SERVER_ERROR);
        } finally {
            if (response != null) {
                response.close();
            }
        }
    }

    @POST
    @Path("/payment")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public String payment(@Auth User principal, PaymentRequest payment) {

        String url = String.format(EXTERNAL_SERVICE_URL, "payment");
        WebTarget target = client.target(url);
        return doPost(target, payment);
    }

    @POST
    @Path("/query")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public String query(QueryRequest query) {

        query.setApiKey("12345");
        query.setParkingZone("Z01");

        String url = String.format(EXTERNAL_SERVICE_URL, "query");
        WebTarget target = client.target(url);
        return doPost(target, query);
    }
}
