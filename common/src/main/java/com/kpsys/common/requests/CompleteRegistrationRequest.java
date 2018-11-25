package com.kpsys.common.requests;

import lombok.Data;

/**
 * @author dkhvatov
 */
@Data
public class CompleteRegistrationRequest {

    private String token;
    private String password;

}
