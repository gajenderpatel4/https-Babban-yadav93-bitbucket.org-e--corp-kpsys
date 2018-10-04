package com.kpsys.domain;

import lombok.Builder;
import lombok.Data;
import lombok.experimental.Tolerate;
import org.joda.time.DateTime;

import javax.persistence.*;

@Entity(name = "Payment")
@Table(name = "payment")
@Data
@Builder
public class Payment {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "license_plate")
    private String licensePlate;

    @Column(name = "parking_id")
    private String parkingId;

    @Column(name = "currency")
    private String currency;

    @Column(name = "amount")
    private Integer amount;

    @Column(name = "payment_from_timestamp")
    private DateTime paymentFromTimestamp;

    @Column(name = "payment_until_timestamp")
    private DateTime paymentUntilTimestamp;

    @Column(name = "payment_timestamp")
    private DateTime paymentTimestamp;

    @Column(name = "paypal_payment_id")
    private String paypalPaymentId;

    @Tolerate
    public Payment() {
    }
}
