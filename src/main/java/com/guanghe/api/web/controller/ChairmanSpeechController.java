package com.guanghe.api.web.controller;

import com.guanghe.api.entity.bo.ChairmanSpeech;
import com.guanghe.api.service.ChairmanSpeechService;
import com.guanghe.api.web.controller.base.BaseCotroller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;

/**
 * Created by yxw on 2018/7/18.
 */
@Controller
@RequestMapping("/ChairmanSpeech")
public class ChairmanSpeechController extends BaseCotroller {
    @Autowired
    private  ChairmanSpeechService chairmanSpeechService;
    @RequestMapping("/delete")
    public void deleteActivityMessage(HttpServletResponse response, Integer id){
        String result = chairmanSpeechService.deleteChairmanSpeech(id);
        safeJsonPrint(response, result);
    }

    @RequestMapping("/add")
    public void addActivityMessage (HttpServletResponse response, ChairmanSpeech chairmanSpeech){
        String result = chairmanSpeechService.addChairmanSpeech(chairmanSpeech);
        safeJsonPrint(response, result);
    }

    @RequestMapping("/update")
    public void updateActivityMessage (HttpServletResponse response, ChairmanSpeech chairmanSpeech){
        String result = chairmanSpeechService.updateChairmanSpeech(chairmanSpeech);
        safeJsonPrint(response, result);
    }
    @RequestMapping("/detail")
    public void queryChairmanSpeechDetailById (HttpServletResponse response, Integer id){
        String result = chairmanSpeechService.queryChairmanSpeechDetailById( id);
        safeJsonPrint(response, result);
    }



}
