package com.guanghe.api.web.controller.manage;

import com.guanghe.api.entity.bo.PrivateInvestmentProductAdvantageBO;
import com.guanghe.api.entity.dto.ResultDTOBuilder;
import com.guanghe.api.service.PrivateInvestmentProductAdvantageService;
import com.guanghe.api.util.JsonUtils;
import com.guanghe.api.util.StringUtils;
import com.guanghe.api.web.controller.base.BaseCotroller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by shishiming on 2018/7/18.
 */
@Controller
@RequestMapping("/productAdvantage")
public class PrivateInvestmentProductAdvantageController extends BaseCotroller {

    @Resource
    private PrivateInvestmentProductAdvantageService privateInvestmentProductAdvantageService;


    /**
     * 查询列表
     */
    @RequestMapping("/list")
    public void queryPrivateInvestmentProductAdvantageList(HttpServletResponse response,Integer privateInvestmentId){

        Map<String, Object> resultMap = new HashMap<String, Object>();
        resultMap.put("data",privateInvestmentProductAdvantageService.queryPrivateInvestmentProductAdvantageList(privateInvestmentId));
        resultMap.put("count",privateInvestmentProductAdvantageService.queryPrivateInvestmentProductAdvantageCount(privateInvestmentId));
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(resultMap));

        safeTextPrint(response, json);
    }



    /**
     * 根据id查询详情
     * @param id
     */
    @RequestMapping("/detail")
    public void queryPrivateInvestmentProductAdvantageById(HttpServletResponse response,Integer id){
//
        if (id == null){
            return;
        }

        PrivateInvestmentProductAdvantageBO bo = privateInvestmentProductAdvantageService.queryPrivateInvestmentProductAdvantageById(id);
        if (bo == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
            return;
        }

        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(bo));
        safeTextPrint(response, json);

    }

    /**
     * 根据id删除
     * @param id
     */
    @RequestMapping("/delete")
    public void deletePrivateInvestmentProductAdvantage(HttpServletResponse response, Integer id){
        if (id == null){
            return;
        }

        PrivateInvestmentProductAdvantageBO bo = privateInvestmentProductAdvantageService.queryPrivateInvestmentProductAdvantageById(id);
        if (bo == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
            return;
        }

        privateInvestmentProductAdvantageService.deletePrivateInvestmentProductAdvantage(id);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);

    }


    /**
     * 新增
     * @param bo
     */
    @RequestMapping("/add")
    public void addPrivateInvestmentProductAdvantage(HttpServletResponse response, PrivateInvestmentProductAdvantageBO bo){
        if(bo == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }

        if( bo.getPrivateInvestmentId() == null || StringUtils.isEmpty(bo.getName()) || StringUtils.isEmpty(bo.getSynopsis()) ){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }
        privateInvestmentProductAdvantageService.addPrivateInvestmentProductAdvantage(bo);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);

    }


    /**
     * 修改
     * @param bo
     */
    @RequestMapping("/update")
    public void updatePrivateInvestmentProductAdvantage(HttpServletResponse response, PrivateInvestmentProductAdvantageBO bo){
        PrivateInvestmentProductAdvantageBO newBo = privateInvestmentProductAdvantageService.queryPrivateInvestmentProductAdvantageById(bo.getId());

        if(bo == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }
        if(bo.getId() == null || bo.getPrivateInvestmentId() == null || StringUtils.isEmpty(bo.getName())
                || StringUtils.isEmpty(bo.getSynopsis()) ){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }
        if(newBo == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
            return;
        }

        newBo.setName(bo.getName());
        newBo.setPrivateInvestmentId(bo.getPrivateInvestmentId());
        newBo.setSynopsis(bo.getSynopsis());

        privateInvestmentProductAdvantageService.updatePrivateInvestmentProductAdvantageBO(newBo);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);
    }
}