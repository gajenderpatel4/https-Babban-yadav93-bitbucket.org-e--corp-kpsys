package com.kpsys.common.config;

import com.fasterxml.jackson.annotation.JsonProperty;
import io.dropwizard.Configuration;
import io.dropwizard.bundles.assets.AssetsBundleConfiguration;
import io.dropwizard.bundles.assets.AssetsConfiguration;
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

    @Override
    public AssetsConfiguration getAssetsConfiguration() {
        return assets;
    }

    public DataSourceFactory getDataSourceFactory() {
        return database;
    }

}
