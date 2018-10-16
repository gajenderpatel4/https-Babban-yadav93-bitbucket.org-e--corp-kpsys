package com.kpsys.common.config;

import com.fasterxml.jackson.annotation.JsonProperty;
import org.hibernate.validator.constraints.NotEmpty;

public class SiteConfiguration {
    @NotEmpty
    @JsonProperty
    private String hostname;

    @NotEmpty
    @JsonProperty
    private String parkingApi;

    public String getHostname() {
        return hostname;
    }

    public String getParkingApi() {
        return parkingApi;
    }
}
