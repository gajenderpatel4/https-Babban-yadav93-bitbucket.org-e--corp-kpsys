package com.kpsys.common;

import com.fasterxml.jackson.databind.SerializationFeature;
import com.google.inject.Injector;
import com.google.inject.Module;
import com.google.inject.Stage;
import com.hubspot.dropwizard.guice.GuiceBundle;
import com.kpsys.common.config.KpsysConfiguration;
import com.kpsys.common.multitenancy.ClientFilter;
import com.kpsys.common.multitenancy.MultitenantHibernateBundle;
import com.kpsys.common.multitenancy.Tenant;
import io.dropwizard.Application;
import io.dropwizard.bundles.assets.ConfiguredAssetsBundle;
import io.dropwizard.flyway.FlywayBundle;
import io.dropwizard.setup.Bootstrap;

/**
 * @author dkhvatov
 */
public abstract class CommonApplication<C extends KpsysConfiguration> extends Application<C> {

    private GuiceBundle<C> guiceBundle;

    @Override
    public void initialize(Bootstrap<C> bootstrap) {

        GuiceBundle.Builder<C> builder = GuiceBundle.<C>newBuilder()
            .enableAutoConfig(Tenant.class.getClass().getPackage().getName())
            .setConfigClass(getConfigClass());

        for (Module module : getModules()) {
            builder.addModule(module);
        }

        this.guiceBundle = builder.build(Stage.DEVELOPMENT);
        bootstrap.addBundle(guiceBundle);
        bootstrap.addBundle(getInjector().getInstance(MultitenantHibernateBundle.class));
        bootstrap.addBundle(getInjector().getInstance(FlywayBundle.class));
        bootstrap.addBundle(new ConfiguredAssetsBundle("/assets/", "/", "index.html"));

        bootstrap.getObjectMapper().disable(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS);
    }

    protected abstract Class<C> getConfigClass();

    protected abstract Module[] getModules();

    protected ClientFilter getTenantFilter() {
        return getInjector().getInstance(ClientFilter.class);
    }

    public Injector getInjector() {
        return guiceBundle.getInjector();
    }

}
