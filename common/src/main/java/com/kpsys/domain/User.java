package com.kpsys.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.google.common.base.Charsets;
import com.google.common.hash.Hashing;
import com.kpsys.common.multitenancy.MainClientAware;
import com.kpsys.common.requests.UpdateUserRequest;
import com.kpsys.domain.enums.UserStatus;
import com.kpsys.domain.enums.UserType;
import lombok.*;
import lombok.experimental.Tolerate;
import org.hibernate.validator.constraints.Email;
import org.joda.time.DateTime;

import javax.persistence.*;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import java.security.Principal;
import java.util.List;

import static com.kpsys.common.dao.NamedHQLQueries.*;

@EqualsAndHashCode(callSuper = true)
@Entity(name = "User")
@Table(name = "users")
@Getter
@Setter
@ToString(exclude = {"accessToken"})
@Builder
@NamedQueries({
    @NamedQuery(name = GET_USER_BY_USERNAME_AND_PASSWORD, query = "from User where login = :login and password = :password and userStatus = 0"),
    @NamedQuery(name = GET_USER_BY_TOKEN, query = "select at.user from AccessToken at where token = :token "),
    @NamedQuery(name = GET_USER_BY_LOGIN, query = "from User where login = :login")
})
public class User extends MainClientAware implements Principal {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer userId;

    @Column(name = "password", length = 256)
    @JsonIgnore
    private String password;

    @Transient
    @JsonIgnore
    private String plainPassword;

    @Column(name = "name", length = 35, nullable = false)
    @Size(max = 35)
    private String login;

    @Column(name = "city", length = 25)
    @Size(max = 25)
    private String city;

    //@Column(name = "USERNAME", length = 35)
    //private String username;

    @Column(name = "status", nullable = false)
    private UserStatus userStatus;

    @Column(name = "type", nullable = false)
    private UserType userType;

    //@JoinColumn(name = "MAINCLNTIDNO")
    //@JsonIgnore
    //@ManyToOne(targetEntity = Client.class, cascade = CascadeType.PERSIST, fetch = FetchType.EAGER)
    //private Client client;

    @Column
    @Transient
    private Client client = new Client();

    @JsonIgnore
    @OneToMany(mappedBy = "user", targetEntity = AccessToken.class, fetch = FetchType.LAZY, cascade = CascadeType.ALL, orphanRemoval = true)
    private List<AccessToken> accessToken;

    //@JsonIgnore
    //@OneToMany(mappedBy = "user", targetEntity = LoginLog.class, fetch = FetchType.LAZY, cascade = CascadeType.ALL, orphanRemoval = true)
    //private List<LoginLog> loginLog;

    @Transient
    @JsonProperty
    private Integer clientId;

    @Transient
    @JsonProperty
    private List<Integer> locationIds;

    //@Column(name = "EXTNUSERSIONIDFC", length = 20)
    //private String externalLogin;

    @Email
    @Column(name = "email", length = 70)
    @Size(max = 70)
    private String email;

    @Column(name = "password_token", length = 30, nullable = false)
    @Size(max = 30)
    private String passwordToken;

    @Column(name = "address", length = 70)
    @Size(max = 70)
    private String address;

    @Column(name = "postoffice_id", length = 12)
    @Size(max = 12)
    private String postOfficeId;

    @Pattern(regexp = "^(\\(?(\\d{3})\\)?[- ]?(\\d{3})[- ]?(\\d{4}))?$", message = "Invalid phone number, wrong format.")
    @Column(name = "phone", length = 25)
    @Size(max = 25)
    private String phone;

    @Column(name = "country", length = 25)
    @Size(max = 25)
    private String country;

    //@Column(name = "DATEPTRN", length = 15)
    //private String datePattern;

    @Column(name = "last_seen")
    private DateTime lastSeen;


    //@Column(name = "PRNTUSERIDNO")
    // USERIDNO of the user that created the record if USERTYPENMBR is 16
    //private Long createdBy;

    //@Column(name = "PSWDCHNGTYPENMBR")
    //private Long passwordChangeType;

    //@Column(name = "RSETPSWDITRU")
    // User must reset password before he can proceed.
    //private Boolean resetPassword;

    @Tolerate
    public User() {
    }

    public static String encodePassword(String plainPassword) {
        return Hashing.sha1().hashString(plainPassword, Charsets.UTF_8).toString();
    }

    @JsonIgnore
    @Override
    public String getName() {
        return login;
    }

    @JsonIgnore
    public void shallowCopy(UpdateUserRequest update) {
        this.setLogin(update.getLogin());
        this.setAddress(update.getAddress());
        this.setCity(update.getCity());
        this.setCountry(update.getCountry());
        this.setEmail(update.getEmail());
        this.setPostOfficeId(update.getPostOfficeId());
        this.setPhone(update.getPhone());
    }
}
