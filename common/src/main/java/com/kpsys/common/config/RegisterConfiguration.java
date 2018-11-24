package com.kpsys.common.config;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Getter;
import lombok.Setter;

/**
 * @author dkhvatov
 */
public class RegisterConfiguration {

    @JsonProperty("smsTimeout")
    @Getter
    @Setter
    private int smsTimeout;

}
