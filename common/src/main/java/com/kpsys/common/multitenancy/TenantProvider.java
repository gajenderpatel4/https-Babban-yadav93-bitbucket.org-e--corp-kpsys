package com.kpsys.common.multitenancy;

/**
 * @author dkhvatov
 */
public interface TenantProvider<T extends Tenant<K>, K> {

    T getTenant();

    void setTenant(T tenant);

}
