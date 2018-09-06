package com.kpsys.common.multitenancy;

import com.kpsys.domain.Client;

import javax.inject.Inject;
import javax.inject.Provider;

/**
 * @author Dmitriy Khvatov (<i>dimax4@gmail.com</i>)
 * @version $Id$
 */
public class TenantResolver {

    @Inject
    private Provider<ClientProvider> clientProvider;

    public Client resolve() {
        Client client = clientProvider.get().getTenant();
        if (client == null) {
            throw new RuntimeException("Invalid tenant id");
        }
        return client;
    }
}
