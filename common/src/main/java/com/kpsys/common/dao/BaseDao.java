package com.kpsys.common.dao;

import io.dropwizard.hibernate.AbstractDAO;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;

import java.util.Optional;

/**
 * @author dkhvatov
 */
public abstract class BaseDao<T> extends AbstractDAO<T> {

    private Session externalSession;

    protected BaseDao(SessionFactory sessionFactory) {
        super(sessionFactory);
    }

    @Override
    protected Session currentSession() {
        Session session;
        try {
            session = super.currentSession();
        } catch (Exception e) {
            session = externalSession;
        }
        alterSession(session);
        return session;
    }

    protected void alterSession(Session session) {
    }

    public void setExternalSession(Session externalSession) {
        this.externalSession = externalSession;
    }

    public Optional<T> getById(long id) {
        return Optional.ofNullable(get(id));
    }

    public int getCount() {
        Criteria criteria = currentSession().createCriteria(getEntityClass());
        criteria.setProjection(Projections.rowCount());
        return ((Number) criteria.uniqueResult()).intValue();
    }

}
