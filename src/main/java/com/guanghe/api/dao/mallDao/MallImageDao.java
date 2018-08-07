package com.guanghe.api.dao.mallDao;

import com.guanghe.api.entity.mallBo.MallImageBo;

import java.util.List;

/**
 * Created by yxw on 2018/8/7.
 */
public interface MallImageDao {
    public List<MallImageBo> queryMallImageInfo();
    public void updateMallImage(MallImageBo mallImageBo);
    public  void addMallImage(MallImageBo mallImageBo);
    public void deleteMallImage(Integer Id);
    public MallImageBo queryMallImage(Integer Id);
}
