package com.guanghe.api.dao.mallDao;

import com.guanghe.api.entity.mallBo.BrandBo;
import com.guanghe.api.entity.mallBo.GoodsResponseBo;

import java.util.List;

/**
 * Created by yxw on 2018/8/2.
 */
public interface BrandDao {
    public  BrandBo queryBrand(Integer id);
    public List<BrandBo> queryBrandInfo(GoodsResponseBo goodsResponseBo);//通过二级分类id查询品牌
    public void updateBrand(BrandBo brand);
    public  void addBrand(BrandBo brand);
    public void deleteBrand(Integer Id);
    public  List<BrandBo> queryBrandOnclick(Integer id);
}
