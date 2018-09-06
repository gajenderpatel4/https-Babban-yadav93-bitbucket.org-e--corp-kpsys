package com.kpsys.common.dao;

import com.google.inject.Inject;
import com.kpsys.domain.Client;
import io.dropwizard.hibernate.AbstractDAO;
import org.hibernate.Query;
import org.hibernate.SessionFactory;

import java.util.List;

public class ClientDao extends AbstractDAO<Client> {

    @Inject
    public ClientDao(SessionFactory sessionFactory) {
        super(sessionFactory);
    }

    public List<Client> getClients(int start, int max) {
        Query q = namedQuery("getClients");
        q.setFirstResult(start);
        q.setMaxResults(max);
        return list(q);
    }

    public Client getClient(long clientId) {
        return get(clientId);
    }


}
