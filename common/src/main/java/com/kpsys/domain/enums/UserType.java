package com.kpsys.domain.enums;

public enum UserType {

    NORMAL("Normal user"),
    PARKING_ATTENDANT("Parking attendant"),
    TRAFFIC_WARDEN("Traffic Warden"),
    _03("User type 03"),
    _04("User type 04"),
    _05("User type 05"),
    _06("User type 06"),
    _07("User type 07"),
    _08("User type 08"),
    _09("User type 09"),
    _10("User type 10"),
    _11("User type 11"),
    _12("User type 12"),
    _13("User type 13"),
    _14("User type 14"),
    EXTERNAL_SUPER_USER("External Super user"),
    EXTERNAL_USER("External user");

    private final String title;

    private UserType(String title) {
        this.title = title;
    }

    public String getTitle() {
        return title;
    }
}
