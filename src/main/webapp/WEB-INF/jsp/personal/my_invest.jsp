<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>我的投资-个人中心-广和投资</title>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--[if lt IE 9]>
    <script src="/static/js/html5shiv.min.js"></script>
    <script src="/static/js/css3-mediaqueries.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="/static/css/m_app.css"/>
    <link rel="stylesheet" type="text/css" href="/static/css/page.css"/>

    <style>
        .icon{
            color: #999999;
            font-size: 15px;
            padding: 0 5px;
        }
        .u_icon>i:nth-child(1){
            color: #999999;
            position: absolute;top: 15px;left: 66px;
        }
        .u_icon>i:nth-child(2){
            color: #999999;
            position: absolute;top: 16px;left: 90px;
        }
        .u_icon>i:nth-child(3){
            color: #999999;
            position: absolute;top: 16px;left: 117px;
        }
        .iconfont:hover{
            color: #D3A359;
        }
        .header_up span,i{
            color: #777777;
        }
        .btn:hover{
            color: white;
            background: #D3A359;
        }
        .iconfont:hover{
            color: #D3A359;
        }
        @font-face {
            font-family: 'iconfont';  /* project id 754425 */
            src: url('//at.alicdn.com/t/font_754425_v675r8u05qj.eot');
            src: url('//at.alicdn.com/t/font_754425_v675r8u05qj.eot?#iefix') format('embedded-opentype'),
            url('//at.alicdn.com/t/font_754425_v675r8u05qj.woff') format('woff'),
            url('//at.alicdn.com/t/font_754425_v675r8u05qj.ttf') format('truetype'),
            url('//at.alicdn.com/t/font_754425_v675r8u05qj.svg#iconfont') format('svg');
        }

        .footer_bottom p {
            color: #FFFFFF;
            font-size: 12px;
        }
        .footer_bottom_right {
            float: right;
            margin-top: 5px;
        }

        button {
            background-color: transparent;
            color: #D3A359;
            padding: 8px 10px;
            border-radius: 2px;
            border: #D3A359 1px solid;
            cursor: pointer;

        }
        .btn:active{
            position: relative;
            top: 1px;
            left: 1px;
        }


        .nav_logo {
            width: 155px;
            height: 45px;
            float: left;
            margin-right: 65px;
            margin-top: 0px;
        }



        .nav_a {
            display: block;
            margin: 8px 20px;
            padding: 0 0 10px 0;
            color: #000000;
            font-size: 16px;
        }
        .has_menu>.sub_ul {
            position: absolute !important;
            z-index: 9 !important;
            border-radius: 0px;
            top: 95px;
            width: 212px;
            margin-left: 15px;
            background: #E0E0E0;
        }
        .header {
            height: 120px;
            color: white;
            font-size: 10px;
            padding-top: 4px;
            width: 100%;
        }

        .list>span{
            opacity: 0;
        }
        .list_line{
            border-bottom: solid 1px #ececec;
        }
        .list.msg{
            position: relative;
            text-align:  left;
            padding-left: 20px;
        }
        .msg_tip{
            width: 30px;height: 30px; border-radius: 15px;
            background: #D3A359;
            position: absolute;
            display: inline-block;
            left: 130px;
            top: 21px;
            color: white!important;
            line-height: 30px;
            font-size: 15px;
            transform: scale(.7);
            text-align: center;
            opacity: 1!important;
        }
        .selected>i{
            color: #D3A359;
        }
        .selected{
            color: #D3A359;
        }
        .list.selected>span{
            opacity: 1;
        }
        .my_order{
            font-size: 20px;
            letter-spacing: 0px;
            color: #555555;
            position: relative;
        }
        .detail{
            padding: 20px; float: left;width: 960px;height: 788px;background: #FFFFFF;border: #f9f9f9 1px solid;
            position: relative;
        }
        .order_ul{
            float: left;
        }
        .order_ul>li{
            border-left: 1px solid #999999;
        }
        .order_ul>li:nth-child(1){
            border-left: 0px solid #999999;
        }
        .order_ul>li>a{
            padding:0 20px ;
            cursor: pointer;
            font-size: 16px;
            color: #555555;
        }
        .thead {
            width: 960px;
            height: 38px;
            background-color: #dbbe93;
            float: left;
            /*margin-top: 35px;*/
        }
        .order_p{

            font-size: 16px;
            color: #ffffff;
            display: inline-block;
            line-height: 38px;
            text-align: center;
        }
        .tedad p{
            display: inline-block;

        }
        .order_item{
            width: 958px;
            height: 48px;
            /*border: #f9f9f9 1px solid;*/
            border: #000 1px solid;
            margin-top: 20px;
        }
        .order_time{
            display: inline-block;
            font-size: 16px;
            color: #555555;
            line-height: 40px;
            padding-left: 20px;
        }
        .order_seq{
            font-size: 16px;
            color: #333333;
            display: inline-block;
            line-height: 40px;
            padding-left: 35px;
        }
        .container{
            width: 1200px;margin: 0px auto;
            padding-top: 50px;
        }
        .left_nav{
            float: left;width: 198px;height: 830px;background: #FFFFFF;
        }
        .u_pic{
            position: relative;height: 150px;
        }
        .u_pic>img:nth-child(1){
            border-radius: 50%;margin-top:36px ;margin-left: 50px;width: 96px;height: 96px;
        }
        .u_pic>img:nth-child(2){
            width: 48px;position: absolute;left: 110px;
            top:82px;border:1px solid #eee;
            height: 48px;border-radius: 24px;
        }
        .u_nick{
            font-size: 13px;color: #555555; text-align: center;
        }
        .u_icon{
            height: 55px;padding-left: 56px; border-bottom: solid 1px #ececec;
            position: relative;
        }
        .order_tr{
            height: 110px;
        }
        .order_trh{
            padding:20px 0;float: left;
        }
        .order_input_box{
            float: right; padding: 20px;
        }
        .order_input_box>input{
            width: 200px;padding-left: 10px;
        }
        .item_tr{
            border: #f5f5f5 1px solid;
            width: 960px;
            margin: 10px 0;
        }

        .item_pic{
            float: left; height: 48px;padding-left: 15px;
        }
        .item_pic>img{
            width: 149px;height: 117px;padding: 5px;
        }
        .item_name{
            float: left; height: 48px;padding-left: 20px;
        }
        .item_name p:hover{
            color: #D3A359
        }

        .item_name p{
            width: 289px;padding-top: 0px;color: #555555;font-size: 16px;
        }
        .item_num{
            float: left; height: 48px;
        }
        .item_num p{
            color: #555555;font-size: 22px;line-height: 48px;width: 100px;text-align: center;
        }
        .item_price{
            float: left; height: 48px;
        }
        .item_price p{
            color: #D3A359;font-size: 22px;line-height: 48px;width: 200px;text-align: center;
        }
        .item_detail{
            float: left;line-height: 48px; padding: 0px 0;width: 165px;
            display: table-cell;vertical-align: middle;text-align: center;
        }
        .item_detail a{
            line-height: 10px;
            color: #005ea7;
            font-size: 16px;
        }
        .item_state{
            text-align: center;display: block;width: 170px;color: #D3A359;font-size: 22px;padding-bottom: 5px;
        }
        .item_trans{
            text-align: center;display: block;width: 170px;color: #555555;font-size: 16px;
        }
        .item_trans i{
            color: #D3A359;
        }
        .item_trans:hover{
            color: #D3A359
        }
        .order_ul>li>.selected{
            color: #D3A359;
        }
        .order_item>div{
            /*border-left: #f9f9f9 1px solid;*/
            border-left: #000 1px solid;
        }
        .cart_tip{
            width: 436px;
            height: 192px;
            background-image: url(/static/img/cancel_favorite.jpg);
            position: relative;
        }
        .cart_tip>button:nth-child(1){
            width: 67px;
            height: 32px;
            opacity: 0;
            position: absolute;
            bottom: 24px;
            left: 266px;
        }
        .cart_tip>button:nth-child(2){
            width: 67px;
            height: 32px;
            opacity: 1;
            position: absolute;
            bottom: 24px;
            left: 339px;
        }

        .td1{
            width: 246px;
            padding: 0 20px;
            font-size: 16px!important;
            color: #333!important;
        }
        .td2{
            width: 170px;
            color: #666!important;
            font-size: 16px!important;
        }
        .td3{
            width: 163px;
            font-size: 22px!important;
            color: #d3a359!important;
        }
        .td4{
            width: 142px;
            font-size: 22px!important;
            color: #d3a359!important;
        }
        .td5{
            width: 180px;
            font-size: 16px!important;
            color: #666!important;
        }


        .item_tr{
            height: 83px;
        }
        .item_td{
            line-height: 83px;
            text-align: center;
            color: #555555;
            font-size: 14px;
            display: inline-block;
            text-overflow: ellipsis;
            white-space: nowrap;
            overflow: hidden;
        }
        th{
            background: #D3A359;
            color: #fff!important;
        }
        .layui-laydate-footer{
            display: none;
        }
    </style>
