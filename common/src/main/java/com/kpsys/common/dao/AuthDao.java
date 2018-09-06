package com.kpsys.common.dao;

import com.google.inject.Inject;
import com.kpsys.domain.AccessToken;
import com.kpsys.domain.User;
import io.dropwizard.hibernate.AbstractDAO;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.joda.time.DateTime;

import java.io.Serializable;
import java.util.Optional;
import java.util.function.Function;

import static java.util.UUID.randomUUID;

public class AuthDao extends AbstractDAO<AccessToken> {

    private final SessionFactory sessionFactory;

    @Inject
    public AuthDao(SessionFactory sessionFactory) {
        super(sessionFactory);
        this.sessionFactory = sessionFactory;
    }

    public Optional<AccessToken> getToken(String token) {
        return withSession((session) -> get(session, AccessToken.class, token));
    }

    public AccessToken generateNewAccessToken(User user, DateTime date) {
        return persist(new AccessToken(randomUUID().toString(), user, date, user.getClient().getClientId()));
    }

    public void delete(AccessToken token) {
        currentSession().delete(token);
    }

    public void deleteByAccessToken(String token) {
        Query query = namedQuery(NamedHQLQueries.DELETE_ACCESS_TOKEN_BY_ID);
        query.setString("token", token);
        query.executeUpdate();
    }

    private <T> T withSession(Function<Session, T> function) {
        Session session = sessionFactory.openSession();
        T result;
        try {
            result = function.apply(session);
        } finally {
            try {
                session.close();
            } catch (HibernateException ignored) {
            }
        }
        return result;
    }

    private <T, ID extends Serializable> Optional<T> get(Session session, Class<T> clazz, ID id) {
        return Optional.ofNullable(session.get(clazz, id));
    }

}
