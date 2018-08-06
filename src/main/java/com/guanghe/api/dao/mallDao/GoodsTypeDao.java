package com.guanghe.api.dao.mallDao;

import com.guanghe.api.entity.mallBo.GoodTypeBo;

import java.util.List;

/**
 * Created by yxw on 2018/8/1.
 */
public interface GoodsTypeDao {
    public  GoodTypeBo queryGoodTypeById(Integer pid);//查询目录
    public  List<GoodTypeBo> queryGoodTypeByPid(Integer id);//通过pid 查一级目录
    public  void updateGoodType(GoodTypeBo goodTypeBo);
    public  void addGoodType(GoodTypeBo GoodTypeBo);
    public void deleteGoodType(Integer Id);
}
