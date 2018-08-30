package com.guanghe.api.web.controller.manage;

import com.guanghe.api.entity.bo.MembershipActivitesBo;
import com.guanghe.api.entity.dto.ResultDTOBuilder;
import com.guanghe.api.query.QueryInfo;
import com.guanghe.api.service.MembershipActivitesService;
import com.guanghe.api.util.JsonUtils;
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

    @RequestMapping("/list")
    public void getMembershipActivitesList(HttpServletResponse response,HttpServletRequest request,Integer pageNo, Integer pageSize){

        QueryInfo queryInfo = getQueryInfo(pageNo, pageSize);

        Map<String, Object> map = new HashMap<String, Object>();
        if(queryInfo != null){
            map.put("pageOffset", queryInfo.getPageOffset());
            map.put("pageSize", queryInfo.getPageSize());
        }

        Map<String, Object> resultMap = new HashMap<String, Object>();
        resultMap.put("data",membershipActivitesService.getMembershipActivitesCount(map));
        resultMap.put("count",membershipActivitesService.getMembershipActivitesList(map));
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

        MembershipActivitesBo bo = membershipActivitesService.getMembershipActivitesDetails(id);
        if (bo == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
            return;
        }

        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(bo));
        safeTextPrint(response, json);
    }


}
