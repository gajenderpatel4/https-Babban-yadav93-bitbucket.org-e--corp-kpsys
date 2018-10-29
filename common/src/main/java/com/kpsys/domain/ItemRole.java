package com.kpsys.domain;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.io.Serializable;

@Data
@Entity
public class ItemRole implements Serializable {
    @Id
    private Integer item_id;
    @Id
    private String role_type;
    @Id
    private String name;
    @Id
    private String entity_type;
}
