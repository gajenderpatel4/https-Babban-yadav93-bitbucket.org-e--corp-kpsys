package com.kpsys.common.multitenancy;

import java.io.Serializable;

/**
 * Marks entity class as "tenant-aware", i.e., having attribute tenantId.
 *
 * @author Dmitriy Khvatov (<i>dimax4@gmail.com</i>)
 * @version $Id$
 */
public interface TenantAware<T extends Tenant> extends Serializable {

    T getTenant();

}
