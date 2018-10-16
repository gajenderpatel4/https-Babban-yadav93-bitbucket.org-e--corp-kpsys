package com.kpsys.common.dao;

import com.google.inject.Inject;
import com.kpsys.domain.Payment;
import io.dropwizard.hibernate.AbstractDAO;
import org.hibernate.NonUniqueResultException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;

import java.util.Optional;

import static com.kpsys.common.dao.NamedHQLQueries.GET_PAYMENT_BY_PAYPAL_PAYMENT_ID;

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

    public Optional<Payment> getPaymentByPayPalPaymentId(String payPalPaymentId) {
        Query q = namedQuery(GET_PAYMENT_BY_PAYPAL_PAYMENT_ID);
        q.setString("paypalPaymentId", payPalPaymentId);
        try {
            return Optional.ofNullable(uniqueResult(q));
        } catch (NonUniqueResultException __) {
            return Optional.empty();
        }
    }
}
