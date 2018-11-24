package com.kpsys.domain;

import com.kpsys.common.requests.RegisterRequest;
import lombok.Builder;
import lombok.Data;
import lombok.experimental.Tolerate;
import org.joda.time.DateTime;

import javax.persistence.*;

import static com.kpsys.common.dao.NamedHQLQueries.GET_USER_REGISTRATION_BY_CODE;
import static com.kpsys.common.dao.NamedHQLQueries.GET_USER_REGISTRATION_BY_PHONE;

@Entity
@Table(name = "user_registration")
@Data
@Builder
@NamedQueries({
    @NamedQuery(name = GET_USER_REGISTRATION_BY_PHONE, query = "from UserRegistration where phone = :phone and registerDate > :hourAgo"),
    @NamedQuery(name = GET_USER_REGISTRATION_BY_CODE, query = "from UserRegistration where phone = :phone and confirmationCode = :code")
})
public class UserRegistration {

    @Column(name = "first_name")
    private String firstName;
    @Column(name = "last_name")
    private String lastName;
    @Column(name = "email")
    private String email;
    @Id
    @Column(name = "phone")
    private String phone;
    @Column(name = "ip")
    private String ip;
    @Column(name = "register_date")
    private DateTime registerDate;
    @Column(name = "confirmation_code")
    private String confirmationCode;
    @Column(name = "confirmation_date")
    private DateTime confirmationDate;
    @Column(name = "counter")
    private int counter;

    @Tolerate
    public UserRegistration() {
    }

    public static UserRegistrationBuilder fromRegisterRequest(RegisterRequest registerRequest) {
        return UserRegistration.builder()
            .firstName(registerRequest.getFirstName())
            .lastName(registerRequest.getLastName())
            .email(registerRequest.getEmail())
            .phone(registerRequest.getPhone())
            .ip(registerRequest.getIp())
            .registerDate(new DateTime());
    }

    public UserRegistration withConfirmationCode(String confirmationCode) {
        this.setConfirmationCode(confirmationCode);
        return this;
    }

    public UserRegistration withUpdatedRegistrationDate() {
        this.setRegisterDate(new DateTime());
        return this;
    }

    public UserRegistration withUpdatedCounter() {
        this.setCounter(counter + 1);
        return this;
    }

}
