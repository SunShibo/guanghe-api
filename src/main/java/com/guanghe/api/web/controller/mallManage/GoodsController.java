package com.guanghe.api.web.controller.mallManage;

import com.guanghe.api.service.mallService.GoodsService;
import com.guanghe.api.web.controller.base.BaseCotroller;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by yxw on 2018/8/2.
 */
@Controller
@RequestMapping("/Goods")
public class GoodsController extends BaseCotroller {
    @Resource
    private GoodsService goodsService;
    @RequestMapping("/sort")//排序
    public void  sort(HttpServletResponse response,String sortStatu){


    }
    @RequestMapping("/Add")//添加商品
    public  void  Add(HttpServletResponse response,Integer id){

    }



}
