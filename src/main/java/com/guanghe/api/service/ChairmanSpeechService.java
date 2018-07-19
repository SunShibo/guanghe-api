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
    public ChairmanSpeechBo queryChairmanSpeechDetailById(Integer id){
       return chairmanSpeechDao.queryChairmanSpeechDetailById(id);
    }
    public  void updateChairmanSpeech (ChairmanSpeechBo chairmanSpeech){
        chairmanSpeechDao.updateChairmanSpeech(chairmanSpeech);
    }
    public  void deleteChairmanSpeech(Integer id){
        chairmanSpeechDao.deleteChairmanSpeech(id);
    }
    public  void addChairmanSpeech(ChairmanSpeechBo chairmanSpeech){
        chairmanSpeechDao.addChairmanSpeech(chairmanSpeech);
    }
}
