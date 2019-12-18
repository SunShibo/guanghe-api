package com.guanghe.api.web.controller.mallManage;

import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.request.AlipayTradePagePayRequest;
import com.google.gson.Gson;
import com.guanghe.api.util.AlipayConfig;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

/**
 * @author Wang bin
 * @version 1.0
 * @date 2019/12/16 15:59
 */
@Controller
public class AlipayController {


    @RequestMapping(value = "/alipay", produces = "text/html; charset=UTF-8",method = RequestMethod.POST)
    @ResponseBody
    public String goAlipay( HttpServletRequest request, HttpServletRequest response) throws Exception {
        HttpSession session = request.getSession();
     /*   Admin user = (Admin) session.getAttribute("user");
        Gson gson = new Gson();*/

        //订单保存
        //省略业务代码

        //商户订单号，商户网站订单系统中唯一订单号，必填
        String out_trade_no = "100000000";



        //获得初始化的AlipayClient
        AlipayClient alipayClient = new DefaultAlipayClient(AlipayConfig.gatewayUrl, AlipayConfig.app_id, AlipayConfig.merchant_private_key, "json", AlipayConfig.charset, AlipayConfig.alipay_public_key, AlipayConfig.sign_type);

        //设置请求参数
        AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();
        //这里设置支付后跳转的地址
       // alipayRequest.setReturnUrl(AlipayConfig.return_url);
        //设置异步返回结果
        alipayRequest.setNotifyUrl(AlipayConfig.notify_url);


        //付款金额，必填
        String total_amount = "1";
        //订单名称，必填
        String subject ="用户"+"影票订单";
        //商品描述，可空
        String body = "用户订购商品个数：" + 1;

        // 该笔订单允许的最晚付款时间，逾期将关闭交易。取值范围：1m～15d。m-分钟，h-小时，d-天，1c-当天（1c-当天的情况下，无论交易何时创建，都在0点关闭）。 该参数数值不接受小数点， 如 1.5h，可转换为 90m。
        String timeout_express = "5m";

        alipayRequest.setBizContent("{\"out_trade_no\":\""+ out_trade_no +"\","
                + "\"total_amount\":\""+ total_amount +"\","
                + "\"subject\":\""+ subject +"\","
                + "\"body\":\""+ body +"\","
                + "\"timeout_express\":\""+ timeout_express +"\","
                + "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");

        //请求
        String result = alipayClient.pageExecute(alipayRequest).getBody();

        return result;
    }



    @RequestMapping("/notify_url")
    public void notify_url(){

    }




}
