package com.kpsys.common.exceptions;

import javax.ws.rs.core.Response;
import javax.ws.rs.ext.ExceptionMapper;

/**
 * @author dkhvatov
 */
public class KpsysExceptionMapper implements ExceptionMapper<KpsysException> {

    @Override
    public Response toResponse(KpsysException exception) {
        return Response.status(Response.Status.INTERNAL_SERVER_ERROR)
            .entity(ErrorInfo.builder()
                .message(exception.getMessage())
                .code(Response.Status.INTERNAL_SERVER_ERROR.getStatusCode())
                .build())
            .build();
    }
}
