package com.guanghe.api.web.controller.mallManage;

import com.guanghe.api.entity.bo.UserBO;
import com.guanghe.api.entity.dto.ResultDTOBuilder;
import com.guanghe.api.entity.mallBo.AccountBo;
import com.guanghe.api.entity.mallBo.GoodsDetailBo;
import com.guanghe.api.entity.mallBo.GoodsListBo;
import com.guanghe.api.pop.SystemConfig;
import com.guanghe.api.service.mallService.AccountService;
import com.guanghe.api.service.mallService.GoodsService;
import com.guanghe.api.service.mallService.ReceivingAdressService;
import com.guanghe.api.util.JsonUtils;
import com.guanghe.api.web.controller.base.BaseCotroller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by yxw on 2018/9/6.
 */
@Controller
@RequestMapping("/orderInfo")
public class OrderInfoController extends BaseCotroller {
    @Resource
    private GoodsService goodsService;
    @Resource
    private ReceivingAdressService receivingAdressService;
    @Resource
    private AccountService accountService;
    @RequestMapping("/detailList")
    public void deleteInfoList(HttpServletResponse response,String jsons,HttpServletRequest request) {
    UserBO userBO = super.getLoginUser(request);

    //* 2. 验证账户状态 *//*
        if (userBO == null) {
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007", "用户未登录！"));
            super.safeJsonPrint(response, result);
            return;
        }
        String[] value =jsons.split(",");
        Integer[] intTemp = new Integer[value.length];
        for (int i = 0; i <value.length; i++)
        {
            intTemp[i] =  Integer.parseInt(value[i]);
        }
        //直接传数组
         List<GoodsDetailBo> goodsDetailBos =goodsService.queryOrderNews(intTemp);
        if (goodsDetailBos == null) {
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }

        Integer userId =userBO.getId();
        AccountBo accountBo = accountService.queryAccountByUserId(userId);

        Map<String,Object> map =new HashMap<String, Object>();
        map.put("userId",userId);
        Map<String, Object> resultMap = new HashMap<String, Object>();
        if (accountBo==null){
            resultMap.put("passWord",false);
        }else {
            resultMap.put("passWord",true);
        }
        resultMap.put("address",receivingAdressService.queryReceivingAdressList(map));
        resultMap.put("orderInfo",goodsDetailBos);
        resultMap.put("Url","https://" + SystemConfig.getString("image_bucketName")+".oss-cn-beijing.aliyuncs.com/");
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(resultMap));
        safeTextPrint(response, json);
    }
}
