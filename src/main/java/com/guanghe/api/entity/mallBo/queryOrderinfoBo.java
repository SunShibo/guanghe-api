package com.guanghe.api.entity.mallBo;

import java.util.List;

/**
 * Created by yxw on 2018/9/7.
 */
public class queryOrderinfoBo {
    private  Integer id;
    private List<OrderInfo> orderBos;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public List<OrderInfo> getOrderBos() {
        return orderBos;
    }

    public void setOrderBos(List<OrderInfo> orderBos) {
        this.orderBos = orderBos;
    }
}
