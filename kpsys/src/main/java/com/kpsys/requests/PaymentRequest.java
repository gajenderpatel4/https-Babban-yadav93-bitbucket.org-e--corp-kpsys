package com.kpsys.requests;

import lombok.Data;

@Data
public class PaymentRequest {
    int amount;
    String apiKey;
    String currency;
    String licensePlate;
    String parkingId;
    String parkingZone;
    String paymentFromTimestamp;
    String paymentId;
    String paymentTimestamp;
    String paymentUntilTimestamp;
}
