package com.kpsys.domain;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.io.Serializable;

@Data
@Entity
public class ItemRole implements Serializable {
    @Id
    private Long item_id;
    @Id
    private String role_type;
    @Id
    private String entity_type;
}
