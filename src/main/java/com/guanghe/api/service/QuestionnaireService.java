package com.guanghe.api.service;

import com.guanghe.api.dao.QuestionnaireDao;
import com.guanghe.api.entity.bo.QuestionnaireBo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * Created by shishiming on 2018/8/7.
 */
@Transactional
@Service("questionnaireService")
public class QuestionnaireService {

    @Resource
    private QuestionnaireDao questionnaireDao;

    //查找count,判断用户是否测试过
    public int getQuestionnaireCountByUserId(Integer userId){
        if (userId == 0 || userId == null){
            return 0;
        }
        return questionnaireDao.getQuestionnaireCountByUserId(userId);
    }
    //新增用户测试记录
    public int addQuestionnaire(QuestionnaireBo bo){
        if(null == bo.getScore() || null == bo.getUserId()){
            return 0;
        }
        return questionnaireDao.addQuestionnaire(bo);
    }
    //删除用户测试记录
    public void deleteQuestionnaireById(Integer id){
        if (id == null || id == 0){
            return;
        }
        questionnaireDao.deleteQuestionnaireById(id);
    }
    //查找用户记录ByUserId
    public QuestionnaireBo getQuestionnaireByUserId(Integer userId){
        if (userId == null || userId ==  0){
            return null;
        }

        return questionnaireDao.getQuestionnaireByUserId(userId);
    }
}
