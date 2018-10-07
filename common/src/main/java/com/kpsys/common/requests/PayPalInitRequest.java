package com.kpsys.common.requests;

import lombok.Data;
import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.NotNull;

@Data
public class PayPalInitRequest {
    @NotNull
    Integer amount;
    String description;
    @NotNull
    @NotEmpty
    String query;
    String apiKey;
    @NotNull
    @NotEmpty
    String currency;
    @NotNull
    @NotEmpty
    String licensePlate;
    @NotNull
    @NotEmpty
    String parkingId;
    String parkingZone;

    String paymentFromTimestamp;

    String paymentUntilTimestamp;
    String paymentId;
    String paymentTimestamp;
}
