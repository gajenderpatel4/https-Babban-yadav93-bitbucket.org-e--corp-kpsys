package com.kpsys.domain;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.kpsys.common.multitenancy.Tenant;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import static com.fasterxml.jackson.annotation.JsonInclude.Include.NON_NULL;

/**
 * @author Dmitriy Khvatov (<i>dimax4@gmail.com</i>)
 * @version $Id$
 */
@Entity
@Table(name = "kp_client")
@JsonInclude(NON_NULL)
@Data
@NamedQueries({
    @NamedQuery(name = "getClients", query = "from Client")
})
public class Client implements Tenant<Long> {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "CLNTIDNO") // INT PRIMARY KEY NOT NULL IDENTITY,
    private Long clientId;

    @Column(name = "CLNTNAME", length = 35) // VARCHAR(35) NOT NULL,
    private String name;

    @Column(name = "CLNTSTATNMBR") // TINYINT,
    private Integer statNumber;

    @Column(name = "DATEPTRN", length = 15) // VARCHAR(15)
    private String datePattern;

    @Override
    public Long getId() {
        return getClientId();
    }

    @Override
    public void setId(String id) {
        this.clientId = Long.parseLong(id);
    }
}
