package com.kpsys.clickatell;

/**
 * @author dkhvatov
 */
public interface ClickatellService {

    void sendConfirmationMessage(String normalizedPhone, String confirmationCode);

}
