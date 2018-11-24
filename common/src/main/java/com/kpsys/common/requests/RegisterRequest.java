package com.kpsys.common.requests;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Data;
import org.apache.commons.lang3.StringUtils;

/**
 * @author dkhvatov
 */
@Data
@JsonIgnoreProperties(ignoreUnknown = true)
public class RegisterRequest {

    private String firstName;
    private String lastName;
    private String email;
    private String phone;
    private String ip;

    public boolean isValid() {
        return !StringUtils.isBlank(firstName)
            && !StringUtils.isBlank(lastName)
            && !StringUtils.isBlank(email)
            && !StringUtils.isBlank(phone);
    }

}
