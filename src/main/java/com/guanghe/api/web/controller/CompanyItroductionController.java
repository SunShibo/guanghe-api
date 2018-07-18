package com.guanghe.api.web.controller;

import com.guanghe.api.entity.bo.BigEvent;
import com.guanghe.api.entity.bo.CompanyIntroduction;
import com.guanghe.api.service.CompanyItroductionService;
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
        String result = companyItroductionService.deleteCompanyItroduction(id);
        safeJsonPrint(response, result);
    }

    @RequestMapping("/add")
    public void addBigECompanyItroduction (HttpServletResponse response, CompanyIntroduction companyIntroduction){
        String result = companyItroductionService.addCompanyItroduction(companyIntroduction);
        safeJsonPrint(response, result);
    }

    @RequestMapping("/update")
    public void updateCompanyItroduction (HttpServletResponse response,CompanyIntroduction companyIntroduction){
        String result = companyItroductionService.updateCompanyItroduction(companyIntroduction);
        safeJsonPrint(response, result);
    }
    @RequestMapping("/detail")
    public void queryCompanyItroduction (HttpServletResponse response, Integer id){
        String result = companyItroductionService.queryCompanyItroduction( id);
        safeJsonPrint(response, result);
    }
}
