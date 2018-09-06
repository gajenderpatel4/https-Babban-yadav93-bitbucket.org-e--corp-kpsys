package com.kpsys.common.dao;

import com.google.inject.Inject;
import com.kpsys.domain.LoginLog;
import com.kpsys.domain.User;
import io.dropwizard.hibernate.AbstractDAO;
import org.hibernate.SessionFactory;
import org.joda.time.DateTime;

/**
 * @author dkhvatov
 */
public class LoginLogDao extends AbstractDAO<LoginLog> {

    @Inject
    public LoginLogDao(SessionFactory sessionFactory) {
        super(sessionFactory);
    }

    public void logLogin(User user, String remoteAddr) {
        persist(LoginLog.builder()
            .drctNumber(1)
            .loginTimestamp(new DateTime())
            .user(user)
            .client(user.getClient().getClientId())
            .remoteAddr(remoteAddr)
            .channelNumber(0)
            .build());
    }

    public void logLogout(User user) {
        persist(LoginLog.builder()
            .drctNumber(0)
            .loginTimestamp(new DateTime())
            .user(user)
            .client(user.getClient().getClientId())
            .channelNumber(0)
            .build());
    }

}
