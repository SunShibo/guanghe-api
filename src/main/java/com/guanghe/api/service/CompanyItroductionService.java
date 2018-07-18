package com.guanghe.api.service;

import com.guanghe.api.dao.CompanyIntroductionDao;
import com.guanghe.api.entity.bo.CompanyIntroduction;
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
@Service("CompanyItroductionService")
@Transactional
public class CompanyItroductionService {
    @Resource
    private CompanyIntroductionDao companyItroductionDao;
    public String queryCompanyItroduction(Integer id){
        CompanyIntroduction chair=companyItroductionDao.queryCompanyIntroduction(id);
        return  JsonUtils.encapsulationJSON(Constant.INTERFACE_SUCC, "查询成功", JsonUtils.
                getJsonString4JavaPOJO(chair, DateUtils.LONG_DATE_PATTERN)).toString();
    }
    public  String updateCompanyItroduction (CompanyIntroduction companyItroduction){
        if(companyItroduction == null){
            return JsonUtils.encapsulationJSON(Constant.INTERFACE_PARAM_ERROR, "参数有误", "").toString();
        }
        if(companyItroduction.getId()== null || StringUtils.isEmpty(companyItroduction.getTitle())
                || StringUtils.isEmpty(companyItroduction.getCompany_introduction())){
            return JsonUtils.encapsulationJSON(Constant.INTERFACE_PARAM_ERROR, "参数有误", "").toString();
        }
        CompanyIntroduction company  = companyItroductionDao.queryCompanyIntroduction(companyItroduction.getId());
        if(company == null){
            return JsonUtils.encapsulationJSON(Constant.INTERFACE_PARAM_ERROR, "参数有误", "").toString();
        }
        companyItroductionDao.updateCompanyIntroduction(companyItroduction);
        return JsonUtils.encapsulationJSON(Constant.INTERFACE_SUCC, "修改成功", "").toString();
    }
    public  String deleteCompanyItroduction(Integer id){
        if(id == null){
            return JsonUtils.encapsulationJSON(Constant.INTERFACE_PARAM_ERROR, "参数有误", "").toString();
        }
        CompanyIntroduction companyIntroduction =companyItroductionDao.queryCompanyIntroduction(id);
        if (companyIntroduction == null){
            return JsonUtils.encapsulationJSON(Constant.INTERFACE_PARAM_ERROR, "参数有误", "").toString();        }
        companyItroductionDao.deleteCompanyIntroduction(id);
        return JsonUtils.encapsulationJSON(Constant.INTERFACE_SUCC, "成功", "").toString();
    }
    public  String addCompanyItroduction(CompanyIntroduction companyIntroduction){
        if(companyIntroduction == null){
            return JsonUtils.encapsulationJSON(Constant.INTERFACE_PARAM_ERROR, "参数有误", "").toString();
        }
        if(StringUtils.isEmpty(companyIntroduction.getTitle()) || StringUtils.isEmpty(companyIntroduction.getCompany_introduction())){
            return JsonUtils.encapsulationJSON(Constant.INTERFACE_PARAM_ERROR, "参数有误", "").toString();
        }
        // 添加数据
        companyItroductionDao.addCompanyIntroduction(companyIntroduction);
        return JsonUtils.encapsulationJSON(Constant.INTERFACE_SUCC, "成功", "").toString();
    }
}
