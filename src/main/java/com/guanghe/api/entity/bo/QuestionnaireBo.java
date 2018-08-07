package com.guanghe.api.entity.bo;

import com.guanghe.api.common.base.BaseModel;

import java.util.Date;

/**
 * Created by shishiming on 2018/8/7.
 */
public class QuestionnaireBo extends BaseModel{

    private Integer id;//id
    private Integer userId;//用户id
    private Integer score;//分数
    private Date createTime;//创建时间

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

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}
