package com.guanghe.api.dao;

import com.guanghe.api.entity.bo.PrivateInvestmentCollectProductBO;

import java.util.List;

/**
 * Created by shishiming on 2018/7/18.
 */
public interface PrivateInvestmentCollectProductDao {

    public int queryCollectProductCount();

    public List<PrivateInvestmentCollectProductBO> queryCollectProductList();

    public PrivateInvestmentCollectProductBO queryCollectProductById(Integer id);

    public void deleteCollectProduct(Integer id);

    public void addCollectProductBO(PrivateInvestmentCollectProductBO bo);

    public void updateCollectProductBO(PrivateInvestmentCollectProductBO bo);

}
