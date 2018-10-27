package com.kpsys.domain;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.kpsys.common.multitenancy.Tenant;
import lombok.Data;

import javax.persistence.*;

import static com.fasterxml.jackson.annotation.JsonInclude.Include.NON_NULL;

@Entity(name = "Zone")
@Table(name = "zone")
@JsonInclude(NON_NULL)
@Data
@NamedQueries({
    @NamedQuery(name = "getZones", query = "from Zone"),
})
public class Zone implements Tenant<Long> {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long zoneId;

    @Column(name = "client_zone_id", nullable = false, precision = 10)
    private Long clientZoneId;

    @Column(name = "name", nullable = false, length = 70)
    private String name;

    @Column(name = "client_id", nullable = false)
    private String clientId;

    @Override
    public Long getId() {
        return getZoneId();
    }

    @Override
    public void setId(String id) {
        this.zoneId = Long.parseLong(id);
    }
}
