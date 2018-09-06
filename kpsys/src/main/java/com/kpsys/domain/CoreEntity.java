package com.kpsys.domain;

import com.kpsys.common.multitenancy.ClientAware;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.lang.reflect.Field;
import java.util.List;
import java.util.Set;

public abstract class CoreEntity extends ClientAware {

    private static final Logger log = LoggerFactory.getLogger(CoreEntity.class);


    private Object id;

    public String getClassName() {
        return this.getClass().getName();
    }

    public String getSimpleClassName() {
        return getClassName().substring(getClassName().lastIndexOf(".") + 1);
    }

    public String getLogDetails() {
        StringBuilder buff = new StringBuilder();
        try {

            Field[] fields = this.getClass().getDeclaredFields();

            for (Field field : fields) {
                field.setAccessible(true);

                if (field.get(this) instanceof CoreEntity
                    || field.get(this) instanceof Set
                    || field.get(this) instanceof List) {
                    continue;
                }

                buff.append(String.format("%s = %s, ", field.getName(), field.get(this)));
            }
        } catch (Exception e) {
            log.error("Error getting CoreEntity fields", e);
        }

        return buff.toString();
    }

    public Object getId() {
        return id;
    }

    public void setId(Object id) {
        this.id = id;
    }
}
