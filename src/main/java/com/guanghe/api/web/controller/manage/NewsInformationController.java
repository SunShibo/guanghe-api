package com.guanghe.api.web.controller.manage;

import com.guanghe.api.entity.bo.NewsInformationBO;
import com.guanghe.api.service.NewsInformationService;
import com.guanghe.api.web.controller.base.BaseCotroller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by shishiming on 2018/7/18.
 */
@Controller
@RequestMapping("/newsInformation")
public class NewsInformationController extends BaseCotroller {

    @Resource
    private NewsInformationService newsInformationService;

    @RequestMapping("/list")
    public void queryNewsInformationList(HttpServletResponse response,Integer pageNo, Integer pageSize){
//        ModelAndView view = new ModelAndView();
//        pager = newsInformationService.queryNewsInformationList(getQueryInfo(pageNo, pageSize));
//        view.setViewName("index");
//        view.addObject("lstBanner", pager.getDatas());
//        view.addObject("pager", pager);
//        return view;

        String result = newsInformationService.queryNewsInformationList(getQueryInfo(pageNo, pageSize));
        safeTextPrint(response, result);
    }

    @RequestMapping("/detail")
    public void queryNewsInformationById(HttpServletResponse response,Integer newsId){
//        ModelAndView view = new ModelAndView();
//        view.setViewName("index");
//        view.addObject("news", newsInformationService.queryNewsInformationById(newsId));
//        return view;
        String result = newsInformationService.queryNewsInformationById(newsId);
        safeTextPrint(response, result);
    }

    @RequestMapping("/delete")
    public void deleteNewsInformation(HttpServletResponse response, Integer newsId){
        String result = newsInformationService.deleteNewsInformation(newsId);
        safeTextPrint(response, result);
    }

    @RequestMapping("/add")
    public void addNewsInformation(HttpServletResponse response, NewsInformationBO newsInformation){
        String result = newsInformationService.addNewsInformation(newsInformation);
        safeTextPrint(response, result);
    }

    @RequestMapping("/update")
    public void updateNewsInformation(HttpServletResponse response, NewsInformationBO newsInformation){
        String result = newsInformationService.updateNewsInformationBO(newsInformation);
        safeTextPrint(response, result);
    }
}