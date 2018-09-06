package com.kpsys.common.security;

import lombok.Data;

@Data
public class LoginRequest {
    private String login;
    private String password;
    private String clientId;
}
