package com.guanghe.api.dao;

import com.guanghe.api.entity.bo.ChairmanSpeech;

/**
 * Created by yxw on 2018/7/18.
 */
public interface ChairmanSpeechDao {
    public ChairmanSpeech queryChairmanSpeechDetailById(Integer id);
    public void updateChairmanSpeech(ChairmanSpeech ChairmanSpeech);
    public  void addChairmanSpeech(ChairmanSpeech ChairmanSpeech);
    public void deleteChairmanSpeech(Integer Id);
}
