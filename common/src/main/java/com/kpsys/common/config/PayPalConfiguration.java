package com.kpsys.common.config;

import com.fasterxml.jackson.annotation.JsonProperty;
import org.hibernate.validator.constraints.NotEmpty;

public class PayPalConfiguration {
    @NotEmpty
    @JsonProperty
    private String mode;

    @NotEmpty
    @JsonProperty
    private String clientId;

    @NotEmpty
    @JsonProperty
    private String clientSecret;

    public String getMode() {
        return mode;
    }

    public String getClientId() {
        return clientId;
    }

    public String getClientSecret() {
        return clientSecret;
    }
}
