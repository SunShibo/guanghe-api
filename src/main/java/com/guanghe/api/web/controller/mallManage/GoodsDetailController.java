package com.guanghe.api.web.controller.mallManage;

import com.guanghe.api.entity.dto.ResultDTOBuilder;
import com.guanghe.api.entity.mallBo.BrandBo;
import com.guanghe.api.entity.mallBo.GoodsDetailBo;
import com.guanghe.api.entity.mallBo.GoodsImg;
import com.guanghe.api.entity.mallBo.GoodsListBo;
import com.guanghe.api.pop.SystemConfig;
import com.guanghe.api.service.mallService.BrandService;
import com.guanghe.api.service.mallService.GoodsImageService;
import com.guanghe.api.service.mallService.GoodsService;
import com.guanghe.api.service.mallService.GoodsTypeService;
import com.guanghe.api.util.DateUtils;
import com.guanghe.api.util.JsonUtils;
import com.guanghe.api.web.controller.base.BaseCotroller;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by yxw on 2018/8/20.
 */
@Controller
@RequestMapping("/GoodsDetail")
public class GoodsDetailController extends BaseCotroller {
    @Resource
    private GoodsService goodsService;//商品信息
    @Resource
    private BrandService brandService;//品牌信息
    @Resource
    private GoodsImageService goodsImageService;//轮播图片信息
    @Resource
    private GoodsTypeService goodsTypeService;

    @RequestMapping("/detail")//列表页
    public void  sort(HttpServletResponse response, Integer id) {
        List<GoodsDetailBo> goodsDetailBos = goodsService.queryGoodsdetail(id);
        /*for(GoodsDetailBo g : goodsDetailBos) {
        }*/
        BrandBo brandBos = brandService.queryBrandByGoodsId(id);
        List<GoodsImg> goodsImgs =goodsImageService.queryGoodsImgInfoByid(id);
        List<GoodsListBo> goodsDetailBo=goodsService.queryGoodsbrandsDetailList(id);
        JSONObject result = new JSONObject();
        result.put("recommond",goodsDetailBo);
        result.put("first",goodsTypeService.queryGoodTypeFirstById(id));
        result.put("second",goodsTypeService.queryGoodTypeSecondById(id));
        result.put("brand", brandBos);
        result.put("goods", goodsDetailBos);
        result.put("goodsImgs",goodsImgs);
        result.put("time",System.currentTimeMillis());
        result.put("Url","https://" + SystemConfig.getString("image_bucketName")+".oss-cn-beijing.aliyuncs.com/");
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(result));
        safeTextPrint(response, json);
    }
}
