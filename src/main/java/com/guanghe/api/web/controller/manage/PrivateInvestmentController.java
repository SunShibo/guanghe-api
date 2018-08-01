package com.guanghe.api.web.controller.manage;

import com.guanghe.api.entity.bo.PrivateInvestmentBO;
import com.guanghe.api.entity.dto.ResultDTOBuilder;
import com.guanghe.api.query.QueryInfo;
import com.guanghe.api.service.PrivateInvestmentService;
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
@RequestMapping("/privateInvestment")
public class PrivateInvestmentController extends BaseCotroller {

    @Resource
    private PrivateInvestmentService privateInvestmentService;


    /**
     * 查询列表
     */
    @RequestMapping("/list")
    public void queryPrivateInvestmentList(HttpServletResponse response,Integer pageNo, Integer pageSize,Integer investmentPoinId,
       Integer productTermId,Integer riskLevelId,Integer incomeTypeId){

        QueryInfo queryInfo = getQueryInfo(pageNo, pageSize);

        Map<String, Object> map = new HashMap<String, Object>();
        if(queryInfo != null){
            map.put("pageOffset", queryInfo.getPageOffset());
            map.put("pageSize", queryInfo.getPageSize());
        }

        map.put("investmentPoinId",investmentPoinId);
        map.put("productTermId",productTermId);
        map.put("riskLevelId",riskLevelId);
        map.put("incomeTypeId",incomeTypeId);

        Map<String, Object> resultMap = new HashMap<String, Object>();
        resultMap.put("data",privateInvestmentService.queryPrivateInvestmentList(map));
        resultMap.put("count",privateInvestmentService.queryPrivateInvestmentCount(map));
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(resultMap));

        safeTextPrint(response, json);
    }



    /**
     * 根据id查询详情
     * @param id
     */
    @RequestMapping("/detail")
    public void queryPrivateInvestmentById(HttpServletResponse response,Integer id){
//
        if (id == null){
            return;
        }

        PrivateInvestmentBO bo = privateInvestmentService.queryPrivateInvestmentById(id);
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
    public void deletePrivateInvestment(HttpServletResponse response, Integer id){
        if (id == null){
            return;
        }

        PrivateInvestmentBO bo = privateInvestmentService.queryPrivateInvestmentById(id);
        if (bo == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
            return;
        }

        privateInvestmentService.deletePrivateInvestment(id);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);

    }


    /**
     * 新增
     * @param bo
     */
    @RequestMapping("/add")
    public void addPrivateInvestment(HttpServletResponse response, PrivateInvestmentBO bo){
        if(bo == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }
        if( StringUtils.isEmpty(bo.getFundName()) || StringUtils.isEmpty(bo.getFundType()) || StringUtils.isEmpty(bo.getOperations())
            || StringUtils.isEmpty(bo.getFundManager()) || StringUtils.isEmpty(bo.getFundCustodian()) || StringUtils.isEmpty(bo.getProductScale())
            || StringUtils.isEmpty(bo.getSubscribeStartingPoint()) || StringUtils.isEmpty(bo.getProductTerm()) || StringUtils.isEmpty(bo.getFundInvestment())
            || bo.getCapitalCost() == null || StringUtils.isEmpty(bo.getComparisonDatum()) || StringUtils.isEmpty(bo.getPerformanceReward())
//            || bo.getStartTime() == null || bo.getEndTime() == null
            || bo.getAmountOfInvestment() == null || bo.getIncreasingAmount() == null
            || bo.getProductScaleStart() == null || bo.getProductScaleEnd() == null || bo.getInvestmentPoinId() == null || bo.getProductTermId() == null
            || bo.getRiskLevelId() == null || bo.getIncomeTypeId() == null   ){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }

        privateInvestmentService.addPrivateInvestment(bo);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);

    }


    /**
     * 修改
     * @param bo
     */
    @RequestMapping("/update")
    public void updatePrivateInvestment(HttpServletResponse response, PrivateInvestmentBO bo){


        if(bo == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }
        if(StringUtils.isEmpty(bo.getFundName()) || StringUtils.isEmpty(bo.getFundType()) || StringUtils.isEmpty(bo.getOperations())
        || StringUtils.isEmpty(bo.getFundManager()) || StringUtils.isEmpty(bo.getFundCustodian()) || StringUtils.isEmpty(bo.getProductScale())
        || StringUtils.isEmpty(bo.getSubscribeStartingPoint()) || StringUtils.isEmpty(bo.getProductTerm()) || StringUtils.isEmpty(bo.getFundInvestment())
        || bo.getCapitalCost() == null || StringUtils.isEmpty(bo.getComparisonDatum()) || StringUtils.isEmpty(bo.getPerformanceReward())
        || bo.getStartTime() == null || bo.getEndTime() == null || bo.getAmountOfInvestment() == null || bo.getIncreasingAmount() == null
        || bo.getProductScaleStart() == null || bo.getProductScaleEnd() == null || bo.getInvestmentPoinId() == null || bo.getProductTermId() == null
        || bo.getRiskLevelId() == null || bo.getIncomeTypeId() == null || bo.getId() == null ){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }

        PrivateInvestmentBO newBo = privateInvestmentService.queryPrivateInvestmentById(bo.getId());
        if(newBo == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
            return;
        }


        privateInvestmentService.updatePrivateInvestmentBO(bo);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);
    }
}