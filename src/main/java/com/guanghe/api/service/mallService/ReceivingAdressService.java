package com.guanghe.api.service.mallService;

import com.guanghe.api.dao.mallDao.ReceivingAdressDao;
import com.guanghe.api.entity.mallBo.ReceivingAdressBo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * Created by shishiming on 2018/8/2.
 */
@Service("receivingAdressService")
@Transactional
public class ReceivingAdressService {

    @Resource
    private ReceivingAdressDao receivingAdressDao;

    //添加ReceivingAdress
    public int addReceivingAdress(ReceivingAdressBo receivingAdressBO){
        if(receivingAdressBO == null){
            return 0;
        }
        if(receivingAdressBO.getUserId() == 0 ){
            return 0;
        }
        return receivingAdressDao.addReceivingAdress(receivingAdressBO);
    }

    //删除ReceivingAdress byId
    public void deleteReceivingAdressbyId(Integer id){
        receivingAdressDao.deleteReceivingAdressbyId(id);
    }
    //修改ReceivingAdress byId
    public void updateReceivingAdressbyId(ReceivingAdressBo receivingAdressBO){
        if(receivingAdressBO.getId() == 0 || receivingAdressBO.getId() == null){
            return ;
        }
        receivingAdressDao.updateReceivingAdressbyId(receivingAdressBO);

    }
    //查询ReceivingAdressList
    public List<ReceivingAdressBo> queryReceivingAdressList(Map<String, Object> map){
        return receivingAdressDao.queryReceivingAdressList(map);
    }

    //查询ReceivingAdressById
    public ReceivingAdressBo queryReceivingAdressById(Integer id){
        if(id == null || id == 0){
            return null;
        }
        return receivingAdressDao.queryReceivingAdressById(id);
    }

    public int queryReceivingAdressCount(Map<String, Object> map) {
        return receivingAdressDao.queryReceivingAdressCount(map);
    }

    public void updateReceivingAdressbyUserId(Integer userId) {
        receivingAdressDao.updateReceivingAdressbyUserId(userId);
    }

    public void setDefaultAddressbyId(Integer addressId) {
        receivingAdressDao.setDefaultAddressbyId(addressId);
    }
}
