package com.guanghe.api.service.mallService;

import com.guanghe.api.dao.mallDao.ShoppingCarDao;
import com.guanghe.api.entity.mallBo.ShoppingCarBo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by shishiming on 2018/8/2.
 */
@Service("shoppingCarService")
@Transactional
public class ShoppingCarService {

    @Resource
    private ShoppingCarDao shoppingCarDao;

    //添加ShoppingCar
    public int addShoppingCar(ShoppingCarBo shoppingCarBO){
        if(shoppingCarBO.getUserId() == 0 || shoppingCarBO.getUserId() == null){
            return 0;
        }
        if(shoppingCarBO.getGoodsId() == 0 || shoppingCarBO.getGoodsId() == null){
            return 0;
        }
        return shoppingCarDao.addShoppingCar(shoppingCarBO);
    }

    //删除ShoppingCar byId
    public void deleteShoppingCarbyId(Integer id){
        shoppingCarDao.deleteShoppingCarbyId(id);
    }
    //修改ShoppingCar byId
    public void updateShoppingCarbyId(ShoppingCarBo shoppingCarBO){
        if(shoppingCarBO.getId() == 0 || shoppingCarBO.getId() == null){
            return ;
        }
        if(shoppingCarBO.getUserId() == 0 || shoppingCarBO.getUserId() == null){
            return ;
        }
        if(shoppingCarBO.getGoodsId() == 0 || shoppingCarBO.getGoodsId() == null){
            return ;
        }
        shoppingCarDao.updateShoppingCarbyId(shoppingCarBO);

    }
    //查询ShoppingCarList
    public List<ShoppingCarBo> queryShoppingCarList(Map<String, Object> map){
        return shoppingCarDao.queryShoppingCarList(map);
    }
    //查询ShoppingCarById
    public ShoppingCarBo queryShoppingCarById(Integer id){
        if(id == null || id == 0){
            return null;
        }
        return shoppingCarDao.queryShoppingCarById(id);
    }

    public void deleteShoppingCarbyIds(List<String> ids) {
        if(ids == null){
            return ;
        }
        shoppingCarDao.deleteShoppingCarByIds(ids);
    }

    public List<String> queryInvalidGoodsList(HashMap<String,Object> parMap) {
        if (parMap == null){
            return null;
        }
        return shoppingCarDao.queryInvalidGoodsList(parMap);
    }
}
