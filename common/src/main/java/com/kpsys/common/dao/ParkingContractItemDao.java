package com.kpsys.common.dao;

import com.google.inject.Inject;
import com.kpsys.domain.ParkingContractItem;
import io.dropwizard.hibernate.AbstractDAO;
import org.hibernate.HibernateException;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import java.util.List;

public class ParkingContractItemDao extends AbstractDAO<ParkingContractItem> {

    private final SessionFactory sessionFactory;

    @Inject
    public ParkingContractItemDao(SessionFactory sessionFactory) {
        super(sessionFactory);
        this.sessionFactory = sessionFactory;
    }

    public List<ParkingContractItem> findByParkingContract(Integer userId, Integer parkingContractId) {
        String sql = "SELECT DISTINCT pci.*" +
            "FROM parking_contract_item AS pci " +
            "JOIN parking_contract AS pc ON pc.id = pci.parking_contract_id " +
            "JOIN parking_contract_role AS pcr ON pcr.parking_contract_id = pc.id " +
            "WHERE pcr.user_id = " + userId + " AND pcr.role_type = 'edit' AND pci.parking_contract_id = " + parkingContractId;
        Session session = sessionFactory.openSession();
        SQLQuery query = session.createSQLQuery(sql).addEntity(ParkingContractItem.class);
        try {
            //noinspection unchecked
            return query.list();
        } finally {
            try {
                session.close();
            } catch (HibernateException ignored) {
            }
        }
    }
}
