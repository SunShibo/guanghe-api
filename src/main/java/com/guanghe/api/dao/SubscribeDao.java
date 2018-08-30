package com.guanghe.api.dao;

import com.guanghe.api.entity.bo.SubscribeBo;

import java.util.List;
import java.util.Map;

/**
 * Created by shishiming on 2018/8/30.
 */
public interface SubscribeDao {
    //添加产品预约
    int addSubscribe(SubscribeBo subscribeBo);
    //查找投资明细
    int getSubscribeCount(Map<String,Object> map);
    //查找投资明细
    List<SubscribeBo> getSubscribeList(Map<String,Object> map);
}
