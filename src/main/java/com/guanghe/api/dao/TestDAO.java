package com.guanghe.api.dao;


import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TestDAO {

    List<String> getImgUrl(@Param("imgUrl")String imgUrl,@Param("table")String table);

}
