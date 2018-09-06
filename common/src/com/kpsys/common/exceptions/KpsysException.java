package com.kpsys.common.exceptions;

import lombok.Getter;

import javax.ws.rs.core.Response;

/**
 * @author dkhvatov
 */
@Getter
public class KpsysException extends RuntimeException {

    private Response.Status status;

    public KpsysException(String message) {
        this(message, Response.Status.INTERNAL_SERVER_ERROR);
    }

    public KpsysException(Response.Status status) {
        this.status = status;
    }

    public KpsysException(String message, Response.Status status) {
        super(message);
        this.status = status;
    }

    public KpsysException(String message, Throwable cause, Response.Status status) {
        super(message, cause);
        this.status = status;
    }

    public KpsysException(Throwable cause, Response.Status status) {
        super(cause);
        this.status = status;
    }

    public KpsysException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace, Response.Status status) {
        super(message, cause, enableSuppression, writableStackTrace);
        this.status = status;
    }

}
