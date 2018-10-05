package com.kpsys.common.utils;

import com.kpsys.common.Requests.PayPalInitRequest;

import java.util.concurrent.ConcurrentHashMap;

public class Storage {

    private final ConcurrentHashMap<String, PayPalInitRequest> map = new ConcurrentHashMap<>();

    public static Storage getInstance() {
        return SingletonHolder.HOLDER_INSTANCE;
    }

    public void add(String key, PayPalInitRequest value) {
        map.put(key, value);
    }

    public PayPalInitRequest get(String key) {
        return map.get(key);
    }

    public void remove(String key) {
        map.remove(key);
    }

    public static class SingletonHolder {
        static final Storage HOLDER_INSTANCE = new Storage();
    }
}
