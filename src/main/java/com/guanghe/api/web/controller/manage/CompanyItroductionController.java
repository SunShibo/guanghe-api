package com.guanghe.api.web.controller.manage;

import com.guanghe.api.entity.bo.CompanyIntroductionBo;
import com.guanghe.api.entity.dto.ResultDTOBuilder;
import com.guanghe.api.service.CompanyItroductionService;
import com.guanghe.api.util.JsonUtils;
import com.guanghe.api.util.StringUtils;
import com.guanghe.api.web.controller.base.BaseCotroller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;

/**
 * Created by yxw on 2018/7/18.
 */
@Controller
@RequestMapping("/CompanyItroduction")
public class CompanyItroductionController extends BaseCotroller {
    @Autowired
    private CompanyItroductionService companyItroductionService;
    @RequestMapping("/delete")
    public void deleteCompanyItroduction(HttpServletResponse response, Integer id){
        if (id == null || id == 0 ) {
            return;
        }
        CompanyIntroductionBo news =companyItroductionService.queryCompanyItroduction(id);

        if (news == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
        }else {
            companyItroductionService.deleteCompanyItroduction(id);
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
            safeJsonPrint(response, json);
        }
    }

    @RequestMapping("/add")
    public void addBigECompanyItroduction (HttpServletResponse response, CompanyIntroductionBo news){
        if(news == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        }else if(StringUtils.isEmpty(news.getTitle())
                || StringUtils.isEmpty(news.getSource()) || StringUtils.isEmpty(news.getCompanyIntroduction())
                || StringUtils.isEmpty(news.getCreateUser())){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        }else{
            companyItroductionService.addCompanyItroduction(news);
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
            safeTextPrint(response, json);
        }
    }

    @RequestMapping("/update")
    public void updateCompanyItroduction (HttpServletResponse response,CompanyIntroductionBo news) {
        CompanyIntroductionBo newsDetail = companyItroductionService.queryCompanyItroduction(news.getId());

        if (news == null) {
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        } else if (StringUtils.isEmpty(news.getTitle())
                || StringUtils.isEmpty(news.getSource()) || StringUtils.isEmpty(news.getCompanyIntroduction())
                || StringUtils.isEmpty(news.getCreateUser()) || news.getId() == null) {
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        } else if (newsDetail == null) {
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
        } else {
            newsDetail.setTitle(news.getTitle());
            newsDetail.setCompanyIntroduction(news.getCompanyIntroduction());
            newsDetail.setSource(news.getSource());
            newsDetail.setImage(news.getImage());
            newsDetail.setCreateUser(news.getCreateUser());
            companyItroductionService.updateCompanyItroduction(newsDetail);
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
            safeTextPrint(response, json);
        }
    }

        @RequestMapping("/detail")
    public void queryCompanyItroduction (HttpServletResponse response, Integer id){
            if (id == null){
                return;
            }

            CompanyIntroductionBo news = companyItroductionService.queryCompanyItroduction(id);
            if (news == null){
                String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
                safeTextPrint(response, json);
            }else{
                String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(news));
                safeTextPrint(response, json);

            }
        }
}