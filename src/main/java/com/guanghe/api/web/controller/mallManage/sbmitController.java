package com.guanghe.api.web.controller.mallManage;

import com.guanghe.api.entity.bo.UserBO;
import com.guanghe.api.entity.dto.ResultDTOBuilder;
import com.guanghe.api.entity.mallBo.AccountBo;
import com.guanghe.api.entity.mallBo.OrderBo;
import com.guanghe.api.entity.mallBo.SubmitResponse;
import com.guanghe.api.entity.mallBo.goodsOrder;
import com.guanghe.api.service.mallService.AccountService;
import com.guanghe.api.service.mallService.OrderService;
import com.guanghe.api.util.DateUtils;
import com.guanghe.api.util.JsonUtils;
import com.guanghe.api.util.StringUtils;
import com.guanghe.api.web.controller.base.BaseCotroller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by yxw on 2018/9/7.
 */
@Controller
@RequestMapping("/sbmit")
public class sbmitController extends BaseCotroller {
    @Resource
    private AccountService accountService;
    @Resource
    private OrderService orderService;
    @RequestMapping("/submitOrder")
    public void deleteMallImage(HttpServletResponse response, HttpServletRequest request,SubmitResponse submitresponse) {
        if (submitresponse==null) {
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }
        UserBO userBO = super.getLoginUser(request);

        //* 2. 验证账户状态 *//*
        if (userBO == null) {
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007", "用户未登录！"));
            super.safeJsonPrint(response, result);
            return;
        }

        AccountBo news = accountService.queryAccountByUserId(userBO.getId());
        if (news.getIntegral()<submitresponse.getCount()){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("余额不足"));
            safeTextPrint(response, json);
            return;
        }
        OrderBo orderBo =new OrderBo();
        orderBo.setUserId(userBO.getId());
        orderBo.setState(1);
        orderBo.setAddressId(submitresponse.getAddressId());
        orderBo.setSku(submitresponse.getSku());
        orderBo.setNum(submitresponse.getNumber());
        orderBo.setPrice(submitresponse.getCount());
        orderService.addOrder(orderBo);
        Integer OrderId =orderBo.getId();
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(OrderId));
        safeTextPrint(response, json);



    }
}
