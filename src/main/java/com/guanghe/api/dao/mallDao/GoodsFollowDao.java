package com.guanghe.api.dao.mallDao;

import com.guanghe.api.entity.mallBo.GoodsDetailBo;
import com.guanghe.api.entity.mallBo.GoodsFollowBo;

import java.util.List;

/**
 * Created by yxw on 2018/8/2.
 */
public interface GoodsFollowDao {
    public void addGoodsFollow(GoodsFollowBo goodsFollow);
    public void deleteGoodsFollow(Integer Id);
    public List<GoodsFollowBo> queryMyGoodsFollow(Integer id);//用户查询已经关注信息
    public GoodsFollowBo queryGoodsFollow(Integer id);
    public  List<GoodsDetailBo> queryUserFollow(Integer id);
    public  List<Integer> queryUserFollowSku(Integer id);
}
