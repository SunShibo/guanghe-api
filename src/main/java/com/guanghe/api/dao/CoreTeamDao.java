package com.guanghe.api.dao;

import com.guanghe.api.entity.bo.CoreTeam;

/**
 * Created by yxw on 2018/7/18.
 */
public interface CoreTeamDao {
    public CoreTeam queryCoreTeam(Integer id);
    public void updateCoreTeam(CoreTeam coreTeam);
    public  void addCoreTeam(CoreTeam coreTeam);
    public void deleteCoreTeam(Integer Id);

}
