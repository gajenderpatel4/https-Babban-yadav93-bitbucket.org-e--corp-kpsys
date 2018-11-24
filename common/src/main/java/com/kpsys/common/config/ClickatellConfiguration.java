package com.kpsys.common.config;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.kpsys.clickatell.ClickatellRest;
import lombok.Getter;
import lombok.Setter;

/**
 * @author dkhvatov
 */
public class ClickatellConfiguration {

    @JsonProperty("apiKey")
    @Getter
    @Setter
    private String apiKey;

    public ClickatellRest getClient() {
        return new ClickatellRest(apiKey);
    }

}
