package com.guanghe.api.web.controller.mallManage;

import com.guanghe.api.entity.dto.ResultDTOBuilder;
import com.guanghe.api.entity.mallBo.ReceivingAdressBo;
import com.guanghe.api.query.QueryInfo;
import com.guanghe.api.service.mallService.ReceivingAdressService;
import com.guanghe.api.util.JsonUtils;
import com.guanghe.api.util.StringUtils;
import com.guanghe.api.web.controller.base.BaseCotroller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by shishiming on 2018/8/2.
 */
@Controller
@RequestMapping("receivingAdress")
public class ReceivingAdressController extends BaseCotroller{

    @Resource
    private ReceivingAdressService receivingAdressService;

    /**
     * 查询列表
     */
    @RequestMapping("/list")
    public void queryReceivingAdressList(HttpServletResponse response,Integer userId,Integer pageNo, Integer pageSize){

        if(userId == null || userId == 0){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }

        QueryInfo queryInfo = getQueryInfo(pageNo, pageSize);

        Map<String, Object> map = new HashMap<String, Object>();
        if(queryInfo != null){
            map.put("pageOffset", queryInfo.getPageOffset());
            map.put("pageSize", queryInfo.getPageSize());
        }
        map.put("userId",userId);

        Map<String, Object> resultMap = new HashMap<String, Object>();
        resultMap.put("data",receivingAdressService.queryReceivingAdressList(map));

        resultMap.put("count", receivingAdressService.queryReceivingAdressCount(map));
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(resultMap));

        safeTextPrint(response, json);
    }



    /**
     * 根据id查询详情
     * @param id
     */
    @RequestMapping("/detail")
    public void queryReceivingAdressById(HttpServletResponse response,Integer id){
//
        if (id == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }

        ReceivingAdressBo bo = receivingAdressService.queryReceivingAdressById(id);
        if (bo == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
            return;
        }

        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(bo));
        safeTextPrint(response, json);

    }

    /**
     * 根据id删除
     * @param id
     */
    @RequestMapping("/delete")
    public void deleteReceivingAdressbyId(HttpServletResponse response, Integer id){
        if (id == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }

        ReceivingAdressBo bo = receivingAdressService.queryReceivingAdressById(id);
        if (bo == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
            return;
        }

        receivingAdressService.deleteReceivingAdressbyId(id);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);

    }


    /**
     * 新增
     * @param bo
     */
    @RequestMapping("/add")
    public void addReceivingAdress(HttpServletResponse response, ReceivingAdressBo bo){
        if(bo == null || bo.getUserId()==null || StringUtils.isEmpty(bo.getName()) || StringUtils.isEmpty(bo.getAddress())
                || StringUtils.isEmpty(bo.getAddressDetail()) || StringUtils.isEmpty(bo.getPhone())){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }

        Map<String, Object> parMap =new HashMap<String, Object>();
        parMap.put("userId",bo.getUserId());
        int count = receivingAdressService.queryReceivingAdressCount(parMap);

        if(count >= 10){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001","新增地址不能超过10条"));
            safeTextPrint(response, json);
            return;
        }

        receivingAdressService.addReceivingAdress(bo);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);

    }


    /**
     * 修改
     * @param bo
     */
    @RequestMapping("/update")
    public void updateReceivingAdressbyId(HttpServletResponse response, ReceivingAdressBo bo){


        if(bo == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }
        if( bo.getUserId()==null || StringUtils.isEmpty(bo.getName()) || StringUtils.isEmpty(bo.getAddress())
                || StringUtils.isEmpty(bo.getAddressDetail()) || StringUtils.isEmpty(bo.getPhone())){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }

        ReceivingAdressBo newBo = receivingAdressService.queryReceivingAdressById(bo.getId());
        if(newBo == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
            return;
        }


        receivingAdressService.updateReceivingAdressbyId(bo);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);
    }

    /**
     * 设置默认地址
     * @param userId,addressId
     */
    @RequestMapping("/setDefault")
    public void setDefault(HttpServletResponse response, Integer userId,Integer addressId){

        if(userId == null || addressId == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }

        //修改该用户下的所有地址
        receivingAdressService.updateReceivingAdressbyUserId(userId);

        //修改该用户下的默认地址
        receivingAdressService.setDefaultAddressbyId(addressId);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);
    }


}
