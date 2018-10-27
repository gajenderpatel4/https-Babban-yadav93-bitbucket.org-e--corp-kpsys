package com.kpsys.common.dao;

import com.google.inject.Inject;
import com.kpsys.domain.Zone;
import io.dropwizard.hibernate.AbstractDAO;
import org.hibernate.Query;
import org.hibernate.SessionFactory;

import java.util.List;

public class ZoneDao extends AbstractDAO<Zone> {

    @Inject
    public ZoneDao(SessionFactory sessionFactory) {
        super(sessionFactory);
    }

    public Zone getZone(long zoneId) {
        return get(zoneId);
    }

    public List<Zone> getZones() {
        Query q = namedQuery("getZones");
        return list(q);
    }
}
