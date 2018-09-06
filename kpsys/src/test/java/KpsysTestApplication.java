import com.google.inject.Module;
import com.kpsys.KpsysApplication;

/**
 * @author dkhvatov
 */
public class KpsysTestApplication extends KpsysApplication {

    @Override
    protected Module[] getModules() {
        return new Module[]{
            new KpsysTestModule()
        };
    }
}
