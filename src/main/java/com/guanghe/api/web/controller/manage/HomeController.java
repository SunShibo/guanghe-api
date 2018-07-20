package com.guanghe.api.web.controller.manage;

import com.guanghe.api.entity.bo.*;
import com.guanghe.api.entity.dto.ResultDTOBuilder;
import com.guanghe.api.query.QueryInfo;
import com.guanghe.api.service.BannerService;
import com.guanghe.api.service.InfoService;
import com.guanghe.api.service.NewsInformationService;
import com.guanghe.api.util.JsonUtils;
import com.guanghe.api.util.StringUtils;
import com.guanghe.api.web.controller.base.BaseCotroller;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.*;

/**
 * Created by shishiming on 2018/7/18.
 */
@Controller
@RequestMapping("/home")
public class HomeController extends BaseCotroller {
    @Resource
    private InfoService infoService;
    @Resource
    private BannerService bannerService;
    @RequestMapping("/info")
    public void info(HttpServletResponse response){
        List<BannerBo> bannerBo= bannerService.queryBannerInfo();
        if (bannerBo==null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        }
        List<CompanyIntroductionBo> companyIntroductionBo =infoService.queryCompanyIntroductionInfo();
        if (companyIntroductionBo==null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        }
        List<NewsInformationBO> newsInformationBO = infoService.queryNewsInformationInfo();
        if (newsInformationBO==null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        }
        List<ImageBo> imageBo =infoService.queryImageInfo();
        if (imageBo==null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        }
        PrivateConsultantBo privateConsultantBo=infoService.queryPrivateConsultantInfo();
        if (privateConsultantBo==null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        }
        WealthManagementBo wealthManagementBo =infoService.queryWealthManagementInfo();
        if (wealthManagementBo==null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        }
        BusinessSchoolBo businessSchoolBo=infoService.queryBusinessSchoolInfo();
        if(businessSchoolBo==null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        }
         List<Object> list =new ArrayList<Object>();
        list.add(privateConsultantBo);
        list.add(wealthManagementBo);
        list.add(businessSchoolBo);
        List<PrivateClubBo> privateClubBo =infoService.queryPrivateClub();
        if (privateClubBo==null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        }
        // simple code
        JSONObject result = new JSONObject();
        result.put("banner", bannerBo);   //image：src/image  url//http：//baidu.com
        result.put("companyIntroduction",companyIntroductionBo);
        result.put("news",newsInformationBO);
        result.put("image",imageBo);
        result.put("detail", list);
        result.put("club" ,privateClubBo);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(result));
        safeTextPrint(response, json);
    }
}