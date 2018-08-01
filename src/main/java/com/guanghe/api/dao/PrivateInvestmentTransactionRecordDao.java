package com.guanghe.api.dao;

import com.guanghe.api.entity.bo.PrivateInvestmentTransactionRecordBO;

import java.util.List;

/**
 * Created by shishiming on 2018/7/18.
 */
public interface PrivateInvestmentTransactionRecordDao {

    public int queryTransactionRecordCount();

    public List<PrivateInvestmentTransactionRecordBO> queryTransactionRecordList();

    public PrivateInvestmentTransactionRecordBO queryTransactionRecordById(Integer id);

    public void deleteTransactionRecord(Integer id);

    public void addTransactionRecordBO(PrivateInvestmentTransactionRecordBO bo);

    public void updateTransactionRecordBO(PrivateInvestmentTransactionRecordBO bo);

}
