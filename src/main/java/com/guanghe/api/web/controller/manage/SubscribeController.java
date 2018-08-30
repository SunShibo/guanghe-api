package com.guanghe.api.web.controller.manage;

import com.guanghe.api.entity.bo.SubscribeBo;
import com.guanghe.api.entity.dto.ResultDTOBuilder;
import com.guanghe.api.query.QueryInfo;
import com.guanghe.api.service.SubscribeService;
import com.guanghe.api.util.JsonUtils;
import com.guanghe.api.util.StringUtils;
import com.guanghe.api.util.redisUtils.RedissonHandler;
import com.guanghe.api.web.controller.base.BaseCotroller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by shishiming on 2018/8/30.
 */

@Controller
@RequestMapping("/subscribe")
public class SubscribeController extends BaseCotroller{

    @Autowired
    private SubscribeService subscribeService;

    @RequestMapping("/list")
    public void getSubscribeList(HttpServletResponse response,Integer pageNo, Integer pageSize,String startTime,String endTime){

        QueryInfo queryInfo = getQueryInfo(pageNo, pageSize);

        Map<String, Object> map = new HashMap<String, Object>();
        if(queryInfo != null){
            map.put("pageOffset", queryInfo.getPageOffset());
            map.put("pageSize", queryInfo.getPageSize());
        }

        map.put("startTime",startTime);
        map.put("endTime",endTime);

        Map<String, Object> resultMap = new HashMap<String, Object>();
        resultMap.put("data",subscribeService.getSubscribeList(map));
        resultMap.put("count",subscribeService.getSubscribeCount(map));
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(resultMap));

        safeTextPrint(response, json);
    }



    @RequestMapping("/add")
    public void addSubscribe (HttpServletResponse response, SubscribeBo subscribeBo,String code){
        if(subscribeBo == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }
        if(StringUtils.isEmpty(subscribeBo.getName())|| StringUtils.isEmpty(subscribeBo.getPhone())
                || null == subscribeBo.getPrivateInvestmentId()){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }

        //从缓存中获取验证码
        String mobileAuthCode = "";
        mobileAuthCode = RedissonHandler.getInstance().get(subscribeBo.getPhone() + "_subscribe");
        if("".equals(mobileAuthCode) || !code.equals(mobileAuthCode)){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001","验证码错误！"));
            safeTextPrint(response, json);
            return;
        }

        subscribeService.addSubscribe(subscribeBo);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);
    }


}
