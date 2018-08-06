package com.guanghe.api.service.mallService;

import com.guanghe.api.dao.mallDao.GoodsDao;
import com.guanghe.api.entity.mallBo.GoodsBo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by yxw on 2018/8/2.
 */
@Service("GoodsService")
@Transactional
public class GoodsService {
    @Resource
    private GoodsDao goodsDao;
    public List<GoodsBo> queryGoodsInfoByType(Integer id){
        return goodsDao.queryGoodsInfoByType(id);
    }
    public List<GoodsBo> queryGoodsInfo(Integer brandId){
        return  goodsDao.queryGoodsInfo(brandId);
    }
    public void updateGoods(GoodsBo goodsBo){
        goodsDao.updateGoods(goodsBo);
    }
    public void addGoods(GoodsBo goodsBo){
        goodsDao.addGoods(goodsBo);
    }
    public void deleteGoods(Integer Id){
        goodsDao.deleteGoods(Id);
    }
    public  GoodsBo  queryGoods(Integer id){
        return goodsDao.queryGoods(id);
    }
    public List<GoodsBo> queryGoodsInfoSort(Integer sortStatu){
        return goodsDao.queryGoodsInfoSort(sortStatu);
    }
}
