package com.guanghe.api.web.controller.manage;

import com.guanghe.api.entity.bo.IndustryInformationBO;
import com.guanghe.api.service.IndustryInformationService;
import com.guanghe.api.web.controller.base.BaseCotroller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by shishiming on 2018/7/18.
 */
@Controller
@RequestMapping("/industryInformation")
public class IndustryInformationController extends BaseCotroller {

    @Resource
    private IndustryInformationService industryInformationService;

    @RequestMapping("/list")
    public void queryIndustryInformationList(HttpServletResponse response,Integer pageNo, Integer pageSize){
//        ModelAndView view = new ModelAndView();
//        pager = industryInformationService.queryIndustryInformationList( getQueryInfo(pageNo, pageSize));
//        view.setViewName("index");
//        view.addObject("lstBanner", pager.getDatas());
//        view.addObject("pager", pager);
//        return view;

        String result = industryInformationService.queryIndustryInformationList(getQueryInfo(pageNo, pageSize));
        safeTextPrint(response, result);
    }

    @RequestMapping("/detail")
    public void queryIndustryInformationById(HttpServletResponse response,Integer newsId){
//        ModelAndView view = new ModelAndView();
//        view.setViewName("index");
//        view.addObject("news", industryInformationService.queryIndustryInformationById(newsId));
//        return view;

        String result = industryInformationService. queryIndustryInformationById(newsId);
        safeTextPrint(response, result);
    }

    @RequestMapping("/delete")
    public void deleteIndustryInformation(HttpServletResponse response, Integer newsId){
        String result = industryInformationService.deleteIndustryInformation(newsId);
        safeTextPrint(response, result);
    }

    @RequestMapping("/add")
    public void addIndustryInformation(HttpServletResponse response, IndustryInformationBO industryInformation){
        String result = industryInformationService.addIndustryInformation(industryInformation);
        safeTextPrint(response, result);
    }

    @RequestMapping("/update")
    public void updateIndustryInformation(HttpServletResponse response, IndustryInformationBO industryInformation){
        String result = industryInformationService.updateIndustryInformationBO(industryInformation);
        safeTextPrint(response, result);
    }
}