package com.kpsys.common.dao;

import com.kpsys.common.multitenancy.ClientAware;
import com.kpsys.common.multitenancy.Tenant;
import com.kpsys.common.multitenancy.TenantResolver;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public abstract class ClientAwareDao<T extends ClientAware> extends MultitenantDao<T> {

    private static final Logger log = LoggerFactory.getLogger(MultitenantDao.class);
    private TenantResolver tenantResolver;

    /**
     * Creates a new DAO with a given session provider.
     *
     * @param sessionFactory a session provider
     */
    public ClientAwareDao(SessionFactory sessionFactory, TenantResolver tenantResolver) {
        super(sessionFactory);
        this.tenantResolver = tenantResolver;
    }


    protected void addTenantFilterToSession(Session session) {
        Tenant<Long> client = tenantResolver.resolve();
        log.info("ClientAwareDao: Set tenant_id in session filter: {}", client.getId());
        session.enableFilter("client").setParameter("tenant_id", client.getId());
    }
}
