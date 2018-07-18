package com.guanghe.api.entity.bo;

import com.guanghe.api.common.base.BaseModel;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by yxw on 2018/7/18.
 */
public class AdeminBo extends BaseModel implements Serializable {
    private int id;		// ID
    private  String password; //密码
    private  String account; //账户
    private  Date update_time;//修改时间
    private Date create_time;//创建时间

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
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
}
