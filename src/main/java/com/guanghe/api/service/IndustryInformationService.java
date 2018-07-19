package com.guanghe.api.service;

import com.guanghe.api.dao.IndustryInformationDao;
import com.guanghe.api.entity.bo.IndustryInformationBO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * Created by shishiming on 2018/7/18.
 */
@Service("industryInformationService")
@Transactional
public class IndustryInformationService {

    @Resource
    private IndustryInformationDao industryInformationDao;

    public List<IndustryInformationBO> queryIndustryInformationList( Map<String,Object> map){
        List<IndustryInformationBO> industryInformation = industryInformationDao.queryIndustryInformationList(map);
        return industryInformation;
    }

    public IndustryInformationBO queryIndustryInformationById(Integer newsId){
        return industryInformationDao.queryIndustryInformationById(newsId);
    }

    public void deleteIndustryInformation(Integer newsId){
        industryInformationDao.deleteIndustryInformation(newsId);
    }

    public void addIndustryInformation(IndustryInformationBO news){
        industryInformationDao.addIndustryInformationBO(news);
    }

    public void updateIndustryInformationBO(IndustryInformationBO news){
        industryInformationDao.updateIndustryInformationBO(news);
    }
}
