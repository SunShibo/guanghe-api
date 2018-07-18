package com.guanghe.api.service;

import com.guanghe.api.dao.NewsInformationDao;
import com.guanghe.api.entity.bo.CompanyCultrueBO;
import com.guanghe.api.entity.bo.NewsInformationBO;
import com.guanghe.api.pop.Constant;
import com.guanghe.api.query.QueryInfo;
import com.guanghe.api.util.DateUtils;
import com.guanghe.api.util.JsonUtils;
import com.guanghe.api.util.StringUtils;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.HashMap;
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

    public String queryNewsInformationList( QueryInfo queryInfo){
        Map<String, Object> map = new HashMap<String, Object>();
//        if(type != null){
//            map.put("type", type);
//        }
        if(queryInfo != null){
            map.put("pageOffset", queryInfo.getPageOffset());
            map.put("pageSize", queryInfo.getPageSize());
        }
//        PageObjectUtil<NewsInformationBO> page = new PageObjectUtil<NewsInformationBO>();
//        return page.savePageObject(newsInformationDao.queryNewsInformationCount(map), newsInformationDao.queryNewsInformationList(map), queryInfo);


        List<NewsInformationBO> newsInformation = newsInformationDao.queryNewsInformationList(map);
        JSONObject jo = new JSONObject();
        jo.put("newsInformations", JsonUtils.getJsonString4JavaListDate(newsInformation, DateUtils.LONG_DATE_PATTERN));

        Integer count = newsInformationDao.queryNewsInformationCount(map);
        jo.put("count",count);

        return JsonUtils.encapsulationJSON(Constant.INTERFACE_SUCC, "查询成功", jo.toString()).toString();

    }

    public String queryNewsInformationById(Integer newsId){
//        return newsInformationDao.queryNewsInformationById(newsId);

        NewsInformationBO news = newsInformationDao.queryNewsInformationById(newsId);
        if (news == null){
            return JsonUtils.encapsulationJSON(Constant.INTERFACE_SUCC, "查询成功", "没有该news").toString();
        }

        JSONObject jo = new JSONObject();
        jo.put("news", news);
        return JsonUtils.encapsulationJSON(Constant.INTERFACE_SUCC, "查询成功", jo.toString()).toString();
    }

    public String deleteNewsInformation(Integer newsId){
        if(newsId == null){
            return JsonUtils.encapsulationJSON(Constant.INTERFACE_PARAM_ERROR, "参数有误", "").toString();
        }
        NewsInformationBO news = newsInformationDao.queryNewsInformationById(newsId);
        if(news == null){
            return JsonUtils.encapsulationJSON(Constant.INTERFACE_FAIL, "news不存在", "").toString();
        }
        newsInformationDao.deleteNewsInformation(newsId);
        return JsonUtils.encapsulationJSON(Constant.INTERFACE_SUCC, "删除成功", "").toString();
    }

    public String addNewsInformation(NewsInformationBO news){
        if(news == null){
            return JsonUtils.encapsulationJSON(Constant.INTERFACE_PARAM_ERROR, "参数有误", "").toString();
        }
        if(StringUtils.isEmpty(news.getTitle()) || StringUtils.isEmpty(news.getHeadTitle())
                 || StringUtils.isEmpty(news.getSource()) || StringUtils.isEmpty(news.getContent())
                || StringUtils.isEmpty(news.getCreateNewsUser())){
            return JsonUtils.encapsulationJSON(Constant.INTERFACE_PARAM_ERROR, "参数有误", "").toString();
        }
        newsInformationDao.addNewsInformationBO(news);
        return JsonUtils.encapsulationJSON(Constant.INTERFACE_SUCC, "添加news成功", "").toString();
    }

    public String updateNewsInformationBO(NewsInformationBO news){
        if(news == null){
            return JsonUtils.encapsulationJSON(Constant.INTERFACE_PARAM_ERROR, "参数有误", "").toString();
        }
        if(StringUtils.isEmpty(news.getTitle()) || StringUtils.isEmpty(news.getHeadTitle())
                || StringUtils.isEmpty(news.getSource()) || StringUtils.isEmpty(news.getContent())
                || StringUtils.isEmpty(news.getCreateNewsUser()) || news.getId() == null){
            return JsonUtils.encapsulationJSON(Constant.INTERFACE_PARAM_ERROR, "参数有误", "").toString();
        }
        NewsInformationBO newsDetail = newsInformationDao.queryNewsInformationById(news.getId());
        if(newsDetail == null){
            return JsonUtils.encapsulationJSON(Constant.INTERFACE_FAIL, "news不存在", "").toString();
        }
        newsDetail.setTitle(news.getTitle());
        newsDetail.setHeadTitle(news.getHeadTitle());
        newsDetail.setSource(news.getSource());
        newsDetail.setContent(news.getContent());
        newsDetail.setCreateNewsUser(news.getCreateNewsUser());
        newsInformationDao.updateNewsInformationBO(newsDetail);
        return JsonUtils.encapsulationJSON(Constant.INTERFACE_SUCC, "修改news成功", "").toString();
    }
}
