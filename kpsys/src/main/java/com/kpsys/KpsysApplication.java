package com.kpsys;

import com.google.inject.Module;
import com.kpsys.common.CommonApplication;
import com.kpsys.common.KpsysModule;
import com.kpsys.common.config.KpsysConfiguration;
import com.kpsys.common.dao.AuthDao;
import com.kpsys.common.dao.RoleAuthorisationDao;
import com.kpsys.common.exceptions.KpsysExceptionMapper;
import com.kpsys.common.multitenancy.MultitenantHibernateBundle;
import com.kpsys.common.resource.AuthResource;
import com.kpsys.resource.ExternalServiceResource;
import com.kpsys.common.security.OAuth2Authenticator;
import com.kpsys.domain.User;
import com.kpsys.resource.ApplicationResource;
import com.kpsys.security.UserRoleAuthorizer;
import io.dropwizard.auth.AuthDynamicFeature;
import io.dropwizard.auth.AuthValueFactoryProvider;
import io.dropwizard.auth.oauth.OAuthCredentialAuthFilter;
import io.dropwizard.client.JerseyClientBuilder;
import io.dropwizard.hibernate.HibernateBundle;
import io.dropwizard.setup.Environment;
import org.glassfish.jersey.server.filter.RolesAllowedDynamicFeature;

import javax.ws.rs.client.Client;

public class KpsysApplication extends CommonApplication<KpsysConfiguration> {

    public static void main(String[] args) throws Exception {
        new KpsysApplication().run(args);
    }

    @Override
    public void run(KpsysConfiguration kpsysConfiguration, Environment environment) {
        environment.jersey().setUrlPattern("/api/*");

        environment.jersey().register(new ApplicationResource());
        environment.jersey().register(new AuthResource());

        environment.jersey().register(new KpsysExceptionMapper());

        HibernateBundle hibernate = getInjector().getInstance(MultitenantHibernateBundle.class);
        AuthDao authDao = new AuthDao(hibernate.getSessionFactory());
        RoleAuthorisationDao roleAuthorisationDao = new RoleAuthorisationDao(hibernate.getSessionFactory());

        environment.jersey().register(new AuthDynamicFeature(
            new OAuthCredentialAuthFilter.Builder<User>()
                .setAuthenticator(new OAuth2Authenticator(authDao))
                .setAuthorizer(new UserRoleAuthorizer(roleAuthorisationDao))
                .setPrefix("Bearer")
                .buildAuthFilter()));
        environment.jersey().register(RolesAllowedDynamicFeature.class);
        environment.jersey().register(OAuth2Authenticator.class);
        environment.jersey().register(new AuthValueFactoryProvider.Binder<>(User.class));

        environment.jersey().getResourceConfig().register(getTenantFilter());

        final Client client = new JerseyClientBuilder(environment).using(kpsysConfiguration.getJerseyClientConfiguration())
            .using(environment)
            .build(getName());
        environment.jersey().register(new ExternalServiceResource(client));
    }

    @Override
    protected Class<KpsysConfiguration> getConfigClass() {
        return KpsysConfiguration.class;
    }

    @Override
    protected Module[] getModules() {
        return new Module[]{new KpsysModule()};
    }
}
