package com.guanghe.api.entity.mallBo;

import net.sf.json.JSONArray;

import java.util.List;

/**
 * Created by yxw on 2018/9/7.
 */
public class SubmitResponse {
    private  Integer addressId;
    private String number;
    private  Integer count;
    private  String sku;

    public Integer getAddressId() {
        return addressId;
    }

    public void setAddressId(Integer addressId) {
        this.addressId = addressId;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getSku() {
        return sku;
    }

    public void setSku(String sku) {
        this.sku = sku;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }
}
