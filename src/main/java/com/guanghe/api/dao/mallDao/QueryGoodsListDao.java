package com.guanghe.api.dao.mallDao;

import com.guanghe.api.entity.mallBo.GoodsListBo;
import com.guanghe.api.entity.mallBo.QueryGoodsResponsBo;

import java.util.List;
import java.util.Map;

/**
 * Created by yxw on 2018/8/30.
 */
public interface QueryGoodsListDao {
    public List<GoodsListBo> QueryGoodsList(Map<String,Object> map);
    public  int  queryGoodsCount(QueryGoodsResponsBo queryGoodsResponsBo);

}
