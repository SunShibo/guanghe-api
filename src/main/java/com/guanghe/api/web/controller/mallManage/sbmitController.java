package com.guanghe.api.web.controller.mallManage;

import com.alipay.api.AlipayApiException;
import com.alipay.api.internal.util.AlipaySignature;
import com.alipay.demo.trade.config.Configs;
import com.google.common.collect.Maps;
import com.guanghe.api.entity.bo.UserBO;
import com.guanghe.api.entity.dto.ResultDTO;
import com.guanghe.api.entity.dto.ResultDTOBuilder;
import com.guanghe.api.entity.mallBo.AccountBo;
import com.guanghe.api.entity.mallBo.OrderBo;
import com.guanghe.api.entity.mallBo.SubmitResponse;
import com.guanghe.api.entity.mallBo.goodsOrder;
import com.guanghe.api.pop.SystemConfig;
import com.guanghe.api.service.mallService.AccountService;
import com.guanghe.api.service.mallService.OrderService;
import com.guanghe.api.util.DateUtils;
import com.guanghe.api.util.JsonUtils;
import com.guanghe.api.util.StringUtils;
import com.guanghe.api.web.controller.base.BaseCotroller;
import net.sf.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.*;


/**
 * Created by yxw on 2018/9/7.
 */
@Controller
@RequestMapping("/sbmit")
public class sbmitController extends BaseCotroller {

    private static final Logger logger = LoggerFactory.getLogger(sbmitController.class);
    @Resource
    private AccountService accountService;
    @Resource
    private OrderService orderService;
    @RequestMapping("/page")
    public ModelAndView queryCoreTeamList(){
        ModelAndView view = new ModelAndView();
        view.setViewName("/mall/submit_order");
        return view;
    }

    @RequestMapping("/pay")
    public ModelAndView pay(String orderNo){
        ModelAndView view = new ModelAndView();
        view.addObject("orderNo",orderNo);
        view.setViewName("/mall/pay");
        return view;
    }

    @RequestMapping("/submitOrder")
    public void deleteMallImage(HttpServletResponse response, HttpServletRequest request,String jsons) {
        if (jsons==null) {
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }
        List<SubmitResponse> goods = JsonUtils.getList4Json(jsons, SubmitResponse.class);
        UserBO userBO = super.getLoginUser(request);

        //* 2. 验证账户状态 *//*
        if (userBO == null) {
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007", "用户未登录！"));
            super.safeJsonPrint(response, result);
            return;
        }
        Integer status=1;
        Date time = new Date();
        Long orderId =Long.parseLong(DateUtils.formatDate(DateUtils.LONG_DATE_PATTERN_PLAIN, new Date()));
        AccountBo news = accountService.queryAccountByUserId(userBO.getId());

        List<OrderBo> orderBos =new ArrayList<OrderBo>();
        for (SubmitResponse good:goods) {
            if (news.getIntegral() < good.getCount()) {
                String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000010","余额不足"));
                safeTextPrint(response, json);
                return;
            }else {
                OrderBo s=new OrderBo();
                s.setUserId(userBO.getId());
                s.setSku(good.getSku());
                s.setAddressId(good.getAddressId());
                s.setState(status);
                s.setNum(good.getNumber());
                s.setPrice(good.getPrice());
                s.setCreateTime(time);
                s.setOrderId(orderId);
                s.setRemake(good.getRemake());
                s.setCount(good.getCount());
                orderBos.add(s);
            }
        }
        orderService.addOrder(orderBos);
        JSONObject result = new JSONObject();
        result.put("orderId", orderId);
        result.put("integral",news.getIntegral());
        result.put("Url","https://" + SystemConfig.getString("image_bucketName")+".oss-cn-beijing.aliyuncs.com/");
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(result));
        safeTextPrint(response, json);
    }


    @RequestMapping("pay.do")
    @ResponseBody
    public void pay(HttpSession session, Long orderNo, HttpServletRequest request, HttpServletResponse response){
        UserBO userBO = super.getLoginUser(request);

        if(userBO ==null){
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007", "用户未登录！"));
            super.safeJsonPrint(response, result);
            return;
        }
        String path = request.getSession().getServletContext().getRealPath("upload");
        ResultDTO pay = orderService.pay(orderNo, userBO.getId(), path);
        String result = JsonUtils.getJsonString4JavaPOJO(pay);
        super.safeJsonPrint(response, result);
        return;
    }


    @RequestMapping("alipay_callback.do")
    @ResponseBody
    public Object alipayCallback(HttpServletRequest request){
        System.err.println("进入支付宝回调");
        Map<String,String> params = Maps.newHashMap();

        Map requestParams = request.getParameterMap();
        for(Iterator iter = requestParams.keySet().iterator(); iter.hasNext();){
            String name = (String)iter.next();
            String[] values = (String[]) requestParams.get(name);
            String valueStr = "";
            for(int i = 0 ; i <values.length;i++){

                valueStr = (i == values.length -1)?valueStr + values[i]:valueStr + values[i]+",";
            }
            params.put(name,valueStr);
        }
        logger.info("支付宝回调,sign:{},trade_status:{},参数:{}",params.get("sign"),params.get("trade_status"),params.toString());

        //非常重要,验证回调的正确性,是不是支付宝发的.并且呢还要避免重复通知.

        params.remove("sign_type");
        try {
            boolean alipayRSACheckedV2 = AlipaySignature.rsaCheckV2(params, Configs.getAlipayPublicKey(),"utf-8",Configs.getSignType());

            if(!alipayRSACheckedV2){
                //"非法请求,验证不通过,再恶意请求我就报警找网警了"
               // return ServerResponse.createByErrorMessage("非法请求,验证不通过,再恶意请求我就报警找网警了");
                return null;
            }
        } catch (AlipayApiException e) {
            logger.error("支付宝验证回调异常",e);
        }

        //todo 验证各种数据


        //
        ResultDTO resultDTO = orderService.aliCallback(params);
        if(resultDTO.isSuccess()){
            return "success";
        }

        return "failed";
    }

}
