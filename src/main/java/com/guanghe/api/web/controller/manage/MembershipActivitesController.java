package com.guanghe.api.web.controller.manage;

import com.guanghe.api.entity.bo.ActivityReservationBo;
import com.guanghe.api.entity.bo.MembershipActivitesBo;
import com.guanghe.api.entity.bo.UserBO;
import com.guanghe.api.entity.dto.ResultDTOBuilder;
import com.guanghe.api.pop.SystemConfig;
import com.guanghe.api.query.QueryInfo;
import com.guanghe.api.service.ActivityReservationService;
import com.guanghe.api.service.MembershipActivitesService;
import com.guanghe.api.util.JsonUtils;
import com.guanghe.api.util.StringUtils;
import com.guanghe.api.web.controller.base.BaseCotroller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by shishiming on 2018/8/30.
 */

@Controller
@RequestMapping("/activites")
public class MembershipActivitesController extends BaseCotroller{

    @Autowired
    private MembershipActivitesService membershipActivitesService;

    @Autowired
    private ActivityReservationService activityReservationService;

    @RequestMapping("/list")
    public void getMembershipActivitesList(HttpServletResponse response,HttpServletRequest request,Integer pageNo, Integer pageSize){

        QueryInfo queryInfo = getQueryInfo(pageNo, pageSize);

        Map<String, Object> map = new HashMap<String, Object>();
        if(queryInfo != null){
            map.put("pageOffset", queryInfo.getPageOffset());
            map.put("pageSize", queryInfo.getPageSize());
        }

        Map<String, Object> resultMap = new HashMap<String, Object>();
        resultMap.put("count",membershipActivitesService.getMembershipActivitesCount(map));
        resultMap.put("data",membershipActivitesService.getMembershipActivitesList(map));
        resultMap.put("Url", "https://" + SystemConfig.getString("image_bucketName") + ".oss-cn-beijing.aliyuncs.com/");
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(resultMap));

        safeTextPrint(response, json);
    }



    @RequestMapping("/details")
    public void getMembershipActivitesDetails (HttpServletResponse response,HttpServletRequest request, Integer id){


        if (id == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }

        //判断用户是否登录
        UserBO userBO = super.getLoginUser(request);
        if (userBO == null) {
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007", "用户未登录！"));
            super.safeJsonPrint(response, result);
            return;
        }

        MembershipActivitesBo bo = membershipActivitesService.getMembershipActivitesDetails(id);
        if (bo == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
            return;
        }

        Map<String,Object> map = new HashMap<String, Object>();
        map.put("Url", "https://" + SystemConfig.getString("image_bucketName") + ".oss-cn-beijing.aliyuncs.com/");
        map.put("data",bo);

        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(map));
        safeTextPrint(response, json);
    }

    @RequestMapping("/add")
    public void add (HttpServletResponse response,HttpServletRequest request, ActivityReservationBo bo){

        UserBO userBO = super.getLoginUser(request);
        /* 2. 验证账户状态 */
        if (userBO == null ) {
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007" , "用户未登录！")) ;
            super.safeJsonPrint(response , result);
            return ;
        }
        if(bo == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }
        if(StringUtils.isEmpty(bo.getName())|| StringUtils.isEmpty(bo.getPhone()) || StringUtils.isEmpty(bo.getCorporateName())
            ||StringUtils.isEmpty(bo.getCorporateName())    || null == bo.getMembershipActivitesId() || null == bo.getPersonNum()){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }

        //从缓存中获取验证码
//        String mobileAuthCode = "";
//        mobileAuthCode = RedissonHandler.getInstance().get(bo.getPhone() + "_activity");
//        if("".equals(mobileAuthCode) || !code.equals(mobileAuthCode)){
//            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001","验证码错误！"));
//            safeTextPrint(response, json);
//            return;
//        }
        bo.setUserId(userBO.getId());
        activityReservationService.addActivityReservation(bo);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);
    }
}
