package com.guanghe.api.service;

import com.guanghe.api.dao.NewsInformationDao;
import com.guanghe.api.entity.bo.NewsInformationBO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * Created by shishiming on 2018/7/18.
 */
@Service("newsInformationService")
@Transactional
public class NewsInformationService {

    @Resource
    private NewsInformationDao newsInformationDao;

    public List<NewsInformationBO> queryNewsInformationList(Map<String,Object> map){
        List<NewsInformationBO> newsInformation = newsInformationDao.queryNewsInformationList(map);
        return newsInformation;

    }

    public NewsInformationBO queryNewsInformationById(Integer newsId){

        NewsInformationBO news = newsInformationDao.queryNewsInformationById(newsId);
        return news;
    }

    public void deleteNewsInformation(Integer newsId){
        newsInformationDao.deleteNewsInformation(newsId);
    }

    public void addNewsInformation(NewsInformationBO news){
        newsInformationDao.addNewsInformationBO(news);
    }

    public void updateNewsInformationBO(NewsInformationBO news){
        newsInformationDao.updateNewsInformationBO(news);
    }
}
