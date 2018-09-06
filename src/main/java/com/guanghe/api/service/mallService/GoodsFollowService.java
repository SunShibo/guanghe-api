package com.guanghe.api.service.mallService;

import com.guanghe.api.dao.mallDao.GoodsFollowDao;
import com.guanghe.api.entity.mallBo.GoodsDetailBo;
import com.guanghe.api.entity.mallBo.GoodsFollowBo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by yxw on 2018/8/2.
 */
@Service("GoodsFollowService")
@Transactional
public class GoodsFollowService {
    @Resource
    private GoodsFollowDao goodsFollowDao;
    public void addGoodsFollow(GoodsFollowBo goodsFollow){
        goodsFollowDao.addGoodsFollow(goodsFollow);
    }
    public void deleteGoodsFollow(Integer id){
        goodsFollowDao.deleteGoodsFollow(id);
    }
    public List<GoodsFollowBo> queryMyGoodsFollow(Integer id){
        return  goodsFollowDao.queryMyGoodsFollow(id);
    }
    public GoodsFollowBo queryGoodsFollow(Integer id){
        return  goodsFollowDao.queryGoodsFollow(id);
    }
    public  List<GoodsDetailBo> queryUserFollow(Integer id){
        return goodsFollowDao.queryUserFollow(id);
    }
    public  List<Integer> queryUserFollowSku(Integer id){
        return  goodsFollowDao.queryUserFollowSku(id);
    }
    public GoodsFollowBo queryGoodsFollow1(GoodsFollowBo goodsFollowBo){
        return  goodsFollowDao.queryGoodsFollow1(goodsFollowBo);
    }
    public void  deleteFollow(GoodsFollowBo goodsFollowBo){
        goodsFollowDao.deleteFollow(goodsFollowBo);
    }
}
