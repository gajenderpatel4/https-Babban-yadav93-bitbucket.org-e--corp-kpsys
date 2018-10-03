package com.kpsys.common.dao;

import com.google.inject.Inject;
import com.kpsys.domain.Payment;
import io.dropwizard.hibernate.AbstractDAO;
import org.hibernate.SessionFactory;

/**
 * @author varnie
 */
public class PaymentDao extends AbstractDAO<Payment> {

    @Inject
    public PaymentDao(SessionFactory sessionFactory) {
        super(sessionFactory);
    }

    public void create(Payment payment) {
        persist(payment);
    }
}
