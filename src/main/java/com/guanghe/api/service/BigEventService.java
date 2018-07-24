package com.guanghe.api.service;

import com.guanghe.api.dao.BigEventDao;
import com.guanghe.api.entity.bo.BigEventBo;
import com.guanghe.api.entity.dto.ResultDTOBuilder;
import com.guanghe.api.pop.Constant;
import com.guanghe.api.util.DateUtils;
import com.guanghe.api.util.JsonUtils;
import com.guanghe.api.util.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * Created by yxw on 2018/7/18.
 */
@Service("BigEventService")
@Transactional
public class BigEventService {
    @Resource
    private BigEventDao bigEventDao;
    public BigEventBo queryBigEvent(Integer id){
        return  bigEventDao.queryBigEvent(id);

    }
    public  void updateBigEvent (BigEventBo bigEvent){
        bigEventDao.updateBigEvent(bigEvent);
    }
    public  void deleteBigEvent(Integer id){
        bigEventDao.deleteBigEvent(id);
    }
    public  void addBigEvent(BigEventBo bigEvent){
             bigEventDao.addBigEvent(bigEvent);
    }
    public BigEventBo queryBigEventDetail(){
        return  bigEventDao.queryBigEventDetail();
    }
}





