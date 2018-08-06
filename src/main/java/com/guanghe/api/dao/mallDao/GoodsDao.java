package com.guanghe.api.dao.mallDao;

import com.guanghe.api.entity.mallBo.GoodsBo;

import java.util.List;

/**
 * Created by yxw on 2018/8/2.
 */
public interface GoodsDao {
    public  List<GoodsBo> queryGoodsInfoByType(Integer id);//通过二级分类id查商品
    public List<GoodsBo> queryGoodsInfo(Integer brandId);//通过品牌查询商品
    public void updateGoods(GoodsBo goodsBo);
    public void addGoods(GoodsBo goodsBo);
    public void deleteGoods(Integer Id);
    public  GoodsBo  queryGoods(Integer id);
    public List<GoodsBo> queryGoodsInfoSort(Integer sortStatu);//排序
}

