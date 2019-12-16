package com.guanghe.api.service;

import com.guanghe.api.dao.mallDao.OrderDao;
import com.guanghe.api.entity.bo.UserBO;
import com.guanghe.api.util.OrderUtil;
import com.guanghe.api.util.wxUtil.HttpRequest;
import com.guanghe.api.util.wxUtil.WXPayRequest;
import com.guanghe.api.util.wxUtil.WXPayUtil;
import com.guanghe.api.util.wxUtil.config.WXConfig;
import com.guanghe.api.util.wxUtil.config.WXRequestConfig;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;


@Service
@Transactional
public class WXPayService {
    @Resource
    OrderDao orderDao;

    //返回预支付信息  调用支付  插入预订单
    public String addUnifiedOrder(String orderNumber) throws Exception {
        //获取请求参数
        Map<String, String> map = WXConfig.toMapJSAPI();
        //传入订单号
        map.put("out_trade_no", orderNumber);//订单号
        //金额
        map.put("total_fee", totalFee(new BigDecimal(0.01)));
        //自定义请求参数
        map.put("attach", "");
        //回调地址
        map.put("notify_url", WXConfig.NOTIFY_URL_CURRENCY);
        //生成签名
        String mapStr = WXPayUtil.generateSignedXml(map, WXConfig.KEY);
        HttpRequest httpRequest=new HttpRequest();
        String result=httpRequest.sendPost("https://api.mch.weixin.qq.com/pay/unifiedorder",mapStr);
        System.out.println(result);
        System.out.println(result);
        System.out.println(result);
        return result;
    }

    //支付成功回调
    public Map<String, String> getOrderResult(HttpServletRequest request) throws Exception {
        //接受微信回调参数
        InputStream inStream = request.getInputStream();
        //转换为map
        Map<String, String> resultMap = inStreamToMap(inStream);
        //处理业务逻辑
        String return_code = resultMap.get("return_code");//状态
        String result_code = resultMap.get("result_code");//交易结果
        String out_trade_no = resultMap.get("out_trade_no");//商户订单号(自己生产的订单号)
        String sign = resultMap.get("sign");
        //验证签名
        if (WXPayUtil.isSignatureValid(resultMap, WXConfig.KEY)) {
            if (return_code.equals("SUCCESS") && result_code.equals("SUCCESS")) {//交易成功
                if (out_trade_no != null) {//商户订单号
                    //获取订单状态
                    //成功的后续逻辑
                    //修改订单状态 支付时间
                } else {
                    System.err.println("支付失败");
                }
            } else {
                System.err.println("交易标识不正确");
            }
        }
        return resultMap;
    }

    //请求统一下单
    public String getCodeUrl(String mapStr) throws Exception {
        WXRequestConfig wxPayConfig = new WXRequestConfig();
        WXPayRequest wxPayRequest = new WXPayRequest(wxPayConfig);
        UUID uuid = UUID.randomUUID();
        String uuidStr = uuid.toString();
        String resultXml = wxPayRequest.requestWithoutCert(WXConfig.PLACE_AN_ORDERAPI, uuidStr, mapStr, false);
        return resultXml;
    }

    //将InputStream转换为Map
    public Map<String, String> inStreamToMap(InputStream inStream) throws Exception {
        int _buffer_size = 1024;
        Map<String, String> resultMap = new HashMap<String, String>();
        if (inStream != null) {
            ByteArrayOutputStream outStream = new ByteArrayOutputStream();
            byte[] tempBytes = new byte[_buffer_size];
            int count = -1;
            while ((count = inStream.read(tempBytes, 0, _buffer_size)) != -1) {
                outStream.write(tempBytes, 0, count);
            }
            tempBytes = null;
            outStream.flush();
            //将流转换成字符串
            String result = new String(outStream.toByteArray(), "UTF-8");
            //将字符串解析成MAP
            resultMap = WXPayUtil.xmlToMap(result);

        }
        return resultMap;
    }

    //转换金额 有 1.00 转为 100分
    private String totalFee(BigDecimal price) {
        BigDecimal setScale = price.setScale(2, BigDecimal.ROUND_HALF_DOWN);
        System.out.println(setScale);
        String str = setScale.multiply(new BigDecimal("100")).toString();
        BigDecimal b = new BigDecimal(str.substring(0, str.length() - 3));
        return b.toString();
    }

}


