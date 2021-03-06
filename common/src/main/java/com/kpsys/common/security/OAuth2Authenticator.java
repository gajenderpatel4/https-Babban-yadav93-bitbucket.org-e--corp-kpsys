package com.kpsys.common.security;

import com.kpsys.common.dao.AuthDao;
import com.kpsys.domain.AccessToken;
import com.kpsys.domain.User;
import io.dropwizard.auth.AuthenticationException;
import io.dropwizard.auth.Authenticator;
import io.dropwizard.hibernate.UnitOfWork;

import java.util.Optional;

public class OAuth2Authenticator implements Authenticator<String, User> {

    private final AuthDao authDao;

    public OAuth2Authenticator(AuthDao authDao) {
        this.authDao = authDao;
    }

    @Override
    @UnitOfWork
    public Optional<User> authenticate(String token) throws AuthenticationException {
        return authDao.getToken(token).map(AccessToken::getUser);
    }
}
