package com.guanghe.api.service;

import com.guanghe.api.dao.CompanyIntroductionDao;
import com.guanghe.api.entity.bo.CompanyIntroductionBo;
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
    public CompanyIntroductionBo queryCompanyItroduction(Integer id){
        return  companyItroductionDao.queryCompanyIntroduction(id);
    }
    public  void updateCompanyItroduction (CompanyIntroductionBo companyItroduction){

        companyItroductionDao.updateCompanyIntroduction(companyItroduction);
    }
    public  void deleteCompanyItroduction(Integer id){
        companyItroductionDao.deleteCompanyIntroduction(id);
    }
    public  void addCompanyItroduction(CompanyIntroductionBo companyIntroduction){

        companyItroductionDao.addCompanyIntroduction(companyIntroduction);
    }
    public  CompanyIntroductionBo queryCompanyIntroductionDetail(){
        return companyItroductionDao.queryCompanyIntroductionDetail();
    }
}
