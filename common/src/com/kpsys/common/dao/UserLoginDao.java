package com.kpsys.common.dao;

import com.google.common.base.Charsets;
import com.google.common.hash.Hashing;
import com.google.inject.Inject;
import com.kpsys.domain.User;
import io.dropwizard.hibernate.AbstractDAO;
import org.hibernate.NonUniqueResultException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;

import java.util.Optional;

import static com.kpsys.common.dao.NamedHQLQueries.GET_USER_BY_LOGIN;
import static com.kpsys.common.dao.NamedHQLQueries.GET_USER_BY_TOKEN;
import static com.kpsys.common.dao.NamedHQLQueries.GET_USER_BY_USERNAME_AND_PASSWORD;

public class UserLoginDao extends AbstractDAO<User> {

    @Inject
    public UserLoginDao(SessionFactory sessionFactory) {
        super(sessionFactory);
    }

    public Optional<User> findUserByUsernameAndPassword(String username, String password) {
        String passwordHash = Hashing.sha1().hashString(password, Charsets.UTF_8).toString();
        Query query = namedQuery(GET_USER_BY_USERNAME_AND_PASSWORD);
        query.setString("login", username);
        query.setString("password", passwordHash);
        try {
            return Optional.ofNullable(uniqueResult(query));
        } catch (NonUniqueResultException ignored) {
            return Optional.empty();
        }
    }

    public Optional<User> findUserByToken(String token) {
        Query query = namedQuery(GET_USER_BY_TOKEN);
        query.setString("token", token);
        try {
            return Optional.ofNullable(uniqueResult(query));
        } catch (NonUniqueResultException __) {
            return Optional.empty();
        }
    }

    public Optional<User> findUserByLogin(String login) {
        Query query = namedQuery(GET_USER_BY_LOGIN);
        query.setString("login", login);
        try {
            return Optional.ofNullable(uniqueResult(query));
        } catch (NonUniqueResultException __) {
            return Optional.empty();
        }
    }

}
