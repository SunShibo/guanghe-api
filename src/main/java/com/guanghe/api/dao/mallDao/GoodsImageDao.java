package com.guanghe.api.dao.mallDao;

import com.guanghe.api.entity.mallBo.GoodsImg;

import java.util.List;

/**
 * Created by yxw on 2018/8/2.
 */
public interface GoodsImageDao {
    public List<GoodsImg> queryGoodsImgInfoByid(Integer id);//通过商品Id查图
    public void updateGoodsImg(GoodsImg goodsImg);
    public void addGoodsImg(GoodsImg goodsImg);
    public void deleteGoodsImg(Integer id);
    public  GoodsImg queryGoodImg(Integer id);
}
