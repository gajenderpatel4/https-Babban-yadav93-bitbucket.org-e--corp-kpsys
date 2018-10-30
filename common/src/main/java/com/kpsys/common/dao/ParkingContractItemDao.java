package com.kpsys.common.dao;

import com.google.inject.Inject;
import com.kpsys.domain.ParkingContractItem;
import io.dropwizard.hibernate.AbstractDAO;
import org.hibernate.Query;
import org.hibernate.SessionFactory;

import java.util.List;

public class ParkingContractItemDao extends AbstractDAO<ParkingContractItem> {

    private final SessionFactory sessionFactory;

    @Inject
    public ParkingContractItemDao(SessionFactory sessionFactory) {
        super(sessionFactory);
        this.sessionFactory = sessionFactory;
    }

    public List<ParkingContractItem> getByParkingContractByUserIdAndParkingContractId(Integer userId, Integer parkingContractId) {
        Query q = namedQuery("getParkingContractItemsByUserIdAndParkingContractId");
        q.setParameter("user_id", userId);
        q.setParameter("parking_contract_id", parkingContractId);
        return list(q);
    }

    public ParkingContractItem save(ParkingContractItem parkingContractItem) {
        ParkingContractItem pci = persist(parkingContractItem);
        currentSession().flush();
        return pci;
    }
}
