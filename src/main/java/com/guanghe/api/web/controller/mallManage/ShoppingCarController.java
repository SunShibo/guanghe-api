package com.guanghe.api.web.controller.mallManage;

import com.guanghe.api.entity.dto.ResultDTOBuilder;
import com.guanghe.api.entity.mallBo.ShoppingCarBo;
import com.guanghe.api.service.mallService.ShoppingCarService;
import com.guanghe.api.util.JsonUtils;
import com.guanghe.api.util.StringUtils;
import com.guanghe.api.web.controller.base.BaseCotroller;
import net.sf.json.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by shishiming on 2018/8/2.
 */
@Controller
@RequestMapping("shoppingCar")
public class ShoppingCarController extends BaseCotroller{

    @Resource
    private ShoppingCarService shoppingCarService;

    /**
     * 查询列表
     */
    @RequestMapping("/list")
    public void queryShoppingCarList(HttpServletResponse response,Integer userId){

        if(userId == null || userId == 0){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }
        Map<String, Object> map = new HashMap<String,Object>();
        map.put("userId",userId);

        Map<String, Object> resultMap = new HashMap<String, Object>();
        resultMap.put("data",shoppingCarService.queryShoppingCarList(map));
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(resultMap));

        safeTextPrint(response, json);
    }



    /**
     * 根据id查询详情
     * @param id
     */
    @RequestMapping("/detail")
    public void queryShoppingCarById(HttpServletResponse response,Integer id){
//
        if (id == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }

        ShoppingCarBo bo = shoppingCarService.queryShoppingCarById(id);
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
    public void deleteShoppingCarbyId(HttpServletResponse response, Integer id){
        if (id == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }

        ShoppingCarBo bo = shoppingCarService.queryShoppingCarById(id);
        if (bo == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
            return;
        }

        shoppingCarService.deleteShoppingCarbyId(id);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);

    }


    /**
     * 新增
     * @param bo
     */
    @RequestMapping("/add")
    public void addShoppingCar(HttpServletResponse response, ShoppingCarBo bo){
        if(bo == null || bo.getGoodsId()==null || bo.getUserId() == null || bo.getNumber() == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }

        shoppingCarService.addShoppingCar(bo);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);

    }


    /**
     * 修改
     * @param bo
     */
    @RequestMapping("/update")
    public void updateShoppingCarbyId(HttpServletResponse response, ShoppingCarBo bo){
        ShoppingCarBo newBo = shoppingCarService.queryShoppingCarById(bo.getId());

        if(bo == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }
        if(bo.getGoodsId()==null || bo.getUserId() == null || bo.getNumber() == null || bo.getId() == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }
        if(newBo == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
            return;
        }


        shoppingCarService.updateShoppingCarbyId(bo);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);
    }

    @RequestMapping("/deleteGoodsList")
    public void deleteGoodsList(HttpServletResponse response, String idsJson){
        if (idsJson == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }

        JSONArray jsonArray = JSONArray.fromObject(idsJson);
        List<String> ids = JSONArray.toList(jsonArray, ArrayList.class);

        shoppingCarService.deleteShoppingCarbyIds(ids);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);

    }

    @RequestMapping("/deleteInvalidGoods")
    public void deleteInvalidGoods(HttpServletResponse response, Integer userId){
        if (userId == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000001"));
            safeTextPrint(response, json);
            return;
        }

        HashMap<String,Object> parMap = new HashMap<String,Object>();

        parMap.put("userId",userId);
        parMap.put("state","失效");

       //查询所有的失效商品的id
        List<String> ids = shoppingCarService.queryInvalidGoodsList(parMap);
        if (ids == null){
            String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.failure("0000004"));
            safeTextPrint(response, json);
            return;
        }

        shoppingCarService.deleteShoppingCarbyIds(ids);
        String json = JsonUtils.getJsonString4JavaPOJO(ResultDTOBuilder.success(""));
        safeTextPrint(response, json);

    }
}
