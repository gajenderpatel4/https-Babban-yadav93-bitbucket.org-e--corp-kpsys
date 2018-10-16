package com.kpsys.common.config;

import com.fasterxml.jackson.annotation.JsonProperty;
import io.dropwizard.Configuration;
import io.dropwizard.bundles.assets.AssetsBundleConfiguration;
import io.dropwizard.bundles.assets.AssetsConfiguration;
import io.dropwizard.client.JerseyClientConfiguration;
import io.dropwizard.db.DataSourceFactory;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;

public class KpsysConfiguration extends Configuration implements AssetsBundleConfiguration {

    @Valid
    @NotNull
    @JsonProperty
    private final AssetsConfiguration assets = AssetsConfiguration.builder().build();
    @JsonProperty
    private DataSourceFactory database = new DataSourceFactory();
    @JsonProperty
    private String imageDir;

    @Valid
    @NotNull
    @JsonProperty
    private PayPalConfiguration paypal;

    @Valid
    @NotNull
    @JsonProperty
    private SiteConfiguration site;

    @Override
    public AssetsConfiguration getAssetsConfiguration() {
        return assets;
    }

    public DataSourceFactory getDataSourceFactory() {
        return database;
    }

    public String getImageDir() {
        return imageDir;
    }

    @Valid
    @NotNull
    private JerseyClientConfiguration jerseyClientConfiguration = new JerseyClientConfiguration();

    @JsonProperty("jerseyClient")
    public JerseyClientConfiguration getJerseyClientConfiguration() {
        return jerseyClientConfiguration;
    }

    @JsonProperty("jerseyClient")
    public void setJerseyClientConfiguration(JerseyClientConfiguration jerseyClientConfiguration) {
        this.jerseyClientConfiguration = jerseyClientConfiguration;
    }

    @JsonProperty("paypal")
    public PayPalConfiguration getPaypal() {
        return paypal;
    }

    @JsonProperty("site")
    public SiteConfiguration getSiteConfiguration() {
        return site;
    }
}
