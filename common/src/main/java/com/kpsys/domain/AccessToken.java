package com.kpsys.domain;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.joda.time.DateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Transient;

import static com.fasterxml.jackson.annotation.JsonInclude.Include.NON_NULL;
import static com.kpsys.common.dao.NamedHQLQueries.DELETE_ACCESS_TOKEN_BY_ID;

@Entity(name = "AccessToken")
@Table(name = "access_token")
@JsonInclude(NON_NULL)
@AllArgsConstructor
@NoArgsConstructor
@Data
@NamedQueries({
    @NamedQuery(name = DELETE_ACCESS_TOKEN_BY_ID, query = "DELETE AccessToken WHERE token = :token")
})
public class AccessToken {

    @Id
    private String token;

    @JoinColumn(name = "_user")
    @ManyToOne(targetEntity = User.class, fetch = FetchType.EAGER)
    private User user;

    @Column(name = "created")
    private DateTime created;

    @Transient
    private Long clientId;

}
