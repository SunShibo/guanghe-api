package com.guanghe.api.service;

import com.guanghe.api.dao.CompanyCultrueDao;
import com.guanghe.api.entity.bo.CompanyCultrueBO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * Created by shishiming on 2018/7/18.
 */
@Service("companyCultrueService")
@Transactional
public class CompanyCultrueService {

    @Resource
    private CompanyCultrueDao companyCultrueDao;

    public List<CompanyCultrueBO> queryCompanyCultrueList( Map<String,Object> map){
        List<CompanyCultrueBO> companyCultrue = companyCultrueDao.queryCompanyCultrueList(map);
        return companyCultrue;

    }

    public CompanyCultrueBO queryCompanyCultrueById(Integer newsId){
        return companyCultrueDao.queryCompanyCultrueById(newsId);
    }

    public void deleteCompanyCultrue(Integer newsId){
        companyCultrueDao.deleteCompanyCultrue(newsId);
    }

    public void addCompanyCultrue(CompanyCultrueBO news){
        companyCultrueDao.addCompanyCultrueBO(news);
    }

    public void updateCompanyCultrueBO(CompanyCultrueBO news){
        companyCultrueDao.updateCompanyCultrueBO(news);
    }
}
