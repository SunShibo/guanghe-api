package com.guanghe.api.service.mallService;

import com.guanghe.api.dao.mallDao.GoodsDao;
import com.guanghe.api.entity.mallBo.GoodsBo;
import com.guanghe.api.entity.mallBo.GoodsResponseBo;
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
    public List<GoodsBo> queryGoodsInfoSort(GoodsResponseBo goodsResponseBo){
        return goodsDao.queryGoodsInfoSort(goodsResponseBo);
    }
    public List<GoodsBo> queryHomeGoodsList(){
        return  goodsDao.queryHomeGoodsList();
    }

}
