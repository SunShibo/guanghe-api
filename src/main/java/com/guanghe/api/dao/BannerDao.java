package com.guanghe.api.dao;

import com.guanghe.api.entity.bo.BannerBo;

import java.util.List;

/**
 * Created by yxw on 2018/7/20.
 */
public interface BannerDao {
    public List<BannerBo> queryBannerInfo();
}
