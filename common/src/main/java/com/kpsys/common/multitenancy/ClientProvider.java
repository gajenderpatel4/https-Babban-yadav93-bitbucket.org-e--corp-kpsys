package com.kpsys.common.multitenancy;

import com.google.inject.Singleton;
import com.kpsys.domain.Client;
import lombok.Getter;
import lombok.Setter;

/**
 * @author dkhvatov
 */
@Getter
@Setter
@Singleton
public class ClientProvider implements TenantProvider<Client, Integer> {

    private Client tenant;

}
