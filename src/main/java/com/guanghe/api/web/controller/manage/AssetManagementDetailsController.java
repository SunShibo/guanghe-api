package com.guanghe.api.web.controller.manage;

import com.guanghe.api.entity.bo.AssetManagementDetailsBO;
import com.guanghe.api.entity.dto.ResultDTOBuilder;
import com.guanghe.api.pop.SystemConfig;
import com.guanghe.api.service.AssetManagementDetailsService;
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
 * Created by shishiming on 2018/7/23.
 */
@Controller
@RequestMapping("/assetManagement")
public class AssetManagementDetailsController extends BaseCotroller {

    @Resource
    private AssetManagementDetailsService assetManagementDetailsService;

    @RequestMapping("/page")
    public ModelAndView page(){
        ModelAndView view = new ModelAndView();
        view.setViewName("/asset/asset_management");
        view.addObject("Url", "https://" + SystemConfig.getString("image_bucketName") + ".oss-cn-beijing.aliyuncs.com/");
        return view;
    }

    /**
     * 根据修改资产管理
     * @param asset
     */
    @RequestMapping("/update")
    public void updateAssetManagement(HttpServletResponse response, AssetManagementDetailsBO asset){


        AssetManagementDetailsBO oldBO = assetManagementDetailsService.queryAssetManagementDetails();
        if (oldBO == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004","没有找到该条记录！"));
            safeTextPrint(response, json);
            return;
        }

        assetManagementDetailsService.updateAssetManagement();
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);
    }



    /**
     * 查询资产管理详情
     */
    @RequestMapping("/detail")
    public void queryNewsInformationById(HttpServletResponse response){

        AssetManagementDetailsBO Asset = assetManagementDetailsService.queryAssetManagementDetails();
        if (Asset == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
            return;
        }

        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(Asset));
        safeTextPrint(response, json);

    }

    @RequestMapping("/wapdetail")
    public void queryAssetManagementDetailsWap(HttpServletResponse response){

        List<AssetManagementDetailsBO> Asset = assetManagementDetailsService.queryAssetManagementDetailsWap();
        if (Asset == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
            return;
        }

        JSONObject result = new JSONObject();
        result.put("wapdetail", Asset);
        result.put("Url","https://" + SystemConfig.getString("image_bucketName")+".oss-cn-beijing.aliyuncs.com/");
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(result));
        safeTextPrint(response, json);

    }
}