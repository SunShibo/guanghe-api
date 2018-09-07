package com.guanghe.api.service;

import com.guanghe.api.dao.SystemMessageDao;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2018/2/28.
 */
@Service("systemMessageService")
@Transactional
public class SystemMessageService {
    @Resource
    private SystemMessageDao systemMessageDao;

    public int getMessageCount(Integer userId){
        return systemMessageDao.getMessageCount(userId);
    }
    public int getUnReadCount(Integer userId){
        return systemMessageDao.getUnReadCount(userId);
    }
    public List<Map<String,Object>> getMessageList(Integer userId){
        return systemMessageDao.getMessageList(userId);
    }

    public void addMessage(Map<String,Object> map){
        systemMessageDao.addMessage(map);
    }
    public void setMessageStatus(Integer userId){
        systemMessageDao.setMessageStatus(userId);
    }
}
