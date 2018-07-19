package com.guanghe.api.service;

import com.guanghe.api.dao.ChairmanSpeechDao;

import com.guanghe.api.entity.bo.ChairmanSpeechBo;
import com.guanghe.api.entity.dto.ResultDTOBuilder;
import com.guanghe.api.pop.Constant;
import com.guanghe.api.util.DateUtils;
import com.guanghe.api.util.JsonUtils;
import com.guanghe.api.util.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * Created by yxw on 2018/7/18.
 */
@Service("ChairmanSpeechService")
@Transactional
public class ChairmanSpeechService {
    @Resource
    private ChairmanSpeechDao chairmanSpeechDao;
    public String queryChairmanSpeechDetailById(Integer id){
        ChairmanSpeechBo chair=chairmanSpeechDao.queryChairmanSpeechDetailById(id);
        return  JsonUtils.encapsulationJSON(Constant.INTERFACE_SUCC, "查询成功", JsonUtils.
                getJsonString4JavaPOJO(chair, DateUtils.LONG_DATE_PATTERN)).toString();
    }
    public  String updateChairmanSpeech (ChairmanSpeechBo chairmanSpeech){
        if(chairmanSpeech == null){
            return JsonUtils.encapsulationJSON(Constant.INTERFACE_PARAM_ERROR, "参数有误", "").toString();
        }
        if(chairmanSpeech.getId()== null || StringUtils.isEmpty(chairmanSpeech.getTitle())
                || StringUtils.isEmpty(chairmanSpeech.getChairmanTpeech())){
            return JsonUtils.encapsulationJSON(Constant.INTERFACE_PARAM_ERROR, "参数有误", "").toString();
        }
        ChairmanSpeechBo cspeech = chairmanSpeechDao.queryChairmanSpeechDetailById(chairmanSpeech.getId());
        if(cspeech == null){
            return JsonUtils.encapsulationJSON(Constant.INTERFACE_PARAM_ERROR, "参数有误", "").toString();
        }
        chairmanSpeechDao.updateChairmanSpeech(chairmanSpeech);
        return JsonUtils.encapsulationJSON(Constant.INTERFACE_SUCC, "修改成功", "").toString();
    }
    public  String deleteChairmanSpeech(Integer id){
        if(id == null){
            return JsonUtils.encapsulationJSON(Constant.INTERFACE_PARAM_ERROR, "参数有误", "").toString();
        }
        ChairmanSpeechBo chair = chairmanSpeechDao.queryChairmanSpeechDetailById(id);
        if (chair == null){
            return JsonUtils.encapsulationJSON(Constant.INTERFACE_PARAM_ERROR, "参数有误", "").toString();
        }
        chairmanSpeechDao.deleteChairmanSpeech(id);
        return JsonUtils.encapsulationJSON(Constant.INTERFACE_SUCC, "成功", "").toString();
    }
    public  String addChairmanSpeech(ChairmanSpeechBo chairmanSpeech){
        if(chairmanSpeech == null){
            return JsonUtils.encapsulationJSON(Constant.INTERFACE_PARAM_ERROR, "参数有误", "").toString();
        }
        if(StringUtils.isEmpty(chairmanSpeech.getTitle()) || StringUtils.isEmpty(chairmanSpeech.getChairmanTpeech())){
            return JsonUtils.encapsulationJSON(Constant.INTERFACE_PARAM_ERROR, "参数有误", "").toString();
        }
        // 添加数据
        chairmanSpeechDao.addChairmanSpeech(chairmanSpeech);
        return JsonUtils.encapsulationJSON(Constant.INTERFACE_SUCC, "成功", "").toString();
    }
}
