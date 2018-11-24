package com.kpsys.clickatell;

import com.google.inject.Inject;
import com.google.inject.Singleton;
import com.kpsys.common.exceptions.KpsysException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * @author dkhvatov
 */
@Singleton
public class ClickatellServiceImpl implements ClickatellService {

    private Logger log = LoggerFactory.getLogger(ClickatellService.class);

    private ClickatellRest clickatell;

    @Inject
    public ClickatellServiceImpl(ClickatellRest clickatell) {
        this.clickatell = clickatell;
    }

    public void sendConfirmationMessage(String normalizedPhone, String confirmationCode) {
        try {
            log.info(String.format("Sending message with code %s to %s", confirmationCode, normalizedPhone));
            clickatell.sendMessage(normalizedPhone, "Code: " + confirmationCode);
        } catch (Exception e) {
            throw new KpsysException("Service is unavailable at the moment");
        }
    }

}
