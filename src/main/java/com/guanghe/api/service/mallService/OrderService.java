package com.guanghe.api.service.mallService;

import com.alipay.api.AlipayResponse;
import com.alipay.api.response.AlipayTradePrecreateResponse;
import com.alipay.demo.trade.config.Configs;
import com.alipay.demo.trade.model.ExtendParams;
import com.alipay.demo.trade.model.GoodsDetail;
import com.alipay.demo.trade.model.builder.AlipayTradePrecreateRequestBuilder;
import com.alipay.demo.trade.model.result.AlipayF2FPrecreateResult;
import com.alipay.demo.trade.service.AlipayTradeService;
import com.alipay.demo.trade.service.impl.AlipayTradeServiceImpl;
import com.alipay.demo.trade.utils.ZxingUtils;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.guanghe.api.dao.mallDao.OrderDao;
import com.guanghe.api.entity.dto.ResultDTO;
import com.guanghe.api.entity.mallBo.OrderBo;
import com.guanghe.api.entity.mallBo.OrderInfo;
import com.guanghe.api.entity.mallBo.SubmitResponse;
import com.guanghe.api.util.BigDecimalUtil;
import com.guanghe.api.util.FTPUtil;
import com.guanghe.api.util.PropertiesUtil;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;

import javax.annotation.Resource;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


import static com.sun.xml.internal.ws.api.message.Packet.State.ServerResponse;

/**
 * Created by shishiming on 2018/8/2.
 */
@Service("orderService")
@Transactional
public class OrderService {

    private static Logger logger = LoggerFactory.getLogger(OrderService.class);

    private static AlipayTradeService tradeService;
    static {

        /** 一定要在创建AlipayTradeService之前调用Configs.init()设置默认参数
         *  Configs会读取classpath下的zfbinfo.properties文件配置信息，如果找不到该文件则确认该文件是否在classpath目录
         */
        Configs.init("zfbinfo.properties");

        /** 使用Configs提供的默认参数
         *  AlipayTradeService可以使用单例或者为静态成员对象，不需要反复new
         */
        tradeService = new AlipayTradeServiceImpl.ClientBuilder().build();
    }

    @Resource
    private OrderDao orderDao;

    public ResultDTO pay(Long orderNo, Integer userId, String path){
        System.err.println("订单号是orderNo"+orderNo);
        ResultDTO resultDTO = new ResultDTO();
        Map<String ,String> resultMap = Maps.newHashMap();
        List<OrderInfo> orderInfos = orderDao.selectByUserIdAndOrderNo(orderNo + "");
        if(CollectionUtils.isEmpty(orderInfos)){
           //返回没有该订单
            resultDTO.setErrCode("501");
            resultDTO.setErrMsg("没有此订单");
            return resultDTO;
        }
        Long orderId = orderInfos.get(0).getOrderId();
        System.err.println("orderId:"+orderId);
        Integer count = orderInfos.get(0).getCount();
        System.err.println("count"+count);
        resultMap.put("orderNo",String.valueOf(orderId));



        // (必填) 商户网站订单系统中唯一订单号，64个字符以内，只能包含字母、数字、下划线，
        // 需保证商户系统端不能重复，建议通过数据库sequence生成，
        String outTradeNo = orderId+"";


        // (必填) 订单标题，粗略描述用户的支付目的。如“xxx品牌xxx门店当面付扫码消费”
        String subject = new StringBuilder().append("和悦商城扫码支付,订单号:").append(outTradeNo).toString();


        // (必填) 订单总金额，单位为元，不能超过1亿元
        // 如果同时传入了【打折金额】,【不可打折金额】,【订单总金额】三者,则必须满足如下条件:【订单总金额】=【打折金额】+【不可打折金额】
        String totalAmount = count.toString();


        // (可选) 订单不可打折金额，可以配合商家平台配置折扣活动，如果酒水不参与打折，则将对应金额填写至此字段
        // 如果该值未传入,但传入了【订单总金额】,【打折金额】,则该值默认为【订单总金额】-【打折金额】
        String undiscountableAmount = "0";



        // 卖家支付宝账号ID，用于支持一个签约账号下支持打款到不同的收款账号，(打款到sellerId对应的支付宝账号)
        // 如果该字段为空，则默认为与支付宝签约的商户的PID，也就是appid对应的PID
        String sellerId = "";

        // 订单描述，可以对交易或商品进行一个详细地描述，比如填写"购买商品2件共15.00元"
        String body = new StringBuilder().append("订单").append(outTradeNo).append("购买商品共").append(totalAmount).append("元").toString();


        // 商户操作员编号，添加此参数可以为商户操作员做销售统计
        String operatorId = "test_operator_id";

        // (必填) 商户门店编号，通过门店号和商家后台可以配置精准到门店的折扣信息，详询支付宝技术支持
        String storeId = "test_store_id";

        // 业务扩展参数，目前可添加由支付宝分配的系统商编号(通过setSysServiceProviderId方法)，详情请咨询支付宝技术支持
        ExtendParams extendParams = new ExtendParams();
        extendParams.setSysServiceProviderId("2088100200300400500");




        // 支付超时，定义为120分钟
        String timeoutExpress = "120m";

        // 商品明细列表，需填写购买商品详细信息，
        List<GoodsDetail> goodsDetailList = new ArrayList<GoodsDetail>();


        for(OrderInfo orderItem : orderInfos){
//            商品id  商品名称 商品价格（单位 分）  商品数量
            GoodsDetail goods = GoodsDetail.newInstance(orderItem.getId().toString(), "商品",
                    BigDecimalUtil.mul(orderItem.getPrice().doubleValue(),new Double(100).doubleValue()).longValue(),
                    orderItem.getNum());
            goodsDetailList.add(goods);
        }

        // 创建扫码支付请求builder，设置请求参数
        AlipayTradePrecreateRequestBuilder builder = new AlipayTradePrecreateRequestBuilder()
                .setSubject(subject).setTotalAmount(totalAmount).setOutTradeNo(outTradeNo)
                .setUndiscountableAmount(undiscountableAmount).setSellerId(sellerId).setBody(body)
                .setOperatorId(operatorId).setStoreId(storeId).setExtendParams(extendParams)
                .setTimeoutExpress(timeoutExpress)
                .setNotifyUrl(PropertiesUtil.getProperty("alipay.callback.url"))//支付宝服务器主动通知商户服务器里指定的页面http路径,根据需要设置
                .setGoodsDetailList(goodsDetailList);


        AlipayF2FPrecreateResult result = tradeService.tradePrecreate(builder);
        switch (result.getTradeStatus()) {
            case SUCCESS:
                logger.info("支付宝预下单成功: )");

                AlipayTradePrecreateResponse response = result.getResponse();
                dumpResponse(response);

                File folder = new File(path);
                if(!folder.exists()){
                    folder.setWritable(true);
                    folder.mkdirs();
                }

                // 需要修改为运行机器上的路径
                //细节细节细节
                String qrPath = String.format(path+"/qr-%s.png",response.getOutTradeNo());
                String qrFileName = String.format("qr-%s.png",response.getOutTradeNo());
                ZxingUtils.getQRCodeImge(response.getQrCode(), 256, qrPath);

                File targetFile = new File(path,qrFileName);
                try {
                    FTPUtil.uploadFile(Lists.newArrayList(targetFile));
                } catch (IOException e) {
                    logger.error("上传二维码异常",e);
                }
                logger.info("qrPath:" + qrPath);
                String qrUrl = PropertiesUtil.getProperty("ftp.server.http.prefix")+targetFile.getName();
                resultMap.put("qrUrl",qrUrl);
                resultDTO.setData(resultMap);
                return resultDTO;
            case FAILED:
                logger.error("支付宝预下单失败!!!");
                resultDTO.setErrCode("501");
                resultDTO.setErrMsg("支付宝预下单失败");
                return resultDTO;

            case UNKNOWN:
                logger.error("系统异常，预下单状态未知!!!");
                resultDTO.setErrCode("501");
                resultDTO.setErrMsg("系统异常，预下单状态未知!!!");
                return resultDTO;


            default:
                logger.error("不支持的交易状态，交易返回异常!!!");
                resultDTO.setErrCode("501");
                resultDTO.setErrMsg("不支持的交易状态，交易返回异常!!!");
                return resultDTO;

        }

    }


