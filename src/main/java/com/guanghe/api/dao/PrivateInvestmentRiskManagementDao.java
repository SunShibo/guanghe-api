package com.guanghe.api.dao;

import com.guanghe.api.entity.bo.PrivateInvestmentRiskManagementBO;

import java.util.List;

/**
 * Created by shishiming on 2018/7/18.
 */
public interface PrivateInvestmentRiskManagementDao {

    public int queryRiskManagementCount();

    public List<PrivateInvestmentRiskManagementBO> queryRiskManagementList();

    public PrivateInvestmentRiskManagementBO queryRiskManagementById(Integer id);

    public void deleteRiskManagement(Integer id);

    public void addRiskManagementBO(PrivateInvestmentRiskManagementBO bo);

    public void updateRiskManagementBO(PrivateInvestmentRiskManagementBO bo);

}
