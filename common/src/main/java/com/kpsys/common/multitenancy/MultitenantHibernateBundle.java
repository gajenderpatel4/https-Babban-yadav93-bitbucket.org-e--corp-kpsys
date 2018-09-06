package com.kpsys.common.multitenancy;

import com.kpsys.common.config.KpsysConfiguration;
import io.dropwizard.hibernate.ScanningHibernateBundle;
import org.hibernate.cfg.Configuration;

/**
 * @author Dmitriy Khvatov (<i>dimax4@gmail.com</i>)
 * @version $Id$
 */
public abstract class MultitenantHibernateBundle extends ScanningHibernateBundle<KpsysConfiguration> {

    private final TenantResolver tenantResolver;

    protected MultitenantHibernateBundle(String pckg, TenantResolver tenantResolver) {
        super(pckg);
        this.tenantResolver = tenantResolver;
    }

    @Override
    protected void configure(Configuration configuration) {
        configuration.setInterceptor(new MultitenantInterceptor(tenantResolver));
    }
}
