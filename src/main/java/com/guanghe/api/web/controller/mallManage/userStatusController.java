package com.guanghe.api.web.controller.mallManage;

import com.guanghe.api.entity.bo.QuestionnaireBo;
import com.guanghe.api.entity.bo.UserBO;
import com.guanghe.api.entity.dto.ResultDTOBuilder;
import com.guanghe.api.service.BindingService;
import com.guanghe.api.service.QuestionnaireService;
import com.guanghe.api.util.JsonUtils;
import com.guanghe.api.web.controller.base.BaseCotroller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by yxw on 2018/9/26.
 */
@Controller
@RequestMapping("/userStatus")
public class userStatusController extends BaseCotroller {
    @Resource
            private QuestionnaireService questionnaireService;
    @Resource
            private BindingService bindingService;


    @RequestMapping("/info")
    public void queryShoppingCarById(HttpServletResponse response,HttpServletRequest request){
         UserBO userBO = super.getLoginUser(request) ;

		/* 2. 验证账户状态 */
        if (userBO == null ) {
            String result = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0010007" , "用户未登录！")) ;
            super.safeJsonPrint(response , result);
            return ;
        }
        QuestionnaireBo questionnaireBo = questionnaireService.getQuestionnaireByUserId(userBO.getId());
        int count = bindingService.queryInfo(userBO.getId());
        Map<String, Object> resultMap = new HashMap<String, Object>();
        resultMap.put("questionnaireBo",questionnaireBo);
        resultMap.put("count",count);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(resultMap));

        safeTextPrint(response, json);

    }
}
