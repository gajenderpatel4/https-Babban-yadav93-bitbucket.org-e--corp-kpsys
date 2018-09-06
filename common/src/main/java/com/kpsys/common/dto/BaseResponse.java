package com.kpsys.common.dto;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.kpsys.common.exceptions.ErrorInfo;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author dkhvatov
 */
@JsonIgnoreProperties(ignoreUnknown = true)
@Data
@NoArgsConstructor
@AllArgsConstructor
public class BaseResponse<T> {

    private ErrorInfo error;

    public static BaseResponse of(ErrorInfo error) {
        return new BaseResponse(error);
    }

    public static BaseResponse ok() {
        return new BaseResponse();
    }

    public T withError(ErrorInfo error) {
        this.setError(error);
        //noinspection unchecked
        return (T) this;
    }

    public boolean hasError() {
        return error != null;
    }

}
