package com.kpsys.common.config;

import com.fasterxml.jackson.annotation.JsonProperty;
import org.hibernate.validator.constraints.NotEmpty;

public class PayPalConfiguration {
    @NotEmpty
    @JsonProperty
    private String mode;

    public String getMode() {
        return mode;
    }
}
