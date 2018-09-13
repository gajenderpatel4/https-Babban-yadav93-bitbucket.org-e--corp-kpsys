package com.kpsys.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.google.common.base.Charsets;
import com.google.common.hash.Hashing;
import com.kpsys.common.multitenancy.MainClientAware;
import com.kpsys.domain.enums.UserStatus;
import com.kpsys.domain.enums.UserType;
import lombok.Builder;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import lombok.experimental.Tolerate;
import org.joda.time.DateTime;

import javax.persistence.*;
import java.security.Principal;
import java.util.List;

import static com.fasterxml.jackson.annotation.JsonInclude.Include.NON_NULL;
import static com.kpsys.common.dao.NamedHQLQueries.GET_USER_BY_LOGIN;
import static com.kpsys.common.dao.NamedHQLQueries.GET_USER_BY_TOKEN;
import static com.kpsys.common.dao.NamedHQLQueries.GET_USER_BY_USERNAME_AND_PASSWORD;

@EqualsAndHashCode(callSuper = true)
@Entity(name = "User")
@Table(name = "users")
@JsonIgnoreProperties(ignoreUnknown = true)
@JsonInclude(NON_NULL)
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
    @Column(name = "ID")
    private Long userId;

    @Column(name = "PASSWORD", length = 256)
    @JsonIgnore
    private String password;

    @Transient
    @JsonProperty
    private String plainPassword;

    @Column(name = "NAME", length = 128)
    private String login;

    //@Column(name = "USERNAME", length = 35)
    //private String username;

    @Column(name = "STATUS")
    private UserStatus userStatus;

    @Column(name = "TYPE")
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
    private Long clientId;

    @Transient
    @JsonProperty
    private List<Long> locationIds;

    //@Column(name = "EXTNUSERSIONIDFC", length = 20)
    //private String externalLogin;

    @Column(name = "EMAIL", length = 70)
    private String email;

    @Column(name = "PASSWORD_TOKEN", length = 30)
    private String passwordToken;

    @Column(name = "ADDRESS", length = 70)
    private String address;

    @Column(name = "POSTOFFICE_ID", length = 12)
    private String postOfficeId;


    @Column(name = "PHONE", length = 25)
    private String phone;

    //@Column(name = "DATEPTRN", length = 15)
    //private String datePattern;

    @Column(name = "LAST_SEEN")
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

    @Override
    public String getName() {
        return login;
    }

}
