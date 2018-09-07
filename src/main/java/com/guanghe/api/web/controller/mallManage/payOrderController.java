package com.guanghe.api.web.controller.mallManage;

import com.guanghe.api.entity.dto.ResultDTOBuilder;
import com.guanghe.api.util.JsonUtils;
import com.guanghe.api.util.MD5Util;
import com.guanghe.api.web.controller.base.BaseCotroller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by yxw on 2018/9/7.
 */
@RequestMapping("/pay")
public class payOrderController extends BaseCotroller {
    @Resource
    @RequestMapping("/payOrder")
    public void payOrder(HttpServletResponse response, String passWord, Integer orderId) {
        if (passWord == null || orderId == null) {
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }
        /*
        * 支付密码正确
        * 订单状态改变
        * 积分记录信息
        * 账户积分余额改变
        */
//        if(!MD5Util.digest(passWord).equals(adminBo.getPassword())){
//            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000008"));
//            safeTextPrint(response, json);
//            return ;
//        }


    }
}

