package com.guanghe.api.entity.bo;

import java.util.Date;

/**
 * Created by yxw on 2018/9/3.
 */
public class HomeActivitesBo {
    private  Integer id;
    private  String content;
    private  String image;
    private String createUser;//创建者
    private Date createTime;//创建时间
    private Date updateTime;//修改时间
    private  Integer activitiId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getCreateUser() {
        return createUser;
    }

    public void setCreateUser(String createUser) {
        this.createUser = createUser;
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

    public Integer getActivitiId() {
        return activitiId;
    }

    public void setActivitiId(Integer activitiId) {
        this.activitiId = activitiId;
    }
}