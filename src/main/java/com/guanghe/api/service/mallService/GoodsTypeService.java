package com.guanghe.api.service.mallService;

import com.guanghe.api.dao.mallDao.GoodsTypeDao;
import com.guanghe.api.entity.mallBo.GoodTypeBo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by yxw on 2018/8/1.
 */
@Service("GoodsTypeService")
@Transactional
public class GoodsTypeService {
    @Resource
    private GoodsTypeDao goodsTypeDao;
    /*
    *查所有
    */
    public  List<GoodTypeBo> queryGoodTypeByPid(Integer id){
        return  goodsTypeDao.queryGoodTypeByPid(id);
    }
    /*
    *通过二级查一级
    */
    public  GoodTypeBo queryGoodTypeById(Integer pid){
         return goodsTypeDao.queryGoodTypeById(pid);
    }
    public  void updateGoodType(GoodTypeBo goodTypeBo){
        goodsTypeDao.updateGoodType(goodTypeBo);
    }
    public  void addGoodType(GoodTypeBo goodTypeBo){
        goodsTypeDao.addGoodType(goodTypeBo);
    }
    public void deleteGoodType(Integer id){
        goodsTypeDao.deleteGoodType(id);
    }
}
