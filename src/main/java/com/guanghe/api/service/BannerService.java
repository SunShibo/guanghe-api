package com.guanghe.api.service;

import com.guanghe.api.dao.BannerDao;
import com.guanghe.api.entity.bo.BannerBo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by yxw on 2018/7/20.
 */
@Service("BannerService")
@Transactional
public class BannerService {
    @Resource
    private BannerDao  bannerDao;
    public List<BannerBo> queryBannerInfo(){
      return bannerDao.queryBannerInfo();
    }
}
