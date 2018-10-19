package com.kpsys.common.requests;

import lombok.Data;
import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.NotNull;

@Data
public class ClientCustomDataRequest {
    @NotNull
    Long clientId;
}
