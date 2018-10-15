package com.kpsys.domain;

import lombok.Data;

@Data
public class LicensePlateResponse {
    private String licensePlate;
    private String startTimestamp;
    private String endTimestamp;
    private String currency;
    private String dueAmount;
    private String parkingId;
    private String description;
    private String clientId;
}
