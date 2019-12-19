<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>扫码支付</title>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="icon" href="/static/img/16_16 LOGO.png" type="image/x-icon">
    <!--[if lt IE 9]>
    <script src="/static/js/html5shiv.min.js"></script>
    <script src="/static/js/css3-mediaqueries.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="/static/css/m_app.css"/>
    <link rel="stylesheet" type="text/css" href="/static/css/mall.css" />
    <link rel="stylesheet" type="text/css" href="/static/css/cart.css" />
    <script src="/static/js/jquery-2.2.0.min.js"></script>
   <%-- <script src="/static/js/main.js"></script>--%>
    <script src="/static/layer/layer.js"></script>
    <script src="/static/js/distpicker.data.js"></script>
    <script src="/static/js/distpicker.js"></script>

    <style >
        #d1{
            width: 50% ;
            height: 550px;
            margin: 4% auto;
            align-content: center;
            background-color: rgba(0, 0, 0, 0.02);
            border-top: #0c0c0c solid 4px;
        }
        #logo{
            margin: 0 auto;
            width: 200px;
            margin-top: 35px;
            margin-bottom: -60px;
        }
    </style>
    <script >
        $(function(){
            $.ajax({
                url: "/sbmit/pay.do",
                data:{orderNo:${orderNo}},
                type: "post",
                dataType: "json",
                success: function(rs) {
                   console.log(rs);
                    if(rs.success){
                        $("#img").attr("src",rs.data.qrUrl);
                    }
                }
            })
         }
        )
    </script>
</head>

<body>
<div class="header_line"></div>
<jsp:include page="mall_nav.jsp"></jsp:include>
<div class="news_bn">
    <div>

    </div>
    <div class="wrapp">
        <span class="bread mall_bread"><a href="/MallHome/list">首页</a> > <a href="javascript:;">订单支付 </span></a>
    </div>
</div>

<div id="logo"><img src="/static/img/zfblogo.gif"></div>
<div id="d1">
    <div style="margin: 4% auto; text-align: center;font-size: 20px ;font-weight: bold;color: rgba(175,116,38,0.67);font-family: 幼圆;line-height: 50px"  >
        <p> 订单提交成功，请尽快支付 !</p>
        <p style="color:rgba(255,55,30,0.87)">请使用支付宝扫码下方二维码进行支付：</p>
    </div>
    <div >
            <img  id="img"
                    style="border: rgba(2,1,2,0.73) solid 3px ; margin: 0 auto;display: block;width: 25%;"
                    src=""/>
    </div>
 </div>


</body>
<script>
    $(function(){
       var interval = setInterval(function(){
            $.ajax({
                url: "/sbmit/query_order_status.do",
                data:{ordrNo:${orderNo}},
                type: "post",
                dataType: "json",
                success: function(rs) {
                    if(rs.success){
                        clearInterval(interval);
                        layer.confirm('支付成功', {
                            btn: ['确定'] //可以无限个按钮
                        }, function(index, layero){
                            window.location = "/MallHome/list";

                        });
                    }
                }
            })
        },500);
        }
    )
</script>
</html>
