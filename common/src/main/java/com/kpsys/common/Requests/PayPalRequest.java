package com.kpsys.common.Requests;

import lombok.Data;

@Data
public class PayPalRequest {
    int amount;
    String currency;
    String description;
    String query;
}
