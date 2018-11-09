package com.kpsys.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Data;

import javax.persistence.*;

import static com.fasterxml.jackson.annotation.JsonInclude.Include.NON_NULL;

@Entity(name = "ParkingContract")
@Table(name = "parking_contract")
@JsonInclude(NON_NULL)
@Data
@NamedQueries({
    @NamedQuery(name = "getByIdAndUserId", query = "SELECT pc FROM ParkingContract pc JOIN ParkingContractRole pcr ON pcr.parkingContractId = pc.id WHERE pcr.userId = :user_id AND pcr.parkingContractId = :parking_contract_id AND pcr.role_type = 'edit'")
})
public class ParkingContract {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", unique = true, nullable = false)
    private Integer id;

    @JoinColumn(name = "zone_id", nullable = false)
    @ManyToOne(targetEntity = Zone.class, fetch = FetchType.EAGER)
    private Zone zone;

    @JoinColumn(name = "client_id", nullable = false)
    @ManyToOne(targetEntity = Client.class, fetch = FetchType.EAGER)
    private Client client;

    @Column(name = "name", length = 35, nullable = false)
    private String name;

    @Column(name = "max_item_count", precision = 10)
    private Integer maxItemCount;

    @Column(name = "description", length = 200)
    private String description;

    @Column(name = "contract_type", precision = 10)
    private Integer contractType;

    @Column(name = "max_utilization_count", precision = 10)
    private Integer maxUtilizationCount;

    @JsonIgnore
    public void shallowCopy(ParkingContract update) {
        this.setZone(update.getZone());
        this.setClient(update.getClient());
        this.setName(update.getName());
        this.setMaxItemCount(update.getMaxItemCount());
        this.setDescription(update.getDescription());
        this.setContractType(update.getContractType());
        this.setMaxUtilizationCount(update.getMaxUtilizationCount());
    }
}
