package com.kpsys.common;

import com.google.inject.AbstractModule;
import com.google.inject.Provides;
import com.kpsys.common.config.KpsysConfiguration;
import com.kpsys.common.multitenancy.ClientProvider;
import com.kpsys.common.multitenancy.MultitenantHibernateBundle;
import com.kpsys.common.multitenancy.TenantProvider;
import com.kpsys.common.multitenancy.TenantResolver;
import com.kpsys.domain.Client;
import io.dropwizard.db.DataSourceFactory;
import io.dropwizard.flyway.FlywayBundle;
import org.hibernate.SessionFactory;

import javax.inject.Singleton;

/**
 * @author Dmitriy Khvatov (<i>dimax4@gmail.com</i>)
 * @version $Id$
 */
public class KpsysModule extends AbstractModule {

    @Override
    protected void configure() {

    }

    @Provides
    @Singleton
    public SessionFactory provideSessionFactory(MultitenantHibernateBundle bundle) {
        return bundle.getSessionFactory();
    }

    @Provides
    @Singleton
    public MultitenantHibernateBundle provideHibernateBundle(TenantResolver tenantResolver) {
        return new MultitenantHibernateBundle("com.kpsys.domain", tenantResolver) {
            @Override
            public DataSourceFactory getDataSourceFactory(KpsysConfiguration configuration) {
                return configuration.getDataSourceFactory();
            }
        };
    }

    @Provides
    @Singleton
    public FlywayBundle provideFlywayBundle() {
        return new FlywayBundle<KpsysConfiguration>() {
            @Override
            public DataSourceFactory getDataSourceFactory(KpsysConfiguration configuration) {
                return configuration.getDataSourceFactory();
            }
        };
    }

    @Provides
    @Singleton
    public TenantProvider<Client, Long> getTenantProvider() {
        return new ClientProvider();
    }

}
