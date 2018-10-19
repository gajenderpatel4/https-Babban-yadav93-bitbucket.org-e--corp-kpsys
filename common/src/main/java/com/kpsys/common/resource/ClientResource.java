package com.kpsys.common.resource;

import com.google.inject.Inject;
import com.kpsys.common.dao.ClientDao;
import com.kpsys.common.dto.EntityResponse;
import com.kpsys.common.exceptions.KpsysException;
import com.kpsys.common.requests.ClientCustomDataRequest;
import com.kpsys.common.requests.ClientForHostnameRequest;
import com.kpsys.domain.Client;
import com.kpsys.domain.ClientCustomDataResponse;
import com.kpsys.domain.Result;
import io.dropwizard.hibernate.UnitOfWork;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.validation.Valid;
import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.util.Optional;

@Path("/client")
public class ClientResource {

    private static final Logger LOGGER = LoggerFactory.getLogger(ClientResource.class);

    @Inject
    private ClientDao clientDao;

    @POST
    @Path("/findbyhostname")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    @UnitOfWork
    public EntityResponse<Result<Long>> getClientIdForHostname(@Valid ClientForHostnameRequest clientForHostnameRequest) {
        String hostname = clientForHostnameRequest.getHostname();
        Optional<Client> clientOptional = clientDao.getClientByHostname(hostname);
        Client client = clientOptional.orElseThrow(() -> {
            LOGGER.error("Unable to find client for specified hostname: " + hostname);
            return new KpsysException("Unable to find client for specified hostname", Response.Status.NOT_FOUND);
        });
        Long clientId = client.getClientId();
        return EntityResponse.of(new Result<>(clientId));
    }

    @POST
    @Path("/findcustomdata")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    @UnitOfWork
    public EntityResponse<ClientCustomDataResponse> getClientCustomData(@Valid ClientCustomDataRequest clientCustomDataRequest) {
        Long clientId = clientCustomDataRequest.getClientId();
        Client client = clientDao.getClient(clientId);
        if (client == null) {
            LOGGER.error("Unable to find client for specified id: " + clientId);
            throw new KpsysException("Unable to find client for specified id: " + clientId, Response.Status.NOT_FOUND);
        }

        return EntityResponse.of(ClientCustomDataResponse.builder()
            .cssUrl(client.getCssUrl())
            .logoUrl(client.getLogoUrl())
            .build());
    }
}
