package com.guanghe.api.service;

import com.guanghe.api.dao.MembershipActivitesDao;
import com.guanghe.api.entity.bo.MembershipActivitesBo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * Created by shishiming on 2018/8/30.
 */

@Service("membershipActivitesService")
@Transactional
public class MembershipActivitesService {

    @Resource
    private MembershipActivitesDao membershipActivitesDao;


    //查询活动条数
    public int getMembershipActivitesCount(Map<String,Object> map){
        return membershipActivitesDao.getMembershipActivitesCount(map);
    }
    //查询活动列表
    public List<MembershipActivitesBo> getMembershipActivitesList(Map<String,Object> map){
        return membershipActivitesDao.getMembershipActivitesList(map);
    }
    //查询活动详情
    public MembershipActivitesBo getMembershipActivitesDetails(Integer id){
        if(id == null){
            return null;
        }
        return membershipActivitesDao.getMembershipActivitesDetails(id);
    }

}
