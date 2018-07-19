package com.guanghe.api.web.controller;

import com.guanghe.api.entity.bo.CoreTeamBo;
import com.guanghe.api.service.CoreTeamService;
import com.guanghe.api.web.controller.base.BaseCotroller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;

/**
 * Created by yxw on 2018/7/18.
 */
@Controller
@RequestMapping("/CoreTeam")
public class CoreTeamController  extends BaseCotroller{
    @Autowired
    private CoreTeamService coreTeamService;
    @RequestMapping("/delete")
    public void deleteCoreTeam(HttpServletResponse response, Integer id){
        String result = coreTeamService.deleteCoreTeam(id);
        safeJsonPrint(response, result);
    }

    @RequestMapping("/add")
    public void addCoreTeam (HttpServletResponse response, CoreTeamBo coreTeam){
        String result = coreTeamService.addCoreTeam(coreTeam);
        safeJsonPrint(response, result);
    }

    @RequestMapping("/update")
    public void updateCoreTeam (HttpServletResponse response,CoreTeamBo coreTeam){
        String result = coreTeamService.updateCoreTeam(coreTeam);
        safeJsonPrint(response, result);
    }
    @RequestMapping("/detail")
    public void queryCoreTeam (HttpServletResponse response, Integer id){
        String result = coreTeamService.queryCoreTeam( id);
        safeJsonPrint(response, result);
    }
}
