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
@FilterDef(name = "mainClient",
    parameters = {@ParamDef(name = "tenant_id", type = "long")},
    defaultCondition = ":tenant_id = MAINCLNTIDNO")
@Filter(name = "mainClient")
public abstract class MainClientAware implements TenantAware<Client> {

    @Override
    public Client getTenant() {
        return getClient();
    }

    protected abstract Client getClient();
}
