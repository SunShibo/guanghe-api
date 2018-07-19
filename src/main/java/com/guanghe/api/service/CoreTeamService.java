package com.guanghe.api.service;

import com.guanghe.api.dao.CoreTeamDao;
import com.guanghe.api.entity.bo.CoreTeamBo;
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
@Service("CoreTeamService")
@Transactional
public class CoreTeamService {
    @Resource
    private CoreTeamDao coreTeamDao;
    public String queryCoreTeam(Integer id){
        CoreTeamBo coreTeam=coreTeamDao.queryCoreTeam(id);
        return  JsonUtils.encapsulationJSON(Constant.INTERFACE_SUCC, "查询成功", JsonUtils.
                getJsonString4JavaPOJO(coreTeam, DateUtils.LONG_DATE_PATTERN)).toString();
    }
    public  String updateCoreTeam (CoreTeamBo coreTeam){
        if(coreTeam == null){
            return JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0", "参数有误")) ;
        }
        if(coreTeam.getId()== null || StringUtils.isEmpty(coreTeam.getTitle())
                || StringUtils.isEmpty(coreTeam.getCoreTeam())){
            return JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0", "参数有误")) ;
        }
        CoreTeamBo coreTeam1  = coreTeamDao.queryCoreTeam(coreTeam.getId());
        if(coreTeam1 == null){
            return JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0", "数据不存在")) ;
        }
        coreTeamDao.updateCoreTeam(coreTeam);
        return JsonUtils.encapsulationJSON(Constant.INTERFACE_SUCC, "修改成功", "").toString();    }
    public  String deleteCoreTeam(Integer id){
        if(id == null){
            return JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0", "参数有误")) ;
        }
        CoreTeamBo coreTeam=coreTeamDao.queryCoreTeam(id);
        if (coreTeam == null){
            return JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0", "数据不存在或者已经删除")) ;
        }
        coreTeamDao.deleteCoreTeam(id);
        return JsonUtils.encapsulationJSON(Constant.INTERFACE_SUCC, "修改成功", "").toString();
    }
    public  String addCoreTeam(CoreTeamBo coreTeam){
        if(coreTeam == null){
            return JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0", "参数有误")) ;
        }
        if(StringUtils.isEmpty(coreTeam.getTitle()) || StringUtils.isEmpty(coreTeam.getCoreTeam())){
            return JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0", "参数有误")) ;
        }
        // 添加数据
        coreTeamDao.addCoreTeam(coreTeam);
        return JsonUtils.encapsulationJSON(Constant.INTERFACE_SUCC, "修改成功", "").toString();
    }
}
