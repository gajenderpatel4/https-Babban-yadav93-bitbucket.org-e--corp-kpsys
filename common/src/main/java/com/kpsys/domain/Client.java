package com.kpsys.domain;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.kpsys.common.multitenancy.Tenant;
import lombok.Data;

import javax.persistence.*;

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
public class Client implements Tenant<Integer> {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Integer clientId;

    @Column(name = "name", length = 35, nullable = false)
    private String name;

    @Column(name = "status")
    private Byte status;

    @Column(name = "paypal_client_id", length = 80, nullable = false)
    private String paypalClientId;

    @Column(name = "paypal_client_secret", length = 80, nullable = false)
    private String paypalClientSecret;

    @Column(name = "hostname", nullable = false)
    private String hostname;

    @Column(name = "logo_url")
    private String logoUrl;

    @Column(name = "css_url")
    private String cssUrl;

    @Override
    public Integer getId() {
        return getClientId();
    }

    @Override
    public void setId(String id) {
        this.clientId = Integer.parseInt(id);
    }
}
