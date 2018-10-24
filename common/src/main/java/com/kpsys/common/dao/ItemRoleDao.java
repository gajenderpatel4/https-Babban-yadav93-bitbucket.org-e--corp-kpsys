package com.kpsys.common.dao;

import com.google.inject.Inject;
import com.kpsys.domain.ItemRole;
import io.dropwizard.hibernate.AbstractDAO;
import org.hibernate.HibernateException;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import java.util.List;

public class ItemRoleDao extends AbstractDAO<ItemRole> {

    private final SessionFactory sessionFactory;

    @Inject
    public ItemRoleDao(SessionFactory sessionFactory) {
        super(sessionFactory);
        this.sessionFactory = sessionFactory;
    }

    public List<ItemRole> getParkingContractsIdsWithRolesForUser(Long userId) {

        String sql = "SELECT pcr.parking_contract_id AS item_id, pc.name AS name, pcr.role_type AS role_type, " +
            "'parking_contracts' AS entity_type " +
            "FROM parking_contract_role AS pcr " +
            "JOIN parking_contract AS pc ON pc.id = pcr.parking_contract_id " +
            "WHERE pcr.user_id = " + userId;

        Session session = sessionFactory.openSession();
        SQLQuery query = session.createSQLQuery(sql).addEntity(ItemRole.class);
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
