package com.guanghe.api.service;

import com.guanghe.api.dao.BigEventDao;
import com.guanghe.api.entity.bo.BigEvent;
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
    public String queryBigEvent(Integer id){
        BigEvent chair=bigEventDao.queryBigEvent(id);
        return  JsonUtils.encapsulationJSON(Constant.INTERFACE_SUCC, "查询成功", JsonUtils.
                getJsonString4JavaPOJO(chair, DateUtils.LONG_DATE_PATTERN)).toString();
    }
    public  String updateBigEvent (BigEvent bigEvent){
        if(bigEvent == null){
            return JsonUtils.encapsulationJSON(Constant.INTERFACE_PARAM_ERROR, "参数有误", "").toString();
        }
        if(StringUtils.isEmpty(bigEvent.getTitle())
                || StringUtils.isEmpty(bigEvent.getSourse()) || StringUtils.isEmpty(bigEvent.getBig_event())
                || StringUtils.isEmpty(bigEvent.getCreate_user())){
            return JsonUtils.encapsulationJSON(Constant.INTERFACE_PARAM_ERROR, "参数有误", "").toString();
        }
        BigEvent bigEvent1  = bigEventDao.queryBigEvent(bigEvent.getId());
        if(bigEvent1 == null){
            return JsonUtils.encapsulationJSON(Constant.INTERFACE_FAIL, "news不存在", "").toString();
        }
        bigEventDao.updateBigEvent(bigEvent);
        return JsonUtils.encapsulationJSON(Constant.INTERFACE_SUCC, "修改成功", "").toString();
    }
    public  String deleteBigEvent(Integer id){
        if(id == null){
            return JsonUtils.encapsulationJSON(Constant.INTERFACE_PARAM_ERROR, "参数有误", "").toString();
        }
        BigEvent bigEvent1 = bigEventDao.queryBigEvent(id);
        if (bigEvent1 == null){
            return JsonUtils.encapsulationJSON(Constant.INTERFACE_PARAM_ERROR, "参数有误", "").toString();
        }
        bigEventDao.deleteBigEvent(id);
        return JsonUtils.encapsulationJSON(Constant.INTERFACE_SUCC, "删除成功", "").toString();
    }
    public  String addBigEvent(BigEvent bigEvent){
        if(bigEvent == null){
            return JsonUtils.encapsulationJSON(Constant.INTERFACE_PARAM_ERROR, "参数有误", "").toString();
        }
        if(StringUtils.isEmpty(bigEvent.getTitle())
                || StringUtils.isEmpty(bigEvent.getSourse()) || StringUtils.isEmpty(bigEvent.getBig_event())
                || StringUtils.isEmpty(bigEvent.getCreate_user())){
            return JsonUtils.encapsulationJSON(Constant.INTERFACE_PARAM_ERROR, "参数有误", "").toString();
        }
        bigEventDao.addBigEvent(bigEvent);
        return JsonUtils.encapsulationJSON(Constant.INTERFACE_SUCC, "添加news成功", "").toString();

    }
}





