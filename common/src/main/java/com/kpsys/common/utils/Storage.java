package com.kpsys.common.utils;

import java.util.concurrent.ConcurrentHashMap;

public class Storage {

    private final ConcurrentHashMap<String, String> map = new ConcurrentHashMap<>();

    public static class SingletonHolder {
        public static final Storage HOLDER_INSTANCE = new Storage();
    }

    public static Storage getInstance() {
        return SingletonHolder.HOLDER_INSTANCE;
    }

    public void add(String key, String value) {
        map.put(key, value);
    }

    public String get(String key) {
        return map.get(key);
    }
}
