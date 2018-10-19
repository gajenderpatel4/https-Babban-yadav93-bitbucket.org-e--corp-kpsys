package com.kpsys.domain;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class ClientCustomDataResponse {
    private String logoUrl;
    private String cssUrl;
}
