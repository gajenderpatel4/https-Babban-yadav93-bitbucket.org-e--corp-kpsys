package com.kpsys.common.dao;

import com.google.inject.Inject;
import com.kpsys.domain.RoleAuthorisation;
import io.dropwizard.hibernate.AbstractDAO;
import org.hibernate.HibernateException;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import java.util.List;

public class RoleAuthorisationDao extends AbstractDAO<RoleAuthorisation> {

    private final SessionFactory sessionFactory;

    @Inject
    public RoleAuthorisationDao(SessionFactory sessionFactory) {
        super(sessionFactory);
        this.sessionFactory = sessionFactory;
    }

    public List<RoleAuthorisation> getRoleAuthorisation(Integer userId) {
        String sql = "SELECT RA.* " +
            "FROM kp_role_to_user AS RU " +
            "INNER JOIN kp_role AS R ON RU.ROLEIDNO = R.ROLEIDNO " +
            "INNER JOIN kp_role_authorisation AS RA ON R.ROLEIDNO = RA.ROLEIDNO " +
            "WHERE RU.USERIDNO = " + userId;
        Session session = sessionFactory.openSession();
        SQLQuery query = session.createSQLQuery(sql).addEntity(RoleAuthorisation.class);
        try {
            //noinspection unchecked
            return query.list();
        } finally {
            try {
                session.close();
            } catch (HibernateException ignored) {
            }
        }
    }

}
