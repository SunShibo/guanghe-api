package com.guanghe.api.dao;

import com.guanghe.api.entity.bo.BigEvent;

/**
 * Created by yxw on 2018/7/18.
 */
public interface BigEventDao {
    public BigEvent queryBigEvent(Integer id);
    public void updateBigEvent(BigEvent bigEvent);
    public  void addBigEvent(BigEvent bigEvent);
    public void deleteBigEvent(Integer Id);
}
