package com.guanghe.api.entity.bo;

import java.util.Date;

/**
 * Created by yxw on 2018/7/18.
 */
public class CompanyIntroduction {
    private Integer id;//ID
    private String company_introduction;//公司介绍
    private Date create_time;//创建时间
    private Date update_time;//修改时间
    private String sourse;//来源
    private String image;//图片
    private String title;//标题
    private String create_user;//创建用户
    private String update_user;//修改用户

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCompany_introduction() {
        return company_introduction;
    }

    public void setCompany_introduction(String company_introduction) {
        this.company_introduction = company_introduction;
    }

    public Date getCreate_time() {
        return create_time;
    }

    public void setCreate_time(Date create_time) {
        this.create_time = create_time;
    }

    public Date getUpdate_time() {
        return update_time;
    }

    public void setUpdate_time(Date update_time) {
        this.update_time = update_time;
    }

    public String getSourse() {
        return sourse;
    }

    public void setSourse(String sourse) {
        this.sourse = sourse;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getCreate_user() {
        return create_user;
    }

    public void setCreate_user(String create_user) {
        this.create_user = create_user;
    }

    public String getUpdate_user() {
        return update_user;
    }

    public void setUpdate_user(String update_user) {
        this.update_user = update_user;
    }
}
