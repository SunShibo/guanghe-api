package com.guanghe.api.dao;

import com.guanghe.api.entity.bo.CompanyIntroduction;

/**
 * Created by yxw on 2018/7/18.
 */
public interface CompanyIntroductionDao {
    public CompanyIntroduction queryCompanyIntroduction(Integer id);
    public void updateCompanyIntroduction( CompanyIntroduction companyIntroduction);
    public  void addCompanyIntroduction(CompanyIntroduction companyIntroduction);
    public void deleteCompanyIntroduction(Integer Id);
}
