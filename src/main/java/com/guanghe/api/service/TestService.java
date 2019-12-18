package com.guanghe.api.service;

import com.guanghe.api.dao.TestDAO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Administrator on 2018/2/28.
 */
@Service("storeService")
@Transactional
public class TestService {
    @Resource
    private TestDAO testDAO;




   public List<String> getImgUrl(String imgUrl,String table){
       return  testDAO.getImgUrl(imgUrl,table);
    }
}
