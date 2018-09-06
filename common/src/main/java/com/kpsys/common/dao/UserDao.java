package com.kpsys.common.dao;

import com.google.inject.Inject;
import com.kpsys.common.multitenancy.TenantResolver;
import com.kpsys.domain.User;
import com.kpsys.domain.enums.OrderType;
import com.kpsys.domain.enums.UserType;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Disjunction;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.hibernate.criterion.SimpleExpression;

import java.util.List;

import static org.hibernate.criterion.MatchMode.ANYWHERE;

public class UserDao extends MainClientAwareDao<User> {

    @Inject
    public UserDao(SessionFactory sessionFactory, TenantResolver tenantResolver) {
        super(sessionFactory, tenantResolver);
    }

    public List<User> getUsers(int start, int max, String orderBy, OrderType orderType) {
        return list(criteria()
            .addOrder(orderType.getOrder(orderBy))
            .setFirstResult(start)
            .setMaxResults(max));
    }

    public List<User> getAllUsers() {
        return list(criteria());
    }

    public int countUsers() {
        return ((Number) criteria()
            .setProjection(Projections.rowCount())
            .uniqueResult())
            .intValue();
    }

    public List<User> getFilteredUsers(int start, int max, String orderBy, OrderType orderType, UserType userType, String searchQuery) {
        Criteria criteria = getFilteredUsersCriteria(userType, searchQuery);
        criteria.addOrder(orderType.getOrder(orderBy))
            .setFirstResult(start)
            .setMaxResults(max);
        return list(criteria);
    }

    public int getFilteredUsersCount(UserType userType, String searchQuery) {
        Criteria criteria = getFilteredUsersCriteria(userType, searchQuery);
        criteria.setProjection(Projections.rowCount());
        return ((Number) criteria.uniqueResult()).intValue();
    }

    public User getUser(long userId) {
        return get(userId);
    }

    public User save(User user) {
        User savedUser = persist(user);
        currentSession().flush();
        return savedUser;
    }

    public void delete(User user) {
        currentSession().delete(user);
        currentSession().flush();
    }

    private Criteria getFilteredUsersCriteria(UserType userType, String searchQuery) {
        Criteria criteria = criteria()
            .add(Restrictions.eq("userType", userType));
        if (!searchQuery.isEmpty()) {
            SimpleExpression username = Restrictions.like("username", searchQuery, ANYWHERE);
            SimpleExpression email = Restrictions.like("email", searchQuery, ANYWHERE);
            SimpleExpression phone = Restrictions.like("phone", searchQuery, ANYWHERE);
            Disjunction search = Restrictions.disjunction(username, email, phone);
            criteria.add(search);
        }
        return criteria;
    }

}
