package com.guanghe.api.dao;

import com.guanghe.api.entity.bo.WealthManagementDetailsBO;

/**
 * Created by shishiming on 2018/7/23.
 */
public interface WealthManagementDetailsDao {

    //修改WealthManagementDetails byId
    void updateWealthManagement(WealthManagementDetailsBO wealthManagementDetailsBO);

    //查询WealthManagementDetailsById
    WealthManagementDetailsBO queryWealthManagementDetails();
}
