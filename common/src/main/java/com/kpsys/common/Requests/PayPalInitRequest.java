package com.kpsys.common.Requests;

import lombok.Data;

@Data
public class PayPalInitRequest {
    int amount;
    String description;
    String query;
    String apiKey;
    String currency;
    String licensePlate;
    String parkingId;
    String parkingZone;
    String paymentFromTimestamp;
    String paymentUntilTimestamp;
    String paymentId;
    String paymentTimestamp;
}