</head>

<body>
<div class="header_line"></div>
<div class="header">
    <jsp:include page="../nav/personal_nav.jsp"></jsp:include>
</div>

<section style="background: url(/static/img/bg_team.png);height: 1000px;" >

    <div class="container">
        <div class="left_nav">
            <div class="u_pic">
                <img src="/static/img/boss/IMG_9250.JPG" width="96px" />
                <img src="/static/img/level.jpg"/>
            </div>
            <p class="u_nick">天体阿妮塔</p>
            <div class="u_icon">
                <i class="iconfont">&#xe603;</i>
                <i class="iconfont" >&#xe623;</i>
                <i class="iconfont">&#xe6fa;</i>
            </div>
            <div class="grzx">
                <p class="list" data-id="1">
                    我的积分
                </p>
                <p class="list" data-id="2">
                    订单中心
                </p>
                <p class="list " data-id="3">
                    我的收藏
                </p>
                <p class="list list_line" data-id="4">
                    账户管理
                </p>
                <p class="list selected" data-id="5">
                    投资明细
                </p>
                <p class="list" data-id="6">
                    风险评测
                </p>

                <p class="list " data-id="7">
                    我的理财师
                </p>

                <p class="list" data-id="8">
                    我的消息
                </p>
            </div>

        </div>
        <div class="detail">
            <p class="my_order">投资明细</p>
            <div>
                <label style="font-size: 16px;color:#555;padding-left: 40px;">确认时间：</label>
                <input placeholder="请选择开始日期" type="text" style="border: solid 1px #eeeeee;border-radius: 3px;height: 28px;width: 152px;padding: 0 10px;margin: 15px;"  class="layui-input" id="start" />
                <input placeholder="请选择结束日期" type="text" style="border: solid 1px #eeeeee;border-radius: 3px;height: 28px;width: 152px;padding: 0 10px;margin: 15px;" class="layui-input" id="end" />
                <button style="border: solid 1px #d3a359;border-radius: 3px;background-color: #d3a359;height: 30px;width: 100px;color: #ffffff;letter-spacing: 1px;font-size: 16px;padding: 0;" onclick="search();">查询</button>
            </div>
            <div class="thead">
                <p class="order_p" style="width: 286px;">名称</p>
                <p class="order_p" style="width: 170px;">类型</p>
                <p class="order_p" style="width: 163px;">确认金额(元)</p>
                <p class="order_p" style="width: 142px;">确认金额(份)</p>
                <p class="order_p" style="width: 180px;">确认时间</p>
            </div>
            <div style="clear: both; height: 10px;"></div>
            <div id="rs"></div>

            <p id="search_tip" style="padding-top: 10px;color: #999;font-size: 16px;text-align: center;">基金销售服务由广和投资有限公司提供</p>
            <div style="height: 28px; width: 360px; margin: 20px auto">
                <ul class="page" id="page"></ul>
            </div>
        </div>
    </div>
