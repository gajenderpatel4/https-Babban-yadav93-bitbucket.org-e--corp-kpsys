import com.kpsys.common.multitenancy.ClientProvider;
import com.kpsys.common.multitenancy.TenantResolver;
import com.kpsys.domain.Client;

import javax.inject.Inject;
import javax.inject.Provider;

/**
 * @author dkhvatov
 */
public class TestTenantResolver implements TenantResolver {

    private final Client client;

    @Inject
    public TestTenantResolver(@SuppressWarnings("unused") Provider<ClientProvider> unused) {
        client = new Client();
        client.setClientId(25L);
        client.setId("25");
        //client.setName("Test client");
        //client.setStatNumber(1);
    }

    public Client resolve() {
        return client;
    }

}
