package com.kpsys.common.Requests;

import lombok.Data;
import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.NotNull;

@Data
public class QueryRequest {
    String apiKey;
    @NotNull
    @NotEmpty
    String licensePlate;
    String parkingZone;
}
