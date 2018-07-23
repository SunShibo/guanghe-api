package com.guanghe.api.dao;

import com.guanghe.api.entity.bo.AssetManagementDetailsBO;

import java.util.List;
import java.util.Map;

/**
 * Created by shishiming on 2018/7/23.
 */
public interface AssetManagementDetailsDao {
    //添加AssetManagementDetails
    int addAssetManagement(AssetManagementDetailsBO assetManagementDetailsBO);
    //删除AssetManagementDetails byId
    void deleteAssetManagementbyId(Integer id);
    //修改AssetManagementDetails byId
    void updateAssetManagementbyId(AssetManagementDetailsBO assetManagementDetailsBO);
    //查询AssetManagementDetailsList
    List<AssetManagementDetailsBO> queryAssetManagementDetailsList(Map<String, Object> map);
    //查询AssetManagementDetailsById
    AssetManagementDetailsBO queryAssetManagementDetailsById(Integer id);
}
