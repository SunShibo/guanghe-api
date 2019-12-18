package com.guanghe.api.dao.mallDao;

import com.guanghe.api.entity.mallBo.OrderBo;
import com.guanghe.api.entity.mallBo.OrderInfo;
import com.guanghe.api.entity.mallBo.SubmitResponse;
import org.apache.ibatis.annotations.Param;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by shishiming on 2018/8/2.
 */
public interface OrderDao {
    //添加Order
    void addOrder(List<OrderBo> orderBO);
    //删除Order byId
    void deleteOrderbyId(Integer id);
    //修改Order byId
    void updateOrderbyId(OrderBo orderBO);
    //查询OrderList
    List<OrderBo> queryOrderList(Map<String, Object> map);
    //查询OrderById
    OrderBo queryOrderById(Integer id);
    //查询地址数目
    int queryOrderCount(Map<String, Object> map);
    //修改订单状态
    void updateOrderStatebyId(HashMap<String, Object> map);
    List<Long> queryIdList(Integer userId);
    List<OrderInfo> queryOrderList1(OrderInfo orderBo);
    List<OrderInfo> queryOrderList2(OrderInfo orderBo);
    List<OrderInfo> queryOrderList3(OrderInfo orderBo);
    List<OrderInfo> queryOrderList4(OrderInfo orderBo);
    void  updateOrderstatus(OrderBo orderBo);
    public List<OrderInfo> queryOrderListByOrderId(Long id);

   List<OrderInfo> selectByUserIdAndOrderNo(String orderNo);

   int updateOrderStatus(String orderNo);

   int queryorderstatus(String orderNo);


}
