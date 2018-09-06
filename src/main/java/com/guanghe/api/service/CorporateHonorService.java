package com.guanghe.api.service;

import com.guanghe.api.dao.CorporateHonorDao;
import com.guanghe.api.entity.bo.CorporateHonorBo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by yxw on 2018/7/30.
 */
@Service("CorporateHonorService")
@Transactional
public class CorporateHonorService {
    @Resource
    private CorporateHonorDao corporateHonorDao;
    public CorporateHonorBo queryCorporateHonor(Integer id){
          return  corporateHonorDao.queryCorporateHonor(id);
    }

    public List<CorporateHonorBo> queryCorporateHonorDetail(){
        return  corporateHonorDao.queryCorporateHonorDetail();

    }
    public void updateCorporateHonor(CorporateHonorBo corporateHonor){
        corporateHonorDao.updateCorporateHonor(corporateHonor);
    }
    public  void addCorporateHonor(CorporateHonorBo corporateHonor){
        corporateHonorDao.addCorporateHonor(corporateHonor);
    }
    public void deleteCorporateHonor(Integer id){
        corporateHonorDao.deleteCorporateHonor(id);
    }
}
