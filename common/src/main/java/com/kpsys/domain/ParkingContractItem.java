package com.kpsys.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Data;

import javax.persistence.*;

import static com.fasterxml.jackson.annotation.JsonInclude.Include.NON_NULL;

@Entity
@Table(name = "parking_contract_item")
@JsonInclude(NON_NULL)
@Data
@NamedQueries({
})
public class ParkingContractItem {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", unique = true, nullable = false)
    private Integer id;

    @JoinColumn(name = "parking_contract_id", nullable = false)
    @ManyToOne(targetEntity = ParkingContract.class, cascade = {}, fetch = FetchType.EAGER)
    @JsonIgnore
    private ParkingContract parkingContract;

    @JoinColumn(name = "client_id", nullable = false)
    @ManyToOne(targetEntity = Client.class, cascade = {}, fetch = FetchType.EAGER)
    @JsonIgnore
    private Client client;

    @Column(name = "identificator", length = 70)
    private String identificator;

    @Column(name = "pre_register_identificator", length = 70)
    private String preRegisterIdentificator;

    @JoinColumn(name = "user_id")
    @ManyToOne(targetEntity = User.class, cascade = {}, fetch = FetchType.EAGER)
    @JsonIgnore
    private User user;

    @Column(name = "status", nullable = false)
    private Byte status;

    @Column(name = "comment", length = 200)
    private String comment;
}
