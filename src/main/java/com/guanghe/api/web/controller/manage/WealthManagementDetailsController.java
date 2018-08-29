package com.guanghe.api.web.controller.manage;

import com.guanghe.api.entity.bo.WealthManagementDetailsBO;
import com.guanghe.api.entity.dto.ResultDTOBuilder;
import com.guanghe.api.pop.SystemConfig;
import com.guanghe.api.service.WealthManagementDetailsService;
import com.guanghe.api.util.JsonUtils;
import com.guanghe.api.web.controller.base.BaseCotroller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by shishiming on 2018/7/23.
 */
@Controller
@RequestMapping("/wealthManagement")
public class WealthManagementDetailsController extends BaseCotroller {

    @Resource
    private WealthManagementDetailsService wealthManagementDetailsService;


    @RequestMapping("/page")
    public ModelAndView page(){
        ModelAndView view = new ModelAndView();
        view.setViewName("/wealth/wealth_management");
        view.addObject("Url", "https://" + SystemConfig.getString("image_bucketName") + ".oss-cn-beijing.aliyuncs.com/");
        return view;
    }



    /**
     * 根据修改财富管理
     * @param wealthManagementDetailsBO
     */
    @RequestMapping("/update")
    public void updateWealthManagementbyId(HttpServletResponse response, WealthManagementDetailsBO wealthManagementDetailsBO){
        if( wealthManagementDetailsBO.getId() == null || wealthManagementDetailsBO.getId() == 0){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001","参数异常！"));
            safeTextPrint(response, json);
            return;
        }

        WealthManagementDetailsBO oldBO = wealthManagementDetailsService.queryWealthManagementDetails();
        if (oldBO == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004","没有找到该条记录！"));
            safeTextPrint(response, json);
            return;
        }

        wealthManagementDetailsService.updateWealthManagementbyId(wealthManagementDetailsBO);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);
    }


    /**
     * 查询财富管理详情
     */
    @RequestMapping("/detail")
    public void queryNewsInformationById(HttpServletResponse response){

        WealthManagementDetailsBO wealth = wealthManagementDetailsService.queryWealthManagementDetails();
        if (wealth == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
            return;
        }

        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(wealth));
        safeTextPrint(response, json);

    }
}