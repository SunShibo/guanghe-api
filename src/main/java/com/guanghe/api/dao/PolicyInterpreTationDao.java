package com.guanghe.api.dao;

import com.guanghe.api.entity.bo.NewsInformationBO;
import com.guanghe.api.entity.bo.PolicyInterpreTationBo;

import java.util.List;
import java.util.Map;

/**
 * Created by yxw on 2018/7/31.
 */
/*
政策解读
*/
public interface PolicyInterpreTationDao {
    public int queryPolicyInterpreTationCount();

    public List<PolicyInterpreTationBo> queryPolicyInterpreTationList(Map<String, Object> map);

    public PolicyInterpreTationBo queryPolicyInterpreTationById(Integer newId);

    public void deletePolicyInterpreTation(Integer newId);

    public void addPolicyInterpreTation(PolicyInterpreTationBo news);

    public void updatePolicyInterpreTation(PolicyInterpreTationBo news);

}
