package com.guanghe.api.service;

import com.guanghe.api.dao.ActivityReservationDao;
import com.guanghe.api.entity.bo.ActivityReservationBo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * Created by shishiming on 2018/8/30.
 */

@Service("activityReservationService")
@Transactional
public class ActivityReservationService {

    @Resource
    private ActivityReservationDao activityReservationDao;


    //新增会员活动报名
    int addActivityReservation(ActivityReservationBo activityReservationBo){
        if(activityReservationBo == null){
            return 0;
        }
        return activityReservationDao.addActivityReservation(activityReservationBo);
    }

}