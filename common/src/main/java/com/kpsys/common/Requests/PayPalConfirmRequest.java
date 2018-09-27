package com.kpsys.common.Requests;

import lombok.Data;
import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.NotNull;

@Data
public class PayPalConfirmRequest {
    @NotNull
    @NotEmpty
    String guid;
    @NotNull
    @NotEmpty
    String payerID;
    @NotNull
    @NotEmpty
    String paymentId;
}
