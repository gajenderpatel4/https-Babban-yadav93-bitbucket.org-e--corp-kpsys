package com.kpsys.common.exceptions;

import lombok.Builder;
import lombok.Data;

/**
 * @author dkhvatov
 */
@Data
@Builder
public class ErrorInfo {

    private String message;
    private int code;

}
