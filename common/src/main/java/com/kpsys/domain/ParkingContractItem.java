package com.kpsys.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Data;

import javax.persistence.*;

import static com.fasterxml.jackson.annotation.JsonInclude.Include.NON_NULL;

@Entity(name = "ParkingContractItem")
@Table(name = "parking_contract_item")
@JsonInclude(NON_NULL)
@Data
@NamedQueries({
    @NamedQuery(name = "getParkingContractItemsByUserIdAndParkingContractId", query = "SELECT pci FROM ParkingContractItem pci " +
        "JOIN ParkingContract pc ON pc.id = pci.parkingContract.id " +
        "JOIN ParkingContractRole pcr ON pcr.parkingContractId = pc.id WHERE pcr.userId = :user_id AND pcr.role_type = 'edit' AND pci.parkingContract.id = :parking_contract_id"),
    @NamedQuery(name = "getParkingContractItemByUserIdAndId", query = "SELECT pci FROM ParkingContractItem pci " +
        "WHERE pci.id = :id AND " +
        "EXISTS (SELECT pc FROM ParkingContract pc " +
        "JOIN ParkingContractRole pcr ON pcr.parkingContractId = pc.id " +
        "WHERE pcr.userId = :user_id and pcr.role_type = 'edit' and pc.id = pci.parkingContract.id)")})
public class ParkingContractItem {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", unique = true, nullable = false)
    private Integer id;

    @JoinColumn(name = "parking_contract_id", nullable = false, updatable = false)
    @ManyToOne(targetEntity = ParkingContract.class, fetch = FetchType.EAGER)
    private ParkingContract parkingContract;

    @JoinColumn(name = "client_id", nullable = false)
    @ManyToOne(targetEntity = Client.class, fetch = FetchType.EAGER)
    private Client client;

    @Column(name = "identificator", length = 70)
    private String identificator;

    @Column(name = "pre_register_identificator", length = 70)
    private String preRegisterIdentificator;

    //TODO: update user?
    @JoinColumn(name = "user_id")
    @ManyToOne(targetEntity = User.class, fetch = FetchType.EAGER)
    private User user;

    @Column(name = "status", nullable = false)
    private Byte status;

    @Column(name = "comment", length = 200)
    private String comment;

    @JsonIgnore
    public void shallowCopy(ParkingContractItem update) {
        this.setClient(update.getClient());
        this.setIdentificator(update.getIdentificator());
        this.setPreRegisterIdentificator(update.getPreRegisterIdentificator());
        this.setUser(update.getUser());
        this.setStatus(update.getStatus());
        this.setComment(update.getComment());
    }
}
