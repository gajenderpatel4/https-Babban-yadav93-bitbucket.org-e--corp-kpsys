package com.kpsys.common.config;

import com.fasterxml.jackson.annotation.JsonProperty;
import org.hibernate.validator.constraints.NotEmpty;

public class SiteConfiguration {
    @NotEmpty
    @JsonProperty
    private String hostname;

    public String getHostname() {
        return hostname;
    }
}
