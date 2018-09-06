package com.kpsys.common.multitenancy;

import com.kpsys.domain.Client;
import org.hibernate.annotations.Filter;
import org.hibernate.annotations.FilterDef;
import org.hibernate.annotations.ParamDef;

import javax.persistence.MappedSuperclass;

/**
 * @author Dmitriy Khvatov (<i>dimax4@gmail.com</i>)
 * @version $Id$
 */
@MappedSuperclass
@FilterDef(name = "client",
    parameters = {@ParamDef(name = "tenant_id", type = "long")},
    defaultCondition = ":tenant_id = CLNTIDNO")
@Filter(name = "client")
public abstract class ClientAware implements TenantAware<Client> {

    @Override
    public Client getTenant() {
        return getClient();
    }

    protected abstract Client getClient();
}
