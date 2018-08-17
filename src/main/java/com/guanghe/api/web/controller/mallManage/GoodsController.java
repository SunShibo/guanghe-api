package com.guanghe.api.web.controller.mallManage;

import com.guanghe.api.entity.dto.ResultDTOBuilder;
import com.guanghe.api.entity.mallBo.BrandBo;
import com.guanghe.api.entity.mallBo.GoodsBo;
import com.guanghe.api.entity.mallBo.GoodsResponseBo;
import com.guanghe.api.pop.SystemConfig;
import com.guanghe.api.service.mallService.BrandService;
import com.guanghe.api.service.mallService.GoodsService;
import com.guanghe.api.util.JsonUtils;
import com.guanghe.api.web.controller.base.BaseCotroller;
import net.sf.json.JSONObject;
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
    @Resource
    private BrandService brandService;
    @RequestMapping("/detailList")//列表页
    public void  sort(HttpServletResponse response,GoodsResponseBo goodsResponseBo){
        if(goodsResponseBo == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        }else {
            List<BrandBo> brandBos = brandService.queryBrandInfo(goodsResponseBo);
            List<GoodsBo> goodsBos = goodsService.queryGoodsInfoSort(goodsResponseBo);
            JSONObject result = new JSONObject();
            result.put("brand", brandBos);
            result.put("goods",goodsBos);
            result.put("Url","https://" + SystemConfig.getString("image_bucketName")+".oss-cn-beijing.aliyuncs.com/");
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(result));
            safeTextPrint(response, json);
        }

    }
    @RequestMapping("/Add")//添加商品
    public  void  Add(HttpServletResponse response,Integer id){

    }



}
