package com.kpsys.common.dao;

import com.google.inject.Inject;
import com.kpsys.domain.UserRegistration;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.joda.time.DateTime;

import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import static com.kpsys.common.dao.NamedHQLQueries.GET_USER_REGISTRATION_BY_CODE;
import static com.kpsys.common.dao.NamedHQLQueries.GET_USER_REGISTRATION_BY_PHONE;

/**
 * @author dkhvatov
 */
public class UserRegistrationDao extends BaseDao<UserRegistration> {

    @Inject
    public UserRegistrationDao(SessionFactory sessionFactory) {
        super(sessionFactory);
    }

    public Optional<UserRegistration> findByPhone(String phone) {
        Query query = namedQuery(GET_USER_REGISTRATION_BY_PHONE);
        query.setString("phone", phone);

        Calendar cal = Calendar.getInstance();
        cal.add(Calendar.HOUR, -4);
        Date date = cal.getTime();
        query.setParameter("hourAgo", new DateTime(date));

        query.setFetchSize(1);
        @SuppressWarnings("unchecked") List<UserRegistration> result = query.list();
        return result.stream().findFirst();
    }


    public Optional<UserRegistration> findByPhoneAndCode(String phone, String code) {
        Query query = namedQuery(GET_USER_REGISTRATION_BY_CODE);
        query.setString("phone", phone);
        query.setString("code", code);
        query.setFetchSize(1);
        @SuppressWarnings("unchecked") List<UserRegistration> result = query.list();
        return result.stream().findFirst();
    }

    public UserRegistration save(UserRegistration userRegistration) {
        UserRegistration result = persist(userRegistration);
        currentSession().flush();
        return result;
    }

    public UserRegistration delete(UserRegistration userRegistration) {
        currentSession().delete(userRegistration);
        return userRegistration;
    }

}
