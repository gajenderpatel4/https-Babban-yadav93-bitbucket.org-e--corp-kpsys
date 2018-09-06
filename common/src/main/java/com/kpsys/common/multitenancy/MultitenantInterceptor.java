package com.kpsys.common.multitenancy;

import org.hibernate.EmptyInterceptor;
import org.hibernate.type.Type;

import javax.inject.Inject;
import java.io.Serializable;

/**
 * @author Dmitriy Khvatov (<i>dimax4@gmail.com</i>)
 * @version $Id$
 */
public class MultitenantInterceptor extends EmptyInterceptor {

    private static final String TENANT_PROPERTY_NAME = "client";

    private TenantResolver tenantResolver;

    @Inject
    public MultitenantInterceptor(TenantResolver tenantResolver) {
        this.tenantResolver = tenantResolver;
    }

    @Override
    public boolean onSave(Object entity, Serializable id, Object[] state, String[] propertyNames, Type[] types) {
        return entity instanceof TenantAware
            && (interceptUserEntity(state, propertyNames, TENANT_PROPERTY_NAME));
    }

    private boolean interceptUserEntity(Object[] state, String[] propertyNames, String tenantPropertyName) {
        for (int i = 0; i < propertyNames.length; i++) {
            if (tenantPropertyName.equals(propertyNames[i])) {
                state[i] = tenantResolver.resolve();
                return true;
            }
        }
        return false;
    }
}
