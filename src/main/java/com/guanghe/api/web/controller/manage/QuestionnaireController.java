package com.guanghe.api.web.controller.manage;

import com.guanghe.api.entity.bo.QuestionnaireBo;
import com.guanghe.api.entity.dto.ResultDTOBuilder;
import com.guanghe.api.service.QuestionnaireService;
import com.guanghe.api.util.JsonUtils;
import com.guanghe.api.web.controller.base.BaseCotroller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by shishiming on 2018/8/7.
 */
@Controller
@RequestMapping("/questionnaire")
public class QuestionnaireController extends BaseCotroller{

    @Resource
    private QuestionnaireService questionnaireService;

    @RequestMapping("/add ")
    public void addQuestionnaire(HttpServletResponse response,QuestionnaireBo bo){
        int count = questionnaireService.getQuestionnaireCountByUserId(bo.getUserId());
        if (count == 1){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000002", "数据已存在！"));
            safeTextPrint(response, json);
            return;
        }
        if(bo == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001", "参数异常！"));
            safeTextPrint(response, json);
            return;
        }
        if(bo.getUserId() == null || bo.getScore() == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001","参数异常！"));
            safeTextPrint(response, json);
            return;
        }
        int id = questionnaireService.addQuestionnaire(bo);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);
    }

    @RequestMapping("/details ")
    public void getQuestionnaireByUserId(HttpServletResponse response,Integer userId){

        if(userId == null || userId == 0){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001","参数异常！"));
            safeTextPrint(response, json);
            return;
        }
        QuestionnaireBo bo = questionnaireService.getQuestionnaireByUserId(userId);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(bo));
        safeTextPrint(response, json);
    }

    @RequestMapping("/delete ")
    public void deleteQuestionnaireById(HttpServletResponse response,Integer id){

        if(id == null || id == 0){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001","参数异常！"));
            safeTextPrint(response, json);
            return;
        }
        questionnaireService.deleteQuestionnaireById(id);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);
    }
}
