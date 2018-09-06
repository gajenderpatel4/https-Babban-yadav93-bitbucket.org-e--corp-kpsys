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
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Tolerate;
import org.joda.time.DateTime;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Transient;
import java.security.Principal;
import java.util.List;

import static com.fasterxml.jackson.annotation.JsonInclude.Include.NON_NULL;
import static com.kpsys.common.dao.NamedHQLQueries.GET_USER_BY_LOGIN;
import static com.kpsys.common.dao.NamedHQLQueries.GET_USER_BY_TOKEN;
import static com.kpsys.common.dao.NamedHQLQueries.GET_USER_BY_USERNAME_AND_PASSWORD;

@EqualsAndHashCode(callSuper = true)
@Entity(name = "User")
@Table(name = "kp_user")
@JsonIgnoreProperties(ignoreUnknown = true)
@JsonInclude(NON_NULL)
@Data
@Builder
@NamedQueries({
    @NamedQuery(name = GET_USER_BY_USERNAME_AND_PASSWORD, query = "from User where login = :login and password = :password and userStatus = 0"),
    @NamedQuery(name = GET_USER_BY_TOKEN, query = "select at.user from AccessToken at where token = :token "),
    @NamedQuery(name = GET_USER_BY_LOGIN, query = "from User where login = :login")
})
public class User extends MainClientAware implements Principal {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "USERIDNO")
    private Long userId;

    @Column(name = "USERPSWD", length = 256)
    @JsonIgnore
    private String password;

    @Transient
    @JsonProperty
    private String plainPassword;

    @Column(name = "USERSIONIDFC", length = 128)
    private String login;

    @Column(name = "USERNAME", length = 35)
    private String username;

    @Column(name = "USERSTATNMBR")
    private UserStatus userStatus;

    @Column(name = "USERTYPENMBR")
    private UserType userType;

    @JoinColumn(name = "MAINCLNTIDNO")
    @JsonIgnore
    @ManyToOne(targetEntity = Client.class, cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    private Client client;

    @Transient
    @JsonProperty
    private Long clientId;

    @Transient
    @JsonProperty
    private List<Long> locationIds;

    @Column(name = "EXTNUSERSIONIDFC", length = 20)
    private String externalLogin;

    @Column(name = "EMALADDR", length = 70)
    private String email;

    @Column(name = "PSWDTOKN", length = 30)
    private String passwordToken;

    @Column(name = "USERADDR", length = 70)
    private String address;

    @Column(name = "USERPOOFNMBR", length = 12)
    private String postOfficeId;

    @Column(name = "USERPOOFNAME", length = 25)
    private String postOfficeName;

    @Column(name = "USERPHONNMBR", length = 25)
    private String phone;

    @Column(name = "DATEPTRN", length = 15)
    private String datePattern;

    @Column(name = "LASTSEENTMST")
    private DateTime lastSeen;

    @Column(name = "REGNIDNO")
    private Long regionId;

    @Column(name = "PRNTUSERIDNO")
    // USERIDNO of the user that created the record if USERTYPENMBR is 16
    private Long createdBy;

    @Column(name = "PSWDCHNGTYPENMBR")
    private Long passwordChangeType;

    @Column(name = "RSETPSWDITRU")
    // User must reset password before he can proceed.
    private Boolean resetPassword;

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
