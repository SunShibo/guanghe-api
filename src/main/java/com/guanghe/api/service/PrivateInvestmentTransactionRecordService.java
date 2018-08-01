package com.guanghe.api.service;

import com.guanghe.api.dao.PrivateInvestmentTransactionRecordDao;
import com.guanghe.api.entity.bo.PrivateInvestmentTransactionRecordBO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by shishiming on 2018/7/18.
 */
@Service("privateInvestmentTransactionRecordService")
@Transactional
public class PrivateInvestmentTransactionRecordService {

    @Resource
    private PrivateInvestmentTransactionRecordDao privateInvestmentTransactionRecordDao;

    public int queryPrivateInvestmentTransactionRecordCount(){
        return privateInvestmentTransactionRecordDao.queryTransactionRecordCount();
    }

    public List<PrivateInvestmentTransactionRecordBO> queryPrivateInvestmentTransactionRecordList(){
        List<PrivateInvestmentTransactionRecordBO> privateInvestmentTransactionRecord = privateInvestmentTransactionRecordDao.queryTransactionRecordList();
        return privateInvestmentTransactionRecord;

    }

    public PrivateInvestmentTransactionRecordBO queryPrivateInvestmentTransactionRecordById(Integer id){
        if (id == null){
            return null;
        }
        PrivateInvestmentTransactionRecordBO bo = privateInvestmentTransactionRecordDao.queryTransactionRecordById(id);
        return bo;
    }

    public void deletePrivateInvestmentTransactionRecord(Integer id){
        if (id == null){
            return ;
        }
        privateInvestmentTransactionRecordDao.deleteTransactionRecord(id);
    }

    public void addPrivateInvestmentTransactionRecord(PrivateInvestmentTransactionRecordBO bo){
        if (bo == null){
            return ;
        }
        privateInvestmentTransactionRecordDao.addTransactionRecordBO(bo);
    }

    public void updatePrivateInvestmentTransactionRecordBO(PrivateInvestmentTransactionRecordBO bo){
        if (bo == null){
            return ;
        }
        privateInvestmentTransactionRecordDao.updateTransactionRecordBO(bo);
    }

}
