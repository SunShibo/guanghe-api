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
    private  Integer oddintegral;//剩余积分
    private  Date createTime;
    private  Integer state;
    private  String  payinfo;

    public Integer getOddintegral() {
        return oddintegral;
    }

    public void setOddintegral(Integer oddintegral) {
        this.oddintegral = oddintegral;
    }


    public String getPayinfo() {
        return payinfo;
    }

    public void setPayinfo(String payinfo) {
        this.payinfo = payinfo;
    }

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
    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public Integer getDeal() {
        return deal;
    }


    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

}
