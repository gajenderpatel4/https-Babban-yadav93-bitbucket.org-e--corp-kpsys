package com.kpsys.common.requests;

import lombok.Data;

/**
 * @author dkhvatov
 */
@Data
public class ConfirmRequest {

    private String phone;
    private String code;

}
