package com.kpsys.common.multitenancy;

import com.kpsys.domain.Client;

import javax.inject.Inject;
import javax.inject.Provider;

/**
 * @author dkhvatov
 */
public class KpsysTenantResolver implements TenantResolver {

    private final Provider<ClientProvider> clientProvider;

    @Inject
    public KpsysTenantResolver(Provider<ClientProvider> clientProvider) {
        this.clientProvider = clientProvider;
    }

    public Client resolve() {
        Client client = clientProvider.get().getTenant();
        if (client == null) {
            throw new RuntimeException("Invalid tenant id");
        }
        return client;
    }


}
