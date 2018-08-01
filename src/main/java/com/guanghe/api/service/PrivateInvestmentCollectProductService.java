package com.guanghe.api.service;

import com.guanghe.api.dao.PrivateInvestmentCollectProductDao;
import com.guanghe.api.entity.bo.PrivateInvestmentCollectProductBO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by shishiming on 2018/7/18.
 */
@Service("privateInvestmentCollectProductService")
@Transactional
public class PrivateInvestmentCollectProductService {

    @Resource
    private PrivateInvestmentCollectProductDao privateInvestmentCollectProductDao;

    public int queryPrivateInvestmentCollectProductCount(){
        return privateInvestmentCollectProductDao.queryCollectProductCount();
    }

    public List<PrivateInvestmentCollectProductBO> queryPrivateInvestmentCollectProductList(){
        List<PrivateInvestmentCollectProductBO> privateInvestmentCollectProduct = privateInvestmentCollectProductDao.queryCollectProductList();
        return privateInvestmentCollectProduct;

    }

    public PrivateInvestmentCollectProductBO queryPrivateInvestmentCollectProductById(Integer id){
        if (id == null){
            return null;
        }
        PrivateInvestmentCollectProductBO bo = privateInvestmentCollectProductDao.queryCollectProductById(id);
        return bo;
    }

    public void deletePrivateInvestmentCollectProduct(Integer id){
        if (id == null){
            return ;
        }
        privateInvestmentCollectProductDao.deleteCollectProduct(id);
    }

    public void addPrivateInvestmentCollectProduct(PrivateInvestmentCollectProductBO bo){
        if (bo == null){
            return ;
        }
        privateInvestmentCollectProductDao.addCollectProductBO(bo);
    }

    public void updatePrivateInvestmentCollectProductBO(PrivateInvestmentCollectProductBO bo){
        if (bo == null){
            return ;
        }
        privateInvestmentCollectProductDao.updateCollectProductBO(bo);
    }

}