</section>






<jsp:include page="/WEB-INF/jsp/footer/footer.jsp"></jsp:include>
</body>

<script src="/static/js/jquery-2.2.0.min.js"></script>
<script src="/static/js/main.js"></script>
<script src="/static/layer/layer.js"></script>
<script src="/static/layer/laydate/laydate.js"></script>

<script>
    laydate.render({
        elem: '#start' //指定元素
    });
    laydate.render({
        elem: '#end' //指定元素
    });
    function search(){
        getdata(1,6,document.getElementById("start").value,document.getElementById("end").value);
    }


    var options,
            pageNo = getUrlParms("pageNo"),
            pageSize = getUrlParms("pageSize");

    if(pageNo==null)pageNo = 1;
    getdata(pageNo,6);

    function getdata(pageNo,pageSize,start,end){
        var url = getUrlParms();
        console.log(url)
        if(url.indexOf("pageNo")==-1){
            url+="&pageNo="+pageNo+"&pageSize="+6;
        }
        if(start&&start!='')	url+="&startTime="+start;
        if(end&&end!='')	url+="&endTime ="+end;

        $.ajax({
            url: "/subscribe/list?"+url,
            type:"post",
            dataType: "json",
            success:function(rs){
                if(!rs.success&&rs.errCode=='0010007') window.location.href = "/login/loginPage"
                var datas=rs.data.data;
                renderTable(datas);
                options={
                    "id":"page",
                    "data":datas,
                    "maxshowpageitem":3,
                    "pagelistcount":pageSize,
                    "callBack":function(result){

                    }
                };
                page.init(rs.data.count,pageNo,options);
            }
        });
    }

    function renderTable(result){
//debugger;
        $("#rs").empty();
        if(result.length==0){
            $("#search_tip").text("没有查到相应记录！");
        }else{
            $("#search_tip").text("基金销售服务由广和投资有限公司提供");
        }
        for (var i = 0; i < result.length; i++) {

            $("#rs").append(
                    ['<div class="item_tr">',
                        '<div class="item_td td1">',
                        result[i].name2,
                        '</div>		',
                        '<div class="item_td td2">',
                        result[i].fund_type,
                        '</div>		',
                        '<div class="item_td td3">',
                        result[i].confirmation_of_amount/10000,
                        '万元</div>',
                        '<div class="item_td td4">',
                        result[i].confirmation_of_count,
                        '份</div>',
                        '<div class="item_td td5">',
                        fmtDate(result[i].confirmation_of_date.time),
                        '</div>',
                        '</div>	'].join(""))
        }
    }


</script>

</html>
