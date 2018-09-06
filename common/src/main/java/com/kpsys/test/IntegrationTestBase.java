package com.kpsys.test;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.kpsys.common.security.LoginRequest;
import com.kpsys.domain.AccessToken;
import io.dropwizard.testing.DropwizardTestSupport;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.Invocation;
import javax.ws.rs.core.Response;
import java.io.IOException;

/**
 * @author dkhvatov
 */
public abstract class IntegrationTestBase extends TestBase {

    protected <T> T readEntity(Response response, Class<T> clazz) {
        String responseStr = response.readEntity(String.class);
        try {
            return getObjectMapper().readValue(responseStr, clazz);
        } catch (IOException e) {
            throw new RuntimeException("Error parsing json: " + responseStr, e);
        }
    }

    protected Response get(String path) {
        return build(getJerseyClient(), path).get();
    }

    protected Response get(String path, String token) {
        return buildWithAuth(path, token).get();
    }

    protected Response post(String path, Object request) {
        return build(getJerseyClient(), path).post(Entity.json(request));
    }

    protected Response put(String path, Object request, String token) {
        return buildWithAuth(path, token)
            .put(Entity.json(request));
    }

    protected Response post(String path, Object request, String token) {
        return buildWithAuth(path, token)
            .post(Entity.json(request));
    }

    protected Response delete(String path, String token) {
        return buildWithAuth(path, token).delete();
    }

    private Invocation.Builder build(Client client, String path) {
        return client.target(
            String.format("http://%s:%d/api%s", getHost(), getSupport().getLocalPort(), path))
            .request()
            .header("TenantId", getTenantId());
    }

    private Invocation.Builder buildWithAuth(String path, String token) {
        return build(getJerseyClient(), path).header("Authorization", "Bearer " + token);
    }

    protected AccessToken loginAsTestUser() {
        LoginRequest loginRequest = new LoginRequest();
        loginRequest.setClientId(String.valueOf(getTenantId()));
        loginRequest.setLogin("test");
        loginRequest.setPassword("12345");

        Response response = post("/auth", loginRequest);
        return readEntity(response, AccessToken.class);
    }

    protected abstract long getTenantId();

    protected abstract DropwizardTestSupport getSupport();

    protected abstract String getHost();

    protected abstract ObjectMapper getObjectMapper();

    protected abstract Client getJerseyClient();

}
