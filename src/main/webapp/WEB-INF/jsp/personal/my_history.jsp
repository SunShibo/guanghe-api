<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <title>浏览历史-广和投资</title>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.min.js"></script>
    <script src="js/css3-mediaqueries.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="css/m_app.css" />
    <link rel="stylesheet" type="text/css" href="css/page.css" />
    <style>


        .header_up span,
        i {
            color: #777777;
        }

        .btn:hover {
            color: white;
            background: #D3A359;
        }

        .iconfont:hover {
            color: #D3A359;
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

        .btn:active {
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

        .list.msg {
            position: relative;
            text-align: left;
            padding-left: 20px;
        }

        .msg_tip {
            width: 30px;
            height: 30px;
            border-radius: 15px;
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

        .my_order {
            font-size: 20px;
            letter-spacing: 0px;
            color: #555555;
        }

        .detail {
            padding: 20px;
            float: left;
            width: 960px;
            height: 788px;
            background: #FFFFFF;
            border: #f9f9f9 1px solid;
        }

        .order_ul {
            float: left;
        }

        .order_ul>li {
            border-left: 1px solid #999999;
        }

        .order_ul>li:nth-child(1) {
            border-left: 0px solid #999999;
        }

        .order_ul>li>a {
            padding: 0 20px;
            cursor: pointer;
            font-size: 16px;
            color: #555555;
        }

        .thead {
            width: 960px;
            height: 38px;
            background-color: #dbbe93;
            float: left;
        }

        .order_p {
            font-size: 16px;
            color: #ffffff;
            display: inline-block;
            line-height: 38px;
            text-align: center;
        }

        .tedad p {
            display: inline-block;
        }

        .order_item {
            width: 958px;
            height: 128px;
            border: #f9f9f9 1px solid;
            margin-top: 20px;
        }

        .order_time {
            display: inline-block;
            font-size: 16px;
            color: #555555;
            line-height: 40px;
            padding-left: 20px;
        }

        .order_seq {
            font-size: 16px;
            color: #333333;
            display: inline-block;
            line-height: 40px;
            padding-left: 35px;
        }

        .container {
            width: 1200px;
            margin: 0px auto;
            padding-top: 50px;
        }

        .order_tr {
            height: 110px;
        }

        .order_trh {
            padding: 20px 0;
            float: left;
        }

        .order_input_box {
            float: right;
            padding: 20px;
        }

        .order_input_box>input {
            width: 200px;
            padding-left: 10px;
        }

        .item_tr {
            height: 40px;
            border-bottom: #f9f9f9 1px solid;
            float: left;
            width: 960px;
        }

        .item_pic {
            float: left;
            height: 128px;
        }

        .item_pic>img {
            width: 149px;
            height: 117px;
            padding: 5px;
        }

        .item_name {
            float: left;
            height: 128px;
            padding-left: 20px;
        }

        .item_name p:hover {
            color: #D3A359
        }

        .item_name p {
            width: 269px;
            padding-top: 40px;
            color: #555555;
            font-size: 16px;
        }

        .item_num {
            float: left;
            height: 128px;
        }

        .item_num p {
            color: #555555;
            font-size: 16px;
            line-height: 122px;
            width: 120px;
            text-align: center;
        }

        .item_price {
            float: left;
            height: 128px;
        }

        .item_price p {
            color: #D3A359;
            font-size: 22px;
            line-height: 122px;
            width: 200px;
            text-align: center;
        }

        .item_detail {
            float: left;
            height: 88px;
            padding: 20px 0;
            width: 185px;
            display: table-cell;
            vertical-align: middle;
            text-align: center;
        }

        .item_detail a {
            line-height: 80px;
            color: #005ea7;
            font-size: 16px;
        }

        .item_detail a:after {
            content: " |";
        }

        .item_detail a:last-child:after {
            content: "";
        }

        .item_state {
            text-align: center;
            display: block;
            width: 185px;
            color: #D3A359;
            font-size: 22px;
            padding-bottom: 5px;
        }

        .item_trans {
            text-align: center;
            display: block;
            width: 170px;
            color: #555555;
            font-size: 16px;
        }

        .item_trans i {
            color: #D3A359;
        }

        .item_trans:hover {
            color: #D3A359
        }

        .order_ul>li>.selected {
            color: #D3A359;
        }

        .order_item>div {
            border-left: #f9f9f9 1px solid;
        }

        .cart_tip {
            width: 436px;
            height: 192px;
            background-image: url(img/cancel_favorite.jpg);
            position: relative;
        }

        .cart_tip>button:nth-child(1) {
            width: 67px;
            height: 32px;
            opacity: 0;
            position: absolute;
            bottom: 24px;
            left: 266px;
        }

        .cart_tip>button:nth-child(2) {
            width: 67px;
            height: 32px;
            opacity: 1;
            position: absolute;
            bottom: 24px;
            left: 339px;
        }




    </style>
</head>

<body>
<div class="header_line"></div>
<div class="header">
    <div class="header_up">
        <div class="header_up_left">
            <i class="iconfont">&#xe62c;</i>
            <span>Mon-Fri : 09:00-17:00</span>
        </div>
        <div class="header_up_right">
            <i class="iconfont">&#xe61b;</i>
            <span>+86(021)56497956</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="#"><i class="iconfont">&#xe69c;</i></a>
            &nbsp;
            <a href="#"><i class="iconfont">&#xe66a;</i></a>
            &nbsp;
            <a href="#"><i class="iconfont">&#xe89d;</i></a>
            &nbsp;
            <a href="#"><i class="iconfont">&#xe630;</i></a>
        </div>
    </div>
    <div class="header_nav">
        <img src="img/logo.png" class="nav_logo" />
        <ul>
            <li>
                <a class="nav_a active" href="index.html">首页</a>
            </li>
            <li class="has_menu">
                <a class="nav_a" href="gsjs.html">走进广和</a>
                <ul class="sub_ul">
                    <a href="gsjs.html#gsjs">公司介绍</a>
                    <a href="dsz.html#dsz">董事长致辞</a>
                    <a href="hxtd.html#hxtd">核心团队</a>
                    <a href="#">企业文化</a>
                    <a href="qyry.html#qyry">企业荣誉</a>
                </ul>
            </li>
            <li class="has_menu">
                <a class="nav_a" href="cfgl.html">财富管理</a>
                <ul class="sub_ul">
                    <a href="sxgw.html">私享顾问</a>
                    <a href="">私募投资</a>
                    <a href="#">产品优势1</a>
                    <a href="#">产品优势2</a>
                    <a href="#">产品优势3</a>
                </ul>
            </li>
            <li class="has_menu">
                <a class="nav_a" href="zcgl.html">资产管理</a>
                <ul class="sub_ul">
                    <a href="#">证券基金</a>
                    <a href="#">定增基金</a>
                    <a href="#">产品基金</a>
                    <a href="#">股权基金</a>
                </ul>
            </li>
            <li class="has_menu">
                <a class="nav_a" href="sxy.html">广和商学院</a>
                <ul class="sub_ul">
                    <a href="#">理财知识培养</a>
                    <a href="#">政策解读</a>
                    <a href="#">庄家讲堂</a>
                </ul>
            </li>
            <li class="has_menu">
                <a class="nav_a" href="news.html">广和新闻</a>
                <ul class="sub_ul">
                    <a href="news.html">广和新闻</a>
                    <a href="hydt.html">行业动态</a>
                </ul>
            </li>
            <li class="has_menu">
                <a class="nav_a" href="#">会员尊享</a>
                <ul class="sub_ul">
                    <a href="news.html">广和新闻</a>
                    <a href="hydt.html">行业动态</a>
                </ul>
            </li>

        </ul>
        <div style="float: right; margin-top: 5px;">
            <button class="btn">立即注册</button>
            <button class="btn">客户中心</button>
        </div>
    </div>
</div>

<section style="background: url(img/bg_team.png);height: 1000px;">

    <div class="container">
        <div class="left_nav">
            <div class="u_pic">
                <img src="img/boss/IMG_9250.JPG" width="96px" />
                <img src="img/level.jpg" />
            </div>
            <p class="u_nick">天体阿妮塔</p>
            <div class="u_icon">
                <i class="iconfont">&#xe603;</i>
                <i class="iconfont">&#xe623;</i>
                <i class="iconfont">&#xe6fa;</i>
            </div>
            <div class="grzx">
                <p class="list" data-id="1">
                    我的积分
                </p>
                <p class="list" data-id="2">
                    订单中心
                </p>
                <p class="list selected" data-id="3">
                    我的收藏
                </p>
                <p class="list list_line" data-id="4">
                    账户管理
                </p>
                <p class="list" data-id="5">
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
            <p class="my_order">浏览历史</p>
            <div class="order_tr">
                <div class="order_trh">
                    <ul class="order_ul">
                        <li>
                            <a class="" href="my_favorite.html">我的收藏</a>
                        </li>
                        <li>
                            <a class="selected" href="javascript:;">浏览历史</a>
                        </li>
                    </ul>
                </div>
                <div class="thead">
                    <p class="order_p" style="width: 120px;">浏览时间</p>
                    <p class="order_p" style="width: 440px;">商品名称</p>
                    <p class="order_p" style="width: 200px;">积分价</p>
                    <p class="order_p" style="width: 160px;">操作</p>
                </div>
            </div>
            <div id="rs">

            </div>
            <div style="height: 28px; width: 360px; margin: 20px auto">
                <ul class="page" id="page"></ul>
            </div>
        </div>
</section>

<div class="footer">
    <div class="footer_wrapp">
        <ul class="footer_wrapp_ul">
            <li>
                <a href="" class="footer_frist_a">走进广和</a>
                <ul class="footer_frist_ul">
                    <li class="subli">
                        <a href="">
                            <span>.</span>公司介绍</a>
                    </li>
                    <li class="subli">
                        <a href="">
                            <span>.</span>领导寄语</a>
                    </li>
                    <li class="subli">
                        <a href="">
                            <span>.</span>企业文化</a>
                    </li>
                    <li class="subli">
                        <a href="">
                            <span>.</span>核心团队</a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="" class="footer_a">财富管理</a>
                <ul class="footer_ul">

                    <li class="subli">
                        <a href="">
                            <span>.</span>产品优势</a>
                    </li>
                    <li class="subli">
                        <a href="">
                            <span>.</span>私募投资</a>
                    </li>

                </ul>
            </li>
            <li>
                <a href="" class="footer_a">广和商学院</a>
                <ul class="footer_ul">
                    <li class="subli">
                        <a href="">
                            <span>.</span>理财知识</a>
                    </li>
                    <li class="subli">
                        <a href="">
                            <span>.</span>政策解读</a>
                    </li>
                    <li class="subli">
                        <a href="">
                            <span>.</span>专家讲座</a>
                    </li>

                </ul>
            </li>
            <li>
                <a href="" class="footer_a">新闻动态</a>
                <ul class="footer_ul">
                    <li class="subli">
                        <a href="">
                            <span>.</span>广和新闻</a>
                    </li>
                    <li class="subli">
                        <a href="">
                            <span>.</span>行业动态</a>
                    </li>

                </ul>
            </li>
            <li>
                <a href="" class="footer_last_a">会员尊享</a>
                <ul class="footer_ul">
                    <li class="subli">
                        <a href="">
                            <span>.</span>会员中心</a>
                    </li>
                    <li class="subli">
                        <a href="">
                            <span>.</span>会员权益</a>
                    </li>
                    <li class="subli">
                        <a href="">
                            <span>.</span>会员活动</a>
                    </li>
                    <li class="subli">
                        <a href="">
                            <span>.</span>和悦商城</a>
                    </li>
                </ul>
            </li>
        </ul>
        <div class="footer_bottom">
            <div class="footer_bottom_left">
                <p>Copyright © 2005 Company Name. Rights Reserved广和投资有限公司版权所有 </p>
            </div>
            <div class="footer_bottom_right">
                <p>北京市朝阳区姚家园路105号冶金地质总局观湖国际2座1层</p>
            </div>
        </div>
    </div>
    <div class="line7"></div>
</div>
</body>
<script src="js/jquery-2.2.0.min.js"></script>
<script src="js/main.js"></script>
<script src="js/page.js"></script>
<script src="layer/layer.js"></script>
<script>
    function cancel_favorite() {
        layer.open({
            type: 1,
            title: false,
            closeBtn: 0,
            area: ["436px", "192px"],
            content: '<div class="cart_tip"><button onclick="layer.closeAll();"></button><button onclick="goCancel();"></button></div>'
        });
    }

    function delHistory(k) {

        $.ajax({
            url: '/history/delete?key=' + k,
            dataType: "json",
            success: function(rs) {
                if(rs.success) {
                    window.location.reload()
                }
            }
        })

    }

    var options,
            pageNo = getUrlParms("pageNo"),
            pageSize = getUrlParms("pageSize");
    if(pageNo == null) pageNo = 1;
    if(pageSize == null) pageSize = 4;
    getdata(pageNo, pageSize);

    function getdata(pageNo, pageSize) {
        var url = getUrlParms();
        if(url.indexOf("pageNo") == -1) {
            url += "&pageNo=" + pageNo + "&pageSize=" + pageSize;
        }

        $.ajax({
            url: "/history/list?" + url,
            type: "post",
            dataType: "json",
            success: function(rs) {
                if(!rs.success && rs.errCode == '0010007') window.location.href = "/login"
                var datas = rs.data.data;
                renderTable(datas, rs.data.Url);
                options = {
                    "id": "page",
                    "data": datas,
                    "maxshowpageitem": 3,
                    "pagelistcount": pageSize,
                    "callBack": function(result) {

                    }
                };
                page.init(rs.data.count, pageNo, options);
            }
        });
    }

    function renderTable(result, u) {

        $("#rs").empty();
        if(result.length == 0) {
            $("#rs").append('<p style="text-align: center;">没有相应的记录</p>')
        }
        for(var i = 0; i < result.length; i++) {

            $("#rs").append(
                    ['<div class="order_item">',

                        '<div class="item_num">	',
                        '<p>' + fmtDate(result[i].time) + '</p>',
                        '</div>',
                        '<div class="item_pic">',
                        '<img src="' + u + result[i].introduce_img_url + '"/>',
                        '</div>',
                        '<div class="item_name">',
                        '<a target="_blank" href="mall_detail.html?id=' + result[i].gid + '">',
                        '<p>' + result[i].name + '</p>',
                        '</a>',
                        '</div>',

                        '<div class="item_price">	',
                        '<p>' + result[i].price + '积分</p>',
                        '</div>',
                        '<div class="item_detail">	',
                        '<a href="javascript:;" onclick="exchange(' + result[i].sku + ')">兑换</a>',
                        dealFav(result[i]),
                        '<a href="javascript:;" onclick="delHistory(' + result[i].key + ')">删除</a>',
                        '</div>',
                        '</div>	'
                    ].join(""))
        }
    }

    function dealFav(r) {
        var f = 0;
        if(r.fid) {
            f = 1;
        }
        var html = '<a href="javascript:;" onclick="goFavorite(' + r.sku + ')">';
        if(r.fid) {
            return html += '取消收藏</a>';
        }
        return html += '收藏</a>';
    }

    function goFavorite(s, f) {
        var url;
        if(f == 1) {
            url = '/GoodsFollow/deleteGoodsDetailFollow?sku=' + s;
        } else {
            url = '/GoodsFollow/add?sku=' + s;
        }
        $.ajax({
            url: url,
            dataType: "json",
            success: function(rs) {
                if(rs.success) {
                    window.location.reload()
                }
            }
        })

    }



</script>

</html>