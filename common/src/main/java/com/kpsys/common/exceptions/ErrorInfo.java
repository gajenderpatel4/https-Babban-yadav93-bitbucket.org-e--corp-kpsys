package com.kpsys.common.exceptions;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author dkhvatov
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ErrorInfo {

    private String message;
    private int code;

    public static ErrorInfo of(String message, int statusCode) {
        return new ErrorInfo(message, statusCode);
    }
}
