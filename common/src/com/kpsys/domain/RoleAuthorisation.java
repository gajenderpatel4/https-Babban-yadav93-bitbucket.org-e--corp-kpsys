package com.kpsys.domain;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.kpsys.common.multitenancy.ClientAware;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

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

import static com.fasterxml.jackson.annotation.JsonInclude.Include.NON_NULL;

@EqualsAndHashCode(callSuper = true)
@Entity
@Table(name = "kp_role_authorisation")
@JsonInclude(NON_NULL)
@NoArgsConstructor
@AllArgsConstructor
@Data
@NamedQueries({
    @NamedQuery(name = "getRoleAuthorisations", query = "from RoleAuthorisation")
})
public class RoleAuthorisation extends ClientAware {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "AUTHIDNO") // INT PRIMARY KEY NOT NULL IDENTITY,
    private Long authId;

    @Column(name = "ROLEIDNO") // INT NOT NULL,
    private Long roleId;

    @JoinColumn(name = "CLNTIDNO") // INT,
    @ManyToOne(targetEntity = Client.class, cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    private Client client;

    @Column(name = "OBJCCODE", length = 10) // VARCHAR(10) NOT NULL,
    private String objCode;

    @Column(name = "ADDDITRU") // TINYINT NOT NULL,
    private Boolean add;

    @Column(name = "EDITITRU") // TINYINT NOT NULL,
    private Boolean edit;

    @Column(name = "DELTITRU") // TINYINT NOT NULL,
    private Boolean delete;

    @Column(name = "ADITPARM", length = 25) // VARCHAR(25),
    private String ADITPARM;

    @Column(name = "ACCSLEVLNMBR") // TINYINT,
    private Integer accessLevelNumber;
}
