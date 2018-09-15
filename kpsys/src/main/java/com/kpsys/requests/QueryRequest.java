package com.kpsys.requests;

import lombok.Data;

@Data
public class QueryRequest {
    String apiKey;
    String licensePlate;
    String parkingZone;
}
