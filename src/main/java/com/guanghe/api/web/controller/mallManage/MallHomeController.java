package com.guanghe.api.web.controller.mallManage;

import com.fasterxml.jackson.databind.deser.Deserializers;
import com.guanghe.api.dao.mallDao.MallBannerDao;
import com.guanghe.api.entity.bo.UserBO;
import com.guanghe.api.entity.dto.ResultDTOBuilder;
import com.guanghe.api.entity.mallBo.*;
import com.guanghe.api.pop.SystemConfig;
import com.guanghe.api.service.mallService.*;
import com.guanghe.api.util.DateUtils;
import com.guanghe.api.util.JsonUtils;
import com.guanghe.api.web.controller.base.BaseCotroller;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by yxw on 2018/8/7.
 */
@Controller
@RequestMapping("/MallHome")
public class MallHomeController extends BaseCotroller {
    @Resource
    private MallBannerServise mallBannerServise;
    @Resource
    private MallImageService mallImageService;
    @Resource
    private GoodsService goodsService;
    @Resource
    private RecommendImageService recommendImageService;
    @Resource
    private GoodsTypeService goodsTypeService;
    @Resource
    private  ShoppingCarService shoppingCarService;
    @RequestMapping("/list")
    public ModelAndView queryCoreTeamList(){
        ModelAndView view = new ModelAndView();
        view.setViewName("/mall/mall_index");
        return view;
    }
    @RequestMapping("/info")
    public void queryMallImage (HttpServletResponse response,HttpServletRequest request){
        List<MallImageBo> mallImageBos=mallImageService.queryMallImageInfo();
        List<MallBannerBo> mallBannerBos =mallBannerServise.queryMallBannerInfo();
        List<GoodsBo> goodsBos= goodsService.queryHomeGoodsList();
        List<RecommendImageBo> recommendImageBos =recommendImageService.queryRecommendImageInfo();
        List<GoodTypeBo> goodTypeBos = goodsTypeService.queryGoodType();

        JSONObject result = new JSONObject();
        UserBO userBO = super.getLoginUser(request);
    /* 2. 验证账户状态 */
        if (userBO == null) {
           result.put("count",0);
        }else {
            Integer count =shoppingCarService.querycount(userBO.getId());
            result.put("count",count);
        }
        result.put("banner", mallBannerBos);
        result.put("image",mallImageBos);
        result.put("goods",goodsBos);
        result.put("recommondImage",recommendImageBos);
        result.put("goodsType",goodTypeBos);
        result.put("Url","https://" + SystemConfig.getString("image_bucketName")+".oss-cn-beijing.aliyuncs.com/");
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(result));
        safeTextPrint(response, json);
    }
}
