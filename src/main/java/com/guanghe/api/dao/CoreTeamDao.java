package com.guanghe.api.dao;
import com.guanghe.api.entity.bo.CoreTeamBo;

/**
 * Created by yxw on 2018/7/18.
 */
public interface CoreTeamDao {

    public CoreTeamBo queryCoreTeam(Integer id);
    public void updateCoreTeam(CoreTeamBo coreTeam);
    public  void addCoreTeam(CoreTeamBo coreTeam);
    public void deleteCoreTeam(Integer Id);

}
