package com.guanghe.api.entity.mailBo;

import com.guanghe.api.entity.bo.PrivateClubBo;

import java.util.Date;

/**
 * Created by yxw on 2018/8/1.
 * 商品
 */
public class GoodsBo {
    private  Integer id;
    private  String name;
    private  Integer price;
    private  Integer stock;//库存
    private  Integer goodsNo;
    private  String weight;
    private  String introduceImgUrl;
    private  Integer state;//下架/无货
    private  Integer brandId;
    private  Integer goodsTypeId;
    private  String createUser;
    private  String updateUser;
    private Date createTime;
    private  Date updateTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }

    public Integer getGoodsNo() {
        return goodsNo;
    }

    public void setGoodsNo(Integer goodsNo) {
        this.goodsNo = goodsNo;
    }

    public String getWeight() {
        return weight;
    }

    public void setWeight(String weight) {
        this.weight = weight;
    }

    public String getIntroduceImgUrl() {
        return introduceImgUrl;
    }

    public void setIntroduceImgUrl(String introduceImgUrl) {
        this.introduceImgUrl = introduceImgUrl;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public Integer getBrandId() {
        return brandId;
    }

    public void setBrandId(Integer brandId) {
        this.brandId = brandId;
    }

    public Integer getGoodsTypeId() {
        return goodsTypeId;
    }

    public void setGoodsTypeId(Integer goodsTypeId) {
        this.goodsTypeId = goodsTypeId;
    }

    public String getCreateUser() {
        return createUser;
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
