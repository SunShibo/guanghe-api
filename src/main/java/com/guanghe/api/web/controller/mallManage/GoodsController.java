package com.guanghe.api.web.controller.mallManage;

import com.guanghe.api.entity.dto.ResultDTOBuilder;
import com.guanghe.api.entity.mallBo.GoodsBo;
import com.guanghe.api.entity.mallBo.GoodsResponseBo;
import com.guanghe.api.service.mallService.GoodsService;
import com.guanghe.api.util.JsonUtils;
import com.guanghe.api.web.controller.base.BaseCotroller;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by yxw on 2018/8/2.
 */
@Controller
@RequestMapping("/Goods")
public class GoodsController extends BaseCotroller {
    @Resource
    private GoodsService goodsService;
    @RequestMapping("/detail")//排序
    public void  sort(HttpServletResponse response,GoodsResponseBo goodsResponseBo){
        if(goodsResponseBo == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        }else {
            List<GoodsBo> goodsBos = goodsService.queryGoodsInfoSort(goodsResponseBo);
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(goodsBos));
            safeTextPrint(response, json);
        }

    }
    @RequestMapping("/Add")//添加商品
    public  void  Add(HttpServletResponse response,Integer id){

    }



}
