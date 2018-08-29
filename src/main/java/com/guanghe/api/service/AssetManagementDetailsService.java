package com.guanghe.api.service;

import com.guanghe.api.dao.AssetManagementDetailsDao;
import com.guanghe.api.entity.bo.AssetManagementDetailsBO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * Created by shishiming on 2018/7/23.
 */
@Service("assetManagementDetailsService")
@Transactional
public class AssetManagementDetailsService {

    @Resource
    private AssetManagementDetailsDao assetManagementDetailsDao;


    //修改AssetManagementDetails
    public void updateAssetManagement(){
        assetManagementDetailsDao.updateAssetManagement();
    }

    //查询AssetManagementDetailsById
    public AssetManagementDetailsBO queryAssetManagementDetails(){
        return assetManagementDetailsDao.queryAssetManagementDetails();
    }
}
