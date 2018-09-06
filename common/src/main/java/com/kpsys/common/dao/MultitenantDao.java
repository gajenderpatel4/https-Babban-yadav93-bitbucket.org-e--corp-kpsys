package com.kpsys.common.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

abstract class MultitenantDao<T> extends BaseDao<T> {

    MultitenantDao(SessionFactory sessionFactory) {
        super(sessionFactory);
    }

    @Override
    protected void alterSession(Session session) {
        addTenantFilterToSession(session);
    }

    protected abstract void addTenantFilterToSession(Session session);

}
