package com.guanghe.api.dao;

import com.guanghe.api.entity.bo.ExpertIectureHallBo;

import java.util.List;
import java.util.Map;

/**
 * Created by yxw on 2018/7/31.
 */
public interface ExpertIectureHallDao {
    public int queryExpertIectureHallCount();

    public List<ExpertIectureHallBo> queryExpertIectureHallList(Map<String, Object> map);

    public ExpertIectureHallBo queryExpertIectureHallById(Integer newId);

    public void deleteExpertIectureHall(Integer newId);

    public void addExpertIectureHall(ExpertIectureHallBo news);

    public void updateExpertIectureHall(ExpertIectureHallBo news);
}