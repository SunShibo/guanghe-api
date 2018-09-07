package com.guanghe.api.entity.mallBo;

import com.guanghe.api.common.base.BaseModel;

import java.util.Date;

/**
 * Created by yxw on 2018/8/1.
 */
public class IntegralTransactionBo extends BaseModel{
    private  Integer id;
    private  Integer userId;
    private  Integer orderId;
    private  Integer deal;//交易金额
    private  Integer oddintegral;//积分
    private  String createUser;
    private  String updateUser;
    private  Date createTime;
    private  Date updateTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }
    public void setDeal(Integer deal) {
        this.deal = deal;
    }


    public String getCreateUser() {
        return createUser;
    }


    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }


    public Integer getDeal() {
        return deal;
    }

    public void setCreateUser(String createUser) {
        this.createUser = createUser;
    }

    public String getUpdateUser() {
        return updateUser;
    }

    public void setUpdateUser(String updateUser) {
        this.updateUser = updateUser;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
}
