package com.guanghe.api.dao.mallDao;

import com.alipay.api.domain.GoodsDetail;
import com.guanghe.api.entity.mallBo.GoodsBo;
import com.guanghe.api.entity.mallBo.GoodsDetailBo;
import com.guanghe.api.entity.mallBo.GoodsListBo;
import com.guanghe.api.entity.mallBo.GoodsResponseBo;

import java.util.List;
import java.util.Map;

/**
 * Created by yxw on 2018/8/2.
 */
public interface GoodsDao {
    public int queryGoodsCount(GoodsResponseBo goodsResponseBo);
    public void updateGoods(GoodsBo goodsBo);
    public void addGoods(GoodsBo goodsBo);
    public void deleteGoods(Integer Id);
    public  GoodsBo  queryGoods(Integer id);
    public List<GoodsListBo> queryGoodsInfoSort(Map<String,Object> map);//排序
    public List<GoodsBo> queryHomeGoodsList();
    public  List<GoodsDetailBo> queryGoodsdetail(Integer id);
    public  List<GoodsListBo> queryGoodsbrandsDetailList(Integer id);
}

