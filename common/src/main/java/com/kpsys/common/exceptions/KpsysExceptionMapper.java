package com.kpsys.common.exceptions;

import com.kpsys.common.dto.BaseResponse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.ws.rs.core.Response;
import javax.ws.rs.ext.ExceptionMapper;

/**
 * @author dkhvatov
 */
public class KpsysExceptionMapper implements ExceptionMapper<KpsysException> {

    private Logger log = LoggerFactory.getLogger(KpsysExceptionMapper.class);

    @Override
    public Response toResponse(KpsysException exception) {
        log.error("Kpsys exception", exception);
        return Response.status(exception.getStatus())
            .entity(BaseResponse.of(
                ErrorInfo.of(exception.getMessage(), exception.getStatus().getStatusCode())))
            .build();
    }
}
