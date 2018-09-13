package com.kpsys.common.Requests;

import lombok.Data;

@Data
public class QueryRequest {
    String apiKey;
    String licensePlate;
    String parkingZone;
}
