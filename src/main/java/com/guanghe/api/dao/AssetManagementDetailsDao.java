package com.guanghe.api.dao;

import com.guanghe.api.entity.bo.AssetManagementDetailsBO;

import java.util.List;

/**
 * Created by shishiming on 2018/7/23.
 */
public interface AssetManagementDetailsDao {

    //修改AssetManagementDetails
    void updateAssetManagement();
    //查询AssetManagementDetails
    AssetManagementDetailsBO queryAssetManagementDetails();
    List<AssetManagementDetailsBO> queryAssetManagementDetailsWap();
}
