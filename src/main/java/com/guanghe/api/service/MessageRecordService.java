package com.guanghe.api.service;

import com.guanghe.api.dao.MessageRecordDao;
import com.guanghe.api.entity.bo.MessageRecordBO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * Created by shishiming on 2018/7/18.
 */
@Service("messageRecordService")
@Transactional
public class MessageRecordService {

    @Resource
    private MessageRecordDao messageRecordDao;

    public int addMessageRecord(MessageRecordBO messageRecordBO){
        if (messageRecordBO == null){
            return -1;
        }
        return messageRecordDao.addMessageRecord(messageRecordBO);
    }

}
