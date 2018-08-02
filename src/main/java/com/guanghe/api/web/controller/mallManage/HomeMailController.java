package com.guanghe.api.web.controller.mallManage;

import com.guanghe.api.web.controller.base.BaseCotroller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;

/**
 * Created by yxw on 2018/8/1.
 * 首页
 */
@Controller
@RequestMapping("/HomeMail")
public class HomeMailController extends BaseCotroller {
    @RequestMapping("/list")
    public ModelAndView queryCoachList() {
        ModelAndView view = new ModelAndView();
        view.setViewName("");
        return view;
    }
    @RequestMapping("info")
    public  void  info(HttpServletResponse response){
        /*
        *商品分类
        */
        /*
        *其他根据页面信息写
        */
    }
}
