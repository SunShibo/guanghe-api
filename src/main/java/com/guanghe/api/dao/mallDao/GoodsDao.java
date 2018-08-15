package com.guanghe.api.dao.mallDao;

import com.guanghe.api.entity.mallBo.GoodsBo;
import com.guanghe.api.entity.mallBo.GoodsResponseBo;

import java.util.List;

/**
 * Created by yxw on 2018/8/2.
 */
public interface GoodsDao {
    public void updateGoods(GoodsBo goodsBo);
    public void addGoods(GoodsBo goodsBo);
    public void deleteGoods(Integer Id);
    public  GoodsBo  queryGoods(Integer id);
    public List<GoodsBo> queryGoodsInfoSort(GoodsResponseBo goodsResponseBo);//排序
    public List<GoodsBo> queryHomeGoodsList();
}

