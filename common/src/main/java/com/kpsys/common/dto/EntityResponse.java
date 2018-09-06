package com.kpsys.common.dto;

import com.kpsys.common.exceptions.KpsysException;
import lombok.Data;

import javax.ws.rs.core.Response;
import java.util.Optional;

/**
 * @author dkhvatov
 */
@SuppressWarnings("Lombok")
@Data
public class EntityResponse<T> extends BaseResponse {

    T entity;

    public static <T> EntityResponse<T> of(T entity) {
        return new EntityResponse<T>().withEntity(entity);
    }

    public static <T> EntityResponse<T> fromOptional(@SuppressWarnings("OptionalUsedAsFieldOrParameterType") Optional<T> optional, long id) {
        return of(optional
            .orElseThrow(() -> new KpsysException(
                String.format("Entity with id=%s not found", id), Response.Status.NOT_FOUND)));
    }

    public EntityResponse<T> withEntity(T entity) {
        this.setEntity(entity);
        return this;
    }

    public Optional<T> entity() {
        if (hasError()) {
            return Optional.empty();
        }
        return Optional.ofNullable(entity);
    }

}
