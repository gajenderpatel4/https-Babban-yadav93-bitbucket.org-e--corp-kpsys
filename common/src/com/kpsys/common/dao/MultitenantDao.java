package com.kpsys.common.dao;

import io.dropwizard.hibernate.AbstractDAO;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

public abstract class MultitenantDao<T> extends AbstractDAO<T> {

    public MultitenantDao(SessionFactory sessionFactory) {
        super(sessionFactory);
    }

    @Override
    protected Session currentSession() {
        Session session = super.currentSession();
        addTenantFilterToSession(session);
        return session;
    }

    protected abstract void addTenantFilterToSession(Session session);
}
