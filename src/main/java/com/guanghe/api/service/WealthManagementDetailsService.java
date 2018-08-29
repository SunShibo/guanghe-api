package com.guanghe.api.service;

import com.guanghe.api.dao.WealthManagementDetailsDao;
import com.guanghe.api.entity.bo.WealthManagementDetailsBO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * Created by shishiming on 2018/7/23.
 */
@Service("wealthManagementDetailsService")
@Transactional
public class WealthManagementDetailsService {

    @Resource
    private WealthManagementDetailsDao wealthManagementDetailsDao;


    //修改WealthManagementDetails byId
    public void updateWealthManagementbyId(WealthManagementDetailsBO wealthManagementDetailsBO){
        if (wealthManagementDetailsBO.getId() == null || wealthManagementDetailsBO.getId() == 0){
            return;
        }
        wealthManagementDetailsDao.updateWealthManagement(wealthManagementDetailsBO);
    }


    //查询WealthManagementDetailsById
    public WealthManagementDetailsBO queryWealthManagementDetails(){
        return wealthManagementDetailsDao.queryWealthManagementDetails();
    }
}
