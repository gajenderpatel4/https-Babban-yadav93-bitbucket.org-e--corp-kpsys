package com.kpsys.common.dao;

import com.google.inject.Inject;
import com.kpsys.common.multitenancy.TenantResolver;
import com.kpsys.domain.User;
import org.hibernate.SessionFactory;

public class UserDao extends MainClientAwareDao<User> {

    @Inject
    public UserDao(SessionFactory sessionFactory, TenantResolver tenantResolver) {
        super(sessionFactory, tenantResolver);
    }

    public User getUser(int userId) {
        return get(userId);
    }

    public User save(User user) {
        User savedUser = persist(user);
        currentSession().flush();
        return savedUser;
    }
}
