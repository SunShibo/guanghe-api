package com.guanghe.api.dao;

import com.guanghe.api.entity.bo.BannerBo;

import java.util.List;

/**
 * Created by yxw on 2018/7/20.
 */
public interface BannerDao {
    public List<BannerBo> queryBannerInfo();
    public void updateBanner(BannerBo bannerBo);
    public  void addBanner(BannerBo bannerBo);
    public void deleteBanner(Integer Id);
    public  BannerBo  queryBanner(Integer Id);
}
