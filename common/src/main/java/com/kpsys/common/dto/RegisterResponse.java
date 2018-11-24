package com.kpsys.common.dto;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.kpsys.common.dto.BaseResponse;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author dkhvatov
 */
@SuppressWarnings("Lombok")
@Data()
@NoArgsConstructor
@AllArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class RegisterResponse extends BaseResponse {

    private Long tenantId;
    private String phone;
    private int timeout;

}
