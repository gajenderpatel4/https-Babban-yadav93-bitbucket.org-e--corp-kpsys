package com.kpsys.common.resource;

import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.Invocation;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

public class ExternalServiceResource {

    private Client client;

    public ExternalServiceResource(Client client) {
        this.client = client;
    }

    @Path("/foo")
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public String newPost(){

        //TODO:
        String input = "{\"version\":\"v1\",\"buildTime\":\"2017-06-06\"}";

        //call external api with json_input
        final Invocation.Builder request = client.target("http://some.domain/testpostjson").request();
        final Response result = request.post(Entity.entity(input, MediaType.APPLICATION_JSON_TYPE));

        return result.readEntity(String.class);
    }
}
