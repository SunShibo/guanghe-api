package com.guanghe.api.web.controller.mallManage;

import com.fasterxml.jackson.databind.deser.Deserializers;
import com.guanghe.api.dao.mallDao.MallBannerDao;
import com.guanghe.api.entity.dto.ResultDTOBuilder;
import com.guanghe.api.entity.mallBo.GoodsBo;
import com.guanghe.api.entity.mallBo.MallBannerBo;
import com.guanghe.api.entity.mallBo.MallImageBo;
import com.guanghe.api.entity.mallBo.RecommendImageBo;
import com.guanghe.api.service.mallService.GoodsService;
import com.guanghe.api.service.mallService.MallBannerServise;
import com.guanghe.api.service.mallService.MallImageService;
import com.guanghe.api.service.mallService.RecommendImageService;
import com.guanghe.api.util.DateUtils;
import com.guanghe.api.util.JsonUtils;
import com.guanghe.api.web.controller.base.BaseCotroller;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
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
    @RequestMapping("/list")
    public ModelAndView queryCoreTeamList(){
        ModelAndView view = new ModelAndView();
        view.setViewName("/mall/mall_index");
        return view;
    }
    @RequestMapping("/info")
    public void queryMallImage (HttpServletResponse response){
        List<MallImageBo> mallImageBos=mallImageService.queryMallImageInfo();
        List<MallBannerBo> mallBannerBos =mallBannerServise.queryMallBannerInfo();
        List<GoodsBo> goodsBos= goodsService.queryHomeGoodsList();
        List<RecommendImageBo> recommendImageBos =recommendImageService.queryRecommendImageInfo();
        JSONObject result = new JSONObject();
        result.put("banner", mallBannerBos);
        result.put("image",mallImageBos);
        result.put("goods",goodsBos);
        result.put("recommondImage",recommendImageBos);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(result));
        safeTextPrint(response, json);
    }
}
