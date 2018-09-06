package com.kpsys.domain.enums;

/**
 * @author Dmitriy Khvatov (<i>dimax4@gmail.com</i>)
 * @version $Id$
 */
public enum UserStatus {

    ACTIVE("Active"),
    _01("User status 01"),
    _02("User status 02"),
    _03("User status 03"),
    _04("User status 04"),
    _05("User status 05"),
    _06("User status 06"),
    PENDING("Pending"),
    DISABLED("Disabled"),
    DELETED("Deleted");

    private final String title;

    private UserStatus(String title) {
        this.title = title;
    }

    public String getTitle() {
        return title;
    }
}
