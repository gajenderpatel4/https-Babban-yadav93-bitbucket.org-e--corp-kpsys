package com.kpsys.common.Requests;

import lombok.Data;

@Data
public class PayPalCheckoutRequest {
    String guid;
    String payerID;
    String paymentId;
}
