package com.kpsys.test;

import com.google.inject.Injector;
import com.kpsys.common.dao.BaseDao;
import org.hibernate.SessionFactory;

/**
 * @author dkhvatov
 */
public abstract class TestBase {

    protected <T extends BaseDao> T getDao(Injector injector, Class<T> clazz) {
        T dao = injector.getInstance(clazz);
        SessionFactory sessionFactory = injector.getInstance(SessionFactory.class);
        dao.setExternalSession(sessionFactory.openSession());
        return dao;
    }

}
