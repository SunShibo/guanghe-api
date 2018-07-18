package com.guanghe.api.web.controller.manage;

import com.guanghe.api.entity.bo.CompanyCultrueBO;
import com.guanghe.api.service.CompanyCultrueService;
import com.guanghe.api.web.controller.base.BaseCotroller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by shishiming on 2018/7/18.
 */
@Controller
@RequestMapping("/companyCultrue")
public class CompanyCultrueController extends BaseCotroller {

    @Resource
    private CompanyCultrueService companyCultrueService;

    @RequestMapping("/list")
    public void queryCompanyCultrueList(HttpServletResponse response,Integer pageNo, Integer pageSize){
//        ModelAndView view = new ModelAndView();
//        pager = companyCultrueService.queryCompanyCultrueList( getQueryInfo(pageNo, pageSize));
//        view.setViewName("index");
//        view.addObject("lstBanner", pager.getDatas());
//        view.addObject("pager", pager);
//        return view;

        String result = companyCultrueService.queryCompanyCultrueList(getQueryInfo(pageNo, pageSize));
        safeTextPrint(response, result);

    }

    @RequestMapping("/detail")
    public void queryCompanyCultrueById(HttpServletResponse response,Integer newsId){
//        ModelAndView view = new ModelAndView();
//        view.setViewName("index");
//        view.addObject("news", companyCultrueService.queryCompanyCultrueById(newsId));
//        return view;

        String result = companyCultrueService.queryCompanyCultrueById(newsId);
        safeTextPrint(response, result);
    }

    @RequestMapping("/delete")
    public void deleteCompanyCultrue(HttpServletResponse response, Integer newsId){
        String result = companyCultrueService.deleteCompanyCultrue(newsId);
        safeTextPrint(response, result);
    }

    @RequestMapping("/add")
    public void addCompanyCultrue(HttpServletResponse response, CompanyCultrueBO companyCultrue){
        String result = companyCultrueService.addCompanyCultrue(companyCultrue);
        safeTextPrint(response, result);
    }

    @RequestMapping("/update")
    public void updateCompanyCultrue(HttpServletResponse response, CompanyCultrueBO companyCultrue){
        String result = companyCultrueService.updateCompanyCultrueBO(companyCultrue);
        safeTextPrint(response, result);
    }
}