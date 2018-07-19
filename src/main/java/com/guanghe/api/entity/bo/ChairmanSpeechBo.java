package com.guanghe.api.entity.bo;

import java.util.Date;

/**
 * Created by yxw on 2018/7/18.
 */
public class ChairmanSpeechBo {
    private  Integer id;//ID
    private  String chairmanTpeech;//董事长致辞
    private Date createTime;//创建时间
    private  Date updateTime;//修改时间
    private  String sourse;//来源
    private  String image;//图片
    private  String title;//标题
    private  String createUser;//创建用户
    private  String updateUser;//修改用户

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getChairmanTpeech() {
        return chairmanTpeech;
    }

    public void setChairmanTpeech(String chairmanTpeech) {
        this.chairmanTpeech = chairmanTpeech;
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

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getSourse() {
        return sourse;
    }

    public void setSourse(String sourse) {
        this.sourse = sourse;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
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
}