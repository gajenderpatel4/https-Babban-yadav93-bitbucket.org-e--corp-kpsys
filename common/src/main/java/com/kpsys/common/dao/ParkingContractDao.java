package com.kpsys.common.dao;

import com.google.inject.Inject;
import com.kpsys.domain.ParkingContract;
import io.dropwizard.hibernate.AbstractDAO;
import org.hibernate.NonUniqueResultException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;

import java.util.Optional;

public class ParkingContractDao extends AbstractDAO<ParkingContract> {

    private final SessionFactory sessionFactory;

    @Inject
    public ParkingContractDao(SessionFactory sessionFactory) {
        super(sessionFactory);
        this.sessionFactory = sessionFactory;
    }

    public Optional<ParkingContract> getByIdAndUserId(Integer parkingContractId, Integer userId) {
        Query q = namedQuery("getByIdAndUserId");
        q.setParameter("user_id", userId);
        q.setParameter("parking_contract_id", parkingContractId);
        try {
            return Optional.ofNullable(uniqueResult(q));
        } catch (NonUniqueResultException __) {
            return Optional.empty();
        }
    }

    public ParkingContract save(ParkingContract parkingContract) {
        ParkingContract pc = persist(parkingContract);
        currentSession().flush();
        return pc;
    }
}
