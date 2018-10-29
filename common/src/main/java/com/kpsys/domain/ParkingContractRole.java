package com.kpsys.domain;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

import static com.fasterxml.jackson.annotation.JsonInclude.Include.NON_NULL;

@Entity(name = "ParkingContractRole")
@Table(name = "parking_contract_role")
@JsonInclude(NON_NULL)
@NoArgsConstructor
@AllArgsConstructor
@Data
@NamedQueries({
    @NamedQuery(name = "getParkingContractRolesForUserId", query = "from ParkingContractRole where user_id = :user_id")
})
public class ParkingContractRole {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "parking_contract_id")
    private Integer parkingContractId;

    @Column(name = "user_id")
    private Integer userId;

    @Column(name = "role_type")
    private String role_type;
}
