package com.guanghe.api.dao;

import com.guanghe.api.entity.bo.QuestionnaireBo;

/**
 * Created by shishiming on 2018/8/7.
 */
public interface QuestionnaireDao {

    //查找count,判断用户是否测试过
    int getQuestionnaireCountByUserId(Integer userId);
    //新增用户测试记录
    int addQuestionnaire(QuestionnaireBo bo);
    //删除用户测试记录
    void deleteQuestionnaireById(Integer id);
    //查找用户记录ByUserId
    QuestionnaireBo getQuestionnaireByUserId(Integer userId);

}
