package com.guanghe.api.web.controller;

import com.guanghe.api.entity.bo.BigEventBo;
import com.guanghe.api.service.BigEventService;
import com.guanghe.api.web.controller.base.BaseCotroller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;

/**
 * Created by yxw on 2018/7/18.
 */
@Controller
@RequestMapping("/BigEvent")
public class BigEventController extends BaseCotroller {
    @Autowired
    private BigEventService bigEventService;
    @RequestMapping("/delete")
    public void deleteBigEvent(HttpServletResponse response, Integer id){
        String result = bigEventService.deleteBigEvent(id);
        safeJsonPrint(response, result);
    }

    @RequestMapping("/add")
    public void addBigEvent (HttpServletResponse response, BigEventBo bigEvent){
        String result = bigEventService.addBigEvent(bigEvent);
        safeJsonPrint(response, result);
    }

    @RequestMapping("/update")
    public void updateBigEvent (HttpServletResponse response,BigEventBo bigEvent){
        String result = bigEventService.updateBigEvent(bigEvent);
        safeJsonPrint(response, result);
    }
    @RequestMapping("/detail")
    public void queryBigEvent (HttpServletResponse response, Integer id){
        String result = bigEventService.queryBigEvent( id);
        safeJsonPrint(response, result);
    }
}
