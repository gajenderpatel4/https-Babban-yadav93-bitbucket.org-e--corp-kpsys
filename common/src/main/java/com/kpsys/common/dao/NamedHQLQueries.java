package com.kpsys.common.dao;

import lombok.AccessLevel;
import lombok.NoArgsConstructor;

@NoArgsConstructor(access = AccessLevel.PRIVATE)
public final class NamedHQLQueries {

    public static final String DELETE_ACCESS_TOKEN_BY_ID = "deleteAccessTokenById";
    public static final String GET_USER_BY_USERNAME_AND_PASSWORD = "getUserByUsernameAndPassword";
    public static final String GET_USER_REGISTRATION_BY_PHONE = "getUserRegistrationByPhone";
    public static final String GET_USER_REGISTRATION_BY_CODE = "getUserRegistrationByCode";
    public static final String GET_USER_BY_TOKEN = "getUserByToken";
    public static final String GET_USER_BY_LOGIN = "getUserByLogin";
    public static final String GET_RESET_PASSWORD_BY_PHONE = "getResetPasswordByPhone";
    public static final String GET_RESET_PASSWORD_BY_CODE = "getResetPasswordByCode";

}
