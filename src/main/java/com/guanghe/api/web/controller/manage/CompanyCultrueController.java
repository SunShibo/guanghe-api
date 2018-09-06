package com.guanghe.api.web.controller.manage;

import com.guanghe.api.entity.bo.CompanyCultrueBO;
import com.guanghe.api.entity.dto.ResultDTOBuilder;
import com.guanghe.api.pop.SystemConfig;
import com.guanghe.api.query.QueryInfo;
import com.guanghe.api.service.CompanyCultrueService;
import com.guanghe.api.util.JsonUtils;
import com.guanghe.api.util.StringUtils;
import com.guanghe.api.web.controller.base.BaseCotroller;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by shishiming on 2018/7/18.
 */
@Controller
@RequestMapping("/companyCultrue")
public class CompanyCultrueController extends BaseCotroller {

    @Resource
    private CompanyCultrueService companyCultrueService;

    @RequestMapping("/infoPc")
    public  void  queryCompanyCultrue(HttpServletResponse response){
        CompanyCultrueBO news =companyCultrueService.queryCompanyCultruePc();
        if (news == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
            return;
        }
        JSONObject result = new JSONObject();
        result.put("CompanyCultrueBO", news);
        result.put("Url","https://" + SystemConfig.getString("image_bucketName")+".oss-cn-beijing.aliyuncs.com/");
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(result));
        safeTextPrint(response, json);
    }
    @RequestMapping("/infoWap")
    public  void  queryCompanyCultruewap(HttpServletResponse response){
        List<CompanyCultrueBO> news =companyCultrueService.queryCompanyCultrueWap();
        if (news == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
            return;
        }
        JSONObject result = new JSONObject();
        result.put("CompanyCultrue", news);
        result.put("Url","https://" + SystemConfig.getString("image_bucketName")+".oss-cn-beijing.aliyuncs.com/");
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(result));
        safeTextPrint(response, json);
    }
    /**
     * 获取公司文化
     * @param newsId
     */
    @RequestMapping("/detail")
    public void queryCompanyCultrueById(HttpServletResponse response,Integer newsId){

        if (newsId == null){
            return;
        }

        CompanyCultrueBO news = companyCultrueService.queryCompanyCultrueById(newsId);
        if (news == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
            return;
        }

        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(news));
        safeTextPrint(response, json);

    }

    /**
     * 删除公司文化
     * @param newsId
     */
    @RequestMapping("/delete")
    public void deleteCompanyCultrue(HttpServletResponse response, Integer newsId){
        if (newsId == null){
            return;
        }

        CompanyCultrueBO news = companyCultrueService.queryCompanyCultrueById(newsId);
        if (news == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
            return;
        }
        companyCultrueService.deleteCompanyCultrue(newsId);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);

    }


    /**
     * 添加公司文化
     * @param news
     */
    @RequestMapping("/add")
    public void addCompanyCultrue(HttpServletResponse response, CompanyCultrueBO news){

        if(news == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }
        if(StringUtils.isEmpty(news.getTitle()) || StringUtils.isEmpty(news.getHeadTitle())
                || StringUtils.isEmpty(news.getSource()) || StringUtils.isEmpty(news.getContent())
                || StringUtils.isEmpty(news.getCreateNewsUser())){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }
        companyCultrueService.addCompanyCultrue(news);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);
    }


    /**
     * 修改公司文化
     * @param news
     */
    @RequestMapping("/update")
    public void updateCompanyCultrue(HttpServletResponse response, CompanyCultrueBO news){

        CompanyCultrueBO newsDetail = companyCultrueService.queryCompanyCultrueById(news.getId());

        if(news == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }
        if(StringUtils.isEmpty(news.getTitle()) || StringUtils.isEmpty(news.getHeadTitle())
                || StringUtils.isEmpty(news.getSource()) || StringUtils.isEmpty(news.getContent())
                || StringUtils.isEmpty(news.getCreateNewsUser()) || news.getId() == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }
        if(newsDetail == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
            return;
        }
        newsDetail.setTitle(news.getTitle());
        newsDetail.setHeadTitle(news.getHeadTitle());
        newsDetail.setSource(news.getSource());
        newsDetail.setContent(news.getContent());
        newsDetail.setCreateNewsUser(news.getCreateNewsUser());

        companyCultrueService.updateCompanyCultrueBO(newsDetail);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);

    }
}