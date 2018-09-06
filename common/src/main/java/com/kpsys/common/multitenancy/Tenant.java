package com.kpsys.common.multitenancy;

public interface Tenant<T> {

    T getId();

    void setId(String id);

}
