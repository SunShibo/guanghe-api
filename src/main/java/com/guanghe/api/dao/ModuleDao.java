package com.guanghe.api.dao;

import com.guanghe.api.entity.bo.ModuleBo;

/**
 * Created by yxw on 2018/8/7.
 */
public interface ModuleDao {
    public ModuleBo queryModule(Integer id);
    public void updateModule(ModuleBo moduleBo);
    public  void addModule(ModuleBo moduleBo);
    public void deleteModule(Integer Id);
}