    // 简单打印应答
    private void dumpResponse(AlipayResponse response) {
        if (response != null) {
            logger.info(String.format("code:%s, msg:%s", response.getCode(), response.getMsg()));
            if (StringUtils.isNotEmpty(response.getSubCode())) {
                logger.info(String.format("subCode:%s, subMsg:%s", response.getSubCode(),
                        response.getSubMsg()));
            }
            logger.info("body:" + response.getBody());
        }
    }



    //添加Order
    public void addOrder(List<OrderBo> orderBo){
        orderDao.addOrder(orderBo);
    }

    //删除Order byId
    public void deleteOrderbyId(Integer id){
        orderDao.deleteOrderbyId(id);
    }
    //修改Order byId
    public void updateOrderbyId(OrderBo orderBO){
        if(orderBO.getId() == 0 || orderBO.getId() == null){
            return ;
        }
        if(orderBO.getUserId() == 0 || orderBO.getUserId() == null){
            return ;
        }
        orderDao.updateOrderbyId(orderBO);

    }
    //查询OrderList
    public List<OrderBo> queryOrderList(Map<String, Object> map){
        return orderDao.queryOrderList(map);
    }

    //查询OrderById
    public OrderBo queryOrderById(Integer id){
        if(id == null || id == 0){
            return null;
        }
        return orderDao.queryOrderById(id);
    }

    public int queryOrderCount(Map<String, Object> map) {
        return orderDao.queryOrderCount(map);
    }

    public void updateOrderStatebyId(HashMap<String, Object> map) {
        orderDao.updateOrderStatebyId(map);
    }
   public List<Long> queryIdList(Integer userId){
       return  orderDao.queryIdList(userId);
   }
   public List<OrderInfo> queryOrderList1(OrderInfo orderBo){
       return  orderDao.queryOrderList1(orderBo);
   }
    public List<OrderInfo> queryOrderList2(OrderInfo orderBo){
        return  orderDao.queryOrderList2(orderBo);
    }
    public List<OrderInfo> queryOrderList3(OrderInfo orderBo){
        return  orderDao.queryOrderList3(orderBo);
    }
    public List<OrderInfo> queryOrderList4(OrderInfo orderBo){
        return  orderDao.queryOrderList4(orderBo);
    }
    public void updateOrderstatus(OrderBo OrderBo){
        orderDao.updateOrderstatus(OrderBo);
    }
    public List<OrderInfo> queryOrderListByOrderId(Long id){
      return   orderDao.queryOrderListByOrderId(id);
    }
}
