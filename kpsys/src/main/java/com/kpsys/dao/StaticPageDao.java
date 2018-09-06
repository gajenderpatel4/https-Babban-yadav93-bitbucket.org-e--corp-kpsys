package com.kpsys.dao;

import com.google.inject.Inject;
import com.kpsys.common.dao.ClientAwareDao;
import com.kpsys.common.multitenancy.TenantResolver;
import com.kpsys.domain.StaticPage;
import org.hibernate.Query;
import org.hibernate.SessionFactory;

import java.util.List;

public class StaticPageDao extends ClientAwareDao<StaticPage> {

    @Inject
    public StaticPageDao(SessionFactory sessionFactory, TenantResolver tenantResolver) {
        super(sessionFactory, tenantResolver);
    }

    public List<StaticPage> getStaticPages() {
        Query q = namedQuery("getStaticPages");
        return list(q);
    }

    public StaticPage save(StaticPage page) {
        StaticPage staticPage = persist(page);
        currentSession().flush();
        return staticPage;
    }
}
