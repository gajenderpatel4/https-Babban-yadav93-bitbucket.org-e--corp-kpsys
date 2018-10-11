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
import static com.kpsys.common.dao.NamedHQLQueries.GET_CLIENT_BY_HOSTNAME;

/**
 * @author Dmitriy Khvatov (<i>dimax4@gmail.com</i>)
 * @version $Id$
 */
@Entity
@Table(name = "client")
@JsonInclude(NON_NULL)
@Data
@NamedQueries({
    @NamedQuery(name = "getClients", query = "from Client"),
    @NamedQuery(name = GET_CLIENT_BY_HOSTNAME, query = "select c from Client c where hostname = :hostname"),
})
public class Client implements Tenant<Long> {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long clientId;

    @Column(name = "paypal_client_id", length = 80)
    private String paypalClientId;

    @Column(name = "paypal_client_secret", length = 80)
    private String paypalClientSecret;

    @Column(name = "hostname")
    private String hostname;

    @Override
    public Long getId() {
        return getClientId();
    }

    @Override
    public void setId(String id) {
        this.clientId = Long.parseLong(id);
    }
}
