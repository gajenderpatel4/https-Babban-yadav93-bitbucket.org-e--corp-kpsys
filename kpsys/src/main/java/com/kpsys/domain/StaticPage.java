package com.kpsys.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.kpsys.common.multitenancy.ClientAware;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import static com.fasterxml.jackson.annotation.JsonInclude.Include.NON_NULL;

@EqualsAndHashCode(callSuper = true)
@Entity
@Table(name = "kp_static_page")
@JsonInclude(NON_NULL)
@Data
@NamedQueries({
    @NamedQuery(name = "getStaticPages", query = "from StaticPage")
})
public class StaticPage extends ClientAware {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "PAGEIDNO")
    private Long pageId;

    @Column(name = "PAGETYPENMBR")
    private Integer pageType;

    @JoinColumn(name = "CLNTIDNO")
    @ManyToOne(targetEntity = Client.class, cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JsonIgnore
    private Client client;

    @Column(name = "LANGCODE", length = 7)
    private String language;

    @Column(name = "PAGETITL", length = 35)
    private String title;

    @Column(name = "PAGECNTN")
    private String content;
}
