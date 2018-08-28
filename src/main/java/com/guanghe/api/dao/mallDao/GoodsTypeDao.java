package com.guanghe.api.dao.mallDao;

import com.guanghe.api.entity.mallBo.GoodTypeBo;

import java.util.List;

/**
 * Created by yxw on 2018/8/1.
 */
public interface GoodsTypeDao {
    public  GoodTypeBo queryGoodTypeById(Integer pid);//查询目录
    public  List<GoodTypeBo> queryGoodType();//通过pid 查一级目录
    public  void updateGoodType(GoodTypeBo goodTypeBo);
    public  void addGoodType(GoodTypeBo GoodTypeBo);
    public void deleteGoodType(Integer Id);
    public  GoodTypeBo queryGoodTypeFirstById(Integer id);
    public  GoodTypeBo queryGoodTypeSecondById(Integer id);

}
