package com.kpsys.common.requests;

import lombok.Data;
import org.hibernate.validator.constraints.Email;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Data
public class UpdateUserRequest {
    @NotNull
    @Size(max = 35)
    String login;

    @Size(max = 70)
    String address;

    @Size(max = 25)
    String city;

    @Size(max = 25)
    String country;

    @Email
    @NotNull
    @Size(max = 70)
    String email;

    @Size(max = 12)
    String postOfficeId;

    //@Pattern(regexp = "^(\\(?(\\d{3})\\)?[- ]?(\\d{3})[- ]?(\\d{4}))?$", message = "Invalid phone number, wrong format. Allowed formats: (111)-111-1111, 123-123-1234.")
    @Size(max = 25)
    String phone;
}
