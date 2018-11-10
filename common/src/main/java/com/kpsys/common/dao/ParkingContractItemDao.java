package com.kpsys.common.dao;

import com.google.inject.Inject;
import com.kpsys.domain.ParkingContractItem;
import io.dropwizard.hibernate.AbstractDAO;
import org.hibernate.NonUniqueResultException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;

import java.util.List;
import java.util.Optional;

public class ParkingContractItemDao extends AbstractDAO<ParkingContractItem> {

    @Inject
    public ParkingContractItemDao(SessionFactory sessionFactory) {
        super(sessionFactory);
    }

    public List<ParkingContractItem> getByParkingContractAndUserIdAndParkingContractId(Integer userId, Integer parkingContractId) {
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

    public Optional<ParkingContractItem> getByUserIdAndId(Integer userId, Integer parkingContractItemId) {
        Query q = namedQuery("getParkingContractItemByUserIdAndId");
        q.setParameter("user_id", userId);
        q.setParameter("id", parkingContractItemId);
        try {
            return Optional.ofNullable(uniqueResult(q));
        } catch (NonUniqueResultException __) {
            return Optional.empty();
        }
    }

    public ParkingContractItem delete(ParkingContractItem parkingContractItem) {
        currentSession().delete(parkingContractItem);
        currentSession().flush();
        return parkingContractItem;
    }
}
