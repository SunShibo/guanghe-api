package com.guanghe.api.dao;

import com.guanghe.api.entity.bo.BigEventBo;

/**
 * Created by yxw on 2018/7/18.
 */
public interface BigEventDao {
    public BigEventBo queryBigEvent(Integer id);
    public void updateBigEvent(BigEventBo bigEvent);
    public  void addBigEvent(BigEventBo bigEvent);
    public void deleteBigEvent(Integer Id);
}
