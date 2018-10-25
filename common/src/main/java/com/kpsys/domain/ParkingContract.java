package com.kpsys.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

import static com.fasterxml.jackson.annotation.JsonInclude.Include.NON_NULL;

@Entity(name = "ParkingContract")
@Table(name = "parking_contract")
@JsonInclude(NON_NULL)
@NoArgsConstructor
@AllArgsConstructor
@Data
@NamedQueries({
    @NamedQuery(name = "getParkingContractsByUserId", query = "SELECT DISTINCT pc FROM ParkingContract pc JOIN ParkingContractRole pcr ON pcr.parkingContractId = pc.id WHERE pcr.userId = :user_id"),
    @NamedQuery(name = "getParkingContractByIdAndUserId", query = "SELECT pc FROM ParkingContract pc JOIN ParkingContractRole pcr ON pcr.parkingContractId = pc.id WHERE pcr.userId = :user_id AND pcr.parkingContractId = :parking_contract_id")
})
public class ParkingContract {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", unique = true, nullable = false)
    private Long id;

    @Column(name = "zone_id", nullable = false)
    private Long zoneId;

    @JoinColumn(name = "client_id")
    @ManyToOne(targetEntity = Client.class, cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JsonIgnore
    private Client client;

    @Column(name = "name", length = 35, nullable = false)
    private String name;

    @Column(name = "max_item_count", precision = 10)
    private Long maxItemCount;

    @Column(name = "description", length = 200)
    private String description;

    @Column(name = "contract_type", precision = 10)
    private Long contractType;

    @Column(name = "max_utilization_count", precision = 10)
    private Long maxUtilizationCount;
}
