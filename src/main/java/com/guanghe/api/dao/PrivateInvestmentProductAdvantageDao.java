package com.guanghe.api.dao;

import com.guanghe.api.entity.bo.PrivateInvestmentProductAdvantageBO;

import java.util.List;

/**
 * Created by shishiming on 2018/7/18.
 */
public interface PrivateInvestmentProductAdvantageDao {

    public int queryProductAdvantageCount();

    public List<PrivateInvestmentProductAdvantageBO> queryProductAdvantageList();

    public PrivateInvestmentProductAdvantageBO queryProductAdvantageById(Integer id);

    public void deleteProductAdvantage(Integer id);

    public void addProductAdvantageBO(PrivateInvestmentProductAdvantageBO bo);

    public void updateProductAdvantageBO(PrivateInvestmentProductAdvantageBO bo);

}
