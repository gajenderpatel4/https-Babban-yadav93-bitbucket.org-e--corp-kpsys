package com.kpsys.domain;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;
import org.joda.time.DateTime;

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
import java.io.Serializable;

import static com.fasterxml.jackson.annotation.JsonInclude.Include.NON_NULL;

/**
 * @author Dmitriy Khvatov (<i>dimax4@gmail.com</i>)
 * @version $Id$
 */
@EqualsAndHashCode
@Entity
@Table(name = "kp_user_login_log")
@JsonInclude(NON_NULL)
@Data
@NamedQueries({
    @NamedQuery(name = "getLoginLogs", query = "from LoginLog")
})
@Builder
public class LoginLog implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ULLLIDNO") // BIGINT PRIMARY KEY NOT NULL IDENTITY,
    private Long loginLogId;

    @JoinColumn(name = "USERIDNO") // INT NOT NULL,
    @ManyToOne(targetEntity = User.class, cascade = {}, fetch = FetchType.EAGER)
    private User user;

    @Column(name = "CLNTIDNO") // INT NOT NULL,
    private Long client;

    @Column(name = "DRCTNMBR") // TINYINT NOT NULL,
    private Integer drctNumber;

    @Column(name = "ULLLTMST") // DATETIME NOT NULL,
    private DateTime loginTimestamp;

    @Column(name = "IMEINMBR", length = 35) // VARCHAR(35),
    private String imeiNumber;

    @Column(name = "DVCETMST") // DATETIME,
    private DateTime deviceTimestamp;

    @Column(name = "ULLLCMNT", length = 200) // VARCHAR(200),
    private String comment;

    @Column(name = "LONTPSTN") // DECIMAL(20,17),
    private Double lon;

    @Column(name = "LATTPSTN") // DECIMAL(20,17),
    private Double lat;

    @Column(name = "RMTEADDR", length = 35) // VARCHAR(35),
    private String remoteAddr;

    @Column(name = "CHNLNMBR") // TINYINT NOT NULL,
    private Integer channelNumber;


}
