package com.guanghe.api.dao;

import java.util.List;
import java.util.Map;

/**
 * Created by shishiming on 2018/9/7.
 */
public interface SystemMessageDao {
    int getMessageCount(Integer userId);
    int getUnReadCount(Integer userId);
    List<Map<String,Object>> getMessageList(Integer userId);
    void addMessage(Map<String,Object> map);

    void setMessageStatus(Integer userId);
}
