package com.guanghe.api.dao;

import com.guanghe.api.entity.bo.IndustryInformationBO;
import com.guanghe.api.entity.bo.NewsInformationBO;

import java.util.List;
import java.util.Map;

/**
 * Created by shishiming on 2018/7/18.
 */
public interface IndustryInformationDao {

    public int queryIndustryInformationCount(Map<String, Object> map);

    public List<IndustryInformationBO> queryIndustryInformationList(Map<String, Object> map);

    public IndustryInformationBO queryIndustryInformationById(Integer newId);

    public void deleteIndustryInformation(Integer newId);

    public void addIndustryInformationBO(IndustryInformationBO news);

    public void updateIndustryInformationBO(IndustryInformationBO news);

}
