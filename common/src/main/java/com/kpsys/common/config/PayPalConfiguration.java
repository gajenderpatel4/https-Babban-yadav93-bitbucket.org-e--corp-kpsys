package com.kpsys.common.config;

import com.fasterxml.jackson.annotation.JsonProperty;
import org.hibernate.validator.constraints.NotEmpty;

public class PayPalConfiguration {
    @NotEmpty
    @JsonProperty
    private String mode;

    @NotEmpty
    @JsonProperty
    private String returnUrlFormat;

    @NotEmpty
    @JsonProperty
    private String cancelUrlFormat;

    public String getMode() {
        return mode;
    }

    public String getReturnUrlFormat() {
        return returnUrlFormat;
    }

    public String getCancelUrlFormat() {
        return cancelUrlFormat;
    }
}
