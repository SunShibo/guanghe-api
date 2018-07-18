package com.guanghe.api.service;

import com.guanghe.api.dao.IndustryInformationDao;
import com.guanghe.api.entity.bo.IndustryInformationBO;
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
@Service("industryInformationService")
@Transactional
public class IndustryInformationService {

    @Resource
    private IndustryInformationDao industryInformationDao;

    public String queryIndustryInformationList( QueryInfo queryInfo){
        Map<String, Object> map = new HashMap<String, Object>();
////        if(type != null){
////            map.put("type", type);
////        }
        if(queryInfo != null){
            map.put("pageOffset", queryInfo.getPageOffset());
            map.put("pageSize", queryInfo.getPageSize());
        }
//        PageObjectUtil<IndustryInformationBO> page = new PageObjectUtil<IndustryInformationBO>();
//        return page.savePageObject(industryInformationDao.queryIndustryInformationCount(map), industryInformationDao.queryIndustryInformationList(map), queryInfo);

        List<IndustryInformationBO> industryInformation = industryInformationDao.queryIndustryInformationList(map);
        JSONObject jo = new JSONObject();
        jo.put("industryInformation", JsonUtils.getJsonString4JavaListDate(industryInformation, DateUtils.LONG_DATE_PATTERN));

        Integer count = industryInformationDao.queryIndustryInformationCount(map);
        jo.put("count",count);

        return JsonUtils.encapsulationJSON(Constant.INTERFACE_SUCC, "查询成功", jo.toString()).toString();
    }

    public String queryIndustryInformationById(Integer newsId){
//        return industryInformationDao.queryIndustryInformationById(newsId);

        IndustryInformationBO news = industryInformationDao.queryIndustryInformationById(newsId);
        if (news == null){
            return JsonUtils.encapsulationJSON(Constant.INTERFACE_SUCC, "查询成功", "没有该news").toString();
        }

        JSONObject jo = new JSONObject();
        jo.put("news", news);
        return JsonUtils.encapsulationJSON(Constant.INTERFACE_SUCC, "查询成功", jo.toString()).toString();
    }

    public String deleteIndustryInformation(Integer newsId){
        if(newsId == null){
            return JsonUtils.encapsulationJSON(Constant.INTERFACE_PARAM_ERROR, "参数有误", "").toString();
        }
        IndustryInformationBO news = industryInformationDao.queryIndustryInformationById(newsId);
        if(news == null){
            return JsonUtils.encapsulationJSON(Constant.INTERFACE_FAIL, "news不存在", "").toString();
        }
        industryInformationDao.deleteIndustryInformation(newsId);
        return JsonUtils.encapsulationJSON(Constant.INTERFACE_SUCC, "删除成功", "").toString();
    }

    public String addIndustryInformation(IndustryInformationBO news){
        if(news == null){
            return JsonUtils.encapsulationJSON(Constant.INTERFACE_PARAM_ERROR, "参数有误", "").toString();
        }
        if(StringUtils.isEmpty(news.getTitle()) || StringUtils.isEmpty(news.getHeadTitle())
                 || StringUtils.isEmpty(news.getSource()) || StringUtils.isEmpty(news.getContent())
                || StringUtils.isEmpty(news.getCreateNewsUser())){
            return JsonUtils.encapsulationJSON(Constant.INTERFACE_PARAM_ERROR, "参数有误", "").toString();
        }
        industryInformationDao.addIndustryInformationBO(news);
        return JsonUtils.encapsulationJSON(Constant.INTERFACE_SUCC, "添加news成功", "").toString();
    }

    public String updateIndustryInformationBO(IndustryInformationBO news){
        if(news == null){
            return JsonUtils.encapsulationJSON(Constant.INTERFACE_PARAM_ERROR, "参数有误", "").toString();
        }
        if(StringUtils.isEmpty(news.getTitle()) || StringUtils.isEmpty(news.getHeadTitle())
                || StringUtils.isEmpty(news.getSource()) || StringUtils.isEmpty(news.getContent())
                || StringUtils.isEmpty(news.getCreateNewsUser()) || news.getId() == null){
            return JsonUtils.encapsulationJSON(Constant.INTERFACE_PARAM_ERROR, "参数有误", "").toString();
        }
        IndustryInformationBO newsDetail = industryInformationDao.queryIndustryInformationById(news.getId());
        if(newsDetail == null){
            return JsonUtils.encapsulationJSON(Constant.INTERFACE_FAIL, "news不存在", "").toString();
        }
        newsDetail.setTitle(news.getTitle());
        newsDetail.setHeadTitle(news.getHeadTitle());
        newsDetail.setSource(news.getSource());
        newsDetail.setContent(news.getContent());
        newsDetail.setCreateNewsUser(news.getCreateNewsUser());
        industryInformationDao.updateIndustryInformationBO(newsDetail);
        return JsonUtils.encapsulationJSON(Constant.INTERFACE_SUCC, "修改news成功", "").toString();
    }
}
