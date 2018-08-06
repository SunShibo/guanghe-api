package com.guanghe.api.service.mallService;

import com.guanghe.api.dao.mallDao.BrandDao;
import com.guanghe.api.entity.mallBo.BrandBo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by yxw on 2018/8/2.
 */
@Service("BrandService")
@Transactional
public class BrandService {
    @Resource
    private BrandDao brandDao;
    public  BrandBo queryBrand(Integer id){
        return  brandDao.queryBrand(id);
    }
    //通过二级分类id查询品牌
    public List<BrandBo> queryBrandInfo(Integer id){
        return brandDao.queryBrandInfo(id);
    }
    public void updateBrand(BrandBo brand){
        brandDao.updateBrand(brand);
    }
    public  void addBrand(BrandBo brand){
        brandDao.addBrand(brand);
    }
    public void deleteBrand(Integer id){
        brandDao.deleteBrand(id);
    }
    public  List<BrandBo> queryBrandOnclick(Integer id){
        return brandDao.queryBrandOnclick(id);
    }
}
