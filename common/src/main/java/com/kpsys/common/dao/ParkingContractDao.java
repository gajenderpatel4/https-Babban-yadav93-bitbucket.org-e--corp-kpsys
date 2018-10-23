package com.kpsys.common.dao;

import com.google.inject.Inject;
import com.kpsys.domain.ParkingContract;
import io.dropwizard.hibernate.AbstractDAO;
import org.hibernate.Query;
import org.hibernate.SessionFactory;

import java.util.List;

public class ParkingContractDao extends AbstractDAO<ParkingContract> {

    private final SessionFactory sessionFactory;

    @Inject
    public ParkingContractDao(SessionFactory sessionFactory) {
        super(sessionFactory);
        this.sessionFactory = sessionFactory;
    }

    public List<ParkingContract> getParkingContractsByUser(Long userId) {
        Query q = namedQuery("getParkingContractsByUserId");
        q.setParameter("user_id", userId);
        return list(q);
    }
}
