import com.kpsys.common.KpsysModule;
import com.kpsys.common.multitenancy.TenantResolver;

/**
 * @author dkhvatov
 */
public class KpsysTestModule extends KpsysModule {

    @Override
    protected void configure() {
        binder().bind(TenantResolver.class).to(TestTenantResolver.class);
    }

}
