package com.kpsys.common.multitenancy;

import com.kpsys.common.dao.ClientDao;
import io.dropwizard.hibernate.UnitOfWork;
import org.hibernate.CacheMode;
import org.hibernate.FlushMode;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.context.internal.ManagedSessionContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.inject.Inject;
import javax.inject.Provider;
import javax.ws.rs.container.ContainerRequestContext;
import javax.ws.rs.container.ContainerRequestFilter;

/**
 * @author Dmitriy Khvatov (<i>dimax4@gmail.com</i>)
 * @version $Id$
 */
@javax.ws.rs.ext.Provider
public class ClientFilter implements ContainerRequestFilter {
    private static Logger logger = LoggerFactory.getLogger(ClientFilter.class);

    private final Provider<ClientProvider> clientProvider;
    private final ClientDao clientDao;
    private SessionFactory sessionFactory;

    @Inject
    public ClientFilter(ClientDao clientDao, Provider<ClientProvider> clientProvider, SessionFactory sessionFactory) {
        this.clientDao = clientDao;
        this.clientProvider = clientProvider;
        this.sessionFactory = sessionFactory;
    }

    @Override
    @UnitOfWork
    public void filter(ContainerRequestContext request) {
        String tenantId = request.getHeaderString("TenantId");
        if (tenantId == null) {
            return;
        }
        try {

            Session session = sessionFactory.openSession();
            session.setDefaultReadOnly(true);
            session.setCacheMode(CacheMode.NORMAL);
            session.setFlushMode(FlushMode.MANUAL);
            ManagedSessionContext.bind(session);

            clientProvider.get().setTenant(clientDao.getClient(Long.valueOf(tenantId)));

            session.close();
        } catch (Exception e) {
            logger.error("Wrong tenantId: " + tenantId, e);
            return;
        }
        logger.info("Set tenantId in Provider:" + tenantId);
    }
}
