package com.kpsys.domain.enums;

import org.hibernate.criterion.Order;

import java.util.function.Function;

public enum OrderType {

    ASC(Order::asc),
    DESC(Order::desc);

    private final Function<String, Order> orderFn;

    OrderType(Function<String, Order> order) {
        this.orderFn = order;
    }

    public Order getOrder(String property) {
        return orderFn.apply(property);
    }
}
