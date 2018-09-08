package com.guanghe.api.web.controller.mallManage;

import com.guanghe.api.entity.bo.IndustryInformationBO;
import com.guanghe.api.entity.bo.UserBO;
import com.guanghe.api.entity.dto.ResultDTOBuilder;
import com.guanghe.api.entity.mallBo.AccountBo;
import com.guanghe.api.entity.mallBo.IntegralTransactionBo;
import com.guanghe.api.query.QueryInfo;
import com.guanghe.api.service.mallService.AccountService;
import com.guanghe.api.service.mallService.IntegralTransactionService;
import com.guanghe.api.util.JsonUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by yxw on 2018/9/8.
 */
@Controller
@RequestMapping("myintegraTransactionController")
public class MyIntegraTransactionController extends  BrandController {
    @Resource
    private IntegralTransactionService integralTransactionService;
    @Resource
    private AccountService accountService;
    @RequestMapping("/list")
    public  void info(HttpServletRequest request ,HttpServletResponse response,Integer pageNo,Integer pageSize){
        UserBO userBO = super.getLoginUser(request);
    /* 2. 验证账户状态 */
        if (userBO == null) {
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007", "用户未登录！"));
            super.safeJsonPrint(response, result);
            return;
        }
        QueryInfo queryInfo = getQueryInfo(pageNo, pageSize);

        Map<String, Object> map = new HashMap<String, Object>();
        if(queryInfo != null){
            map.put("pageOffset", queryInfo.getPageOffset());
            map.put("pageSize", queryInfo.getPageSize());
        }
        AccountBo news = accountService.queryAccountByUserId(userBO.getId());
        map.put("userId",userBO.getId());
        List<IntegralTransactionBo>integralTransactionInfo=integralTransactionService.queryIntegralTransactionList(map);
        Map<String, Object> resultMap = new HashMap<String, Object>();
        resultMap.put("data",integralTransactionInfo);
        resultMap.put("count", integralTransactionService.queryIntegralTransactionCount(map));
        resultMap.put("phone",userBO.getPhoneNumber());
        resultMap.put("integral",news.getIntegral());
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(resultMap));
        safeTextPrint(response, json);

    }
    }

