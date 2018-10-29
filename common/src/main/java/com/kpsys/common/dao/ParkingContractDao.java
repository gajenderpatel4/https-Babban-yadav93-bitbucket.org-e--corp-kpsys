package com.kpsys.common.dao;

import com.google.inject.Inject;
import com.kpsys.domain.ParkingContract;
import io.dropwizard.hibernate.AbstractDAO;
import org.hibernate.NonUniqueResultException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;

import java.util.List;
import java.util.Optional;

public class ParkingContractDao extends AbstractDAO<ParkingContract> {

    private final SessionFactory sessionFactory;

    @Inject
    public ParkingContractDao(SessionFactory sessionFactory) {
        super(sessionFactory);
        this.sessionFactory = sessionFactory;
    }

    public List<ParkingContract> getParkingContractsByUser(Integer userId) {
        Query q = namedQuery("getParkingContractsByUserId");
        q.setParameter("user_id", userId);
        return list(q);
    }

    public Optional<ParkingContract> getParkingContractByIdAndUserId(Integer parkingContractId, Integer userId) {
        Query q = namedQuery("getParkingContractByIdAndUserId");
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
