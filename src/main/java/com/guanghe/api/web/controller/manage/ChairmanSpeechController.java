package com.guanghe.api.web.controller.manage;

import com.guanghe.api.entity.bo.ChairmanSpeechBo;
import com.guanghe.api.entity.dto.ResultDTOBuilder;
import com.guanghe.api.service.ChairmanSpeechService;
import com.guanghe.api.util.JsonUtils;
import com.guanghe.api.util.StringUtils;
import com.guanghe.api.web.controller.base.BaseCotroller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;

/**
 * Created by yxw on 2018/7/18.
 */
@Controller
@RequestMapping("/ChairmanSpeech")
public class ChairmanSpeechController extends BaseCotroller {
    @Autowired
    private ChairmanSpeechService chairmanSpeechService;

    @RequestMapping("/delete")
    public void deleteActivityMessage(HttpServletResponse response, Integer id) {
        if (id == null || id == 0) {
            return;
        }
        ChairmanSpeechBo news = chairmanSpeechService.queryChairmanSpeechDetailById(id);

        if (news == null) {
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
        } else {
            chairmanSpeechService.deleteChairmanSpeech(id);
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
            safeJsonPrint(response, json);
        }
    }

    @RequestMapping("/add")
    public void addActivityMessage(HttpServletResponse response, ChairmanSpeechBo news) {
        if (news == null) {
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        } else if (StringUtils.isEmpty(news.getTitle())
                || StringUtils.isEmpty(news.getSource()) || StringUtils.isEmpty(news.getChairmanTpeech())
                || StringUtils.isEmpty(news.getCreateUser())) {
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        } else {
            chairmanSpeechService.addChairmanSpeech(news);
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
            safeTextPrint(response, json);
        }
    }

    @RequestMapping("/update")
    public void updateActivityMessage(HttpServletResponse response, ChairmanSpeechBo news) {
        ChairmanSpeechBo newsDetail = chairmanSpeechService.queryChairmanSpeechDetailById(news.getId());

        if (news == null) {
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        } else if (StringUtils.isEmpty(news.getTitle())
                || StringUtils.isEmpty(news.getSource()) || StringUtils.isEmpty(news.getChairmanTpeech())
                || StringUtils.isEmpty(news.getCreateUser()) || news.getId() == null) {
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
        } else if (newsDetail == null) {
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
        } else {
            newsDetail.setTitle(news.getTitle());
            newsDetail.setChairmanTpeech(news.getChairmanTpeech());
            newsDetail.setSource(news.getSource());
            newsDetail.setImage(news.getImage());
            newsDetail.setCreateUser(news.getCreateUser());
            chairmanSpeechService.updateChairmanSpeech(newsDetail);
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
            safeTextPrint(response, json);
        }
    }

    @RequestMapping("/detail")
    public void queryChairmanSpeechDetailById(HttpServletResponse response, Integer id) {
        if (id == null) {
            return;
        }

        ChairmanSpeechBo news = chairmanSpeechService.queryChairmanSpeechDetailById(id);
        if (news == null) {
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
        } else {
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(news));
            safeTextPrint(response, json);

        }


    }
}
