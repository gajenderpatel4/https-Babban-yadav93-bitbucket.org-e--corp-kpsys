package com.kpsys.common.dao;

import com.google.inject.Inject;
import com.kpsys.domain.Client;
import io.dropwizard.hibernate.AbstractDAO;
import org.hibernate.NonUniqueResultException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;

import java.util.List;
import java.util.Optional;

import static com.kpsys.common.dao.NamedHQLQueries.GET_CLIENT_BY_HOSTNAME;

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

    public Optional<Client> getClientByHostname(String hostname) {
        Query q = namedQuery(GET_CLIENT_BY_HOSTNAME);
        q.setString("hostname", hostname);
        try {
            return Optional.ofNullable(uniqueResult(q));
        } catch (NonUniqueResultException __) {
            return Optional.empty();
        }
    }
}
