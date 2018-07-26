<%--
  Created by IntelliJ IDEA.
  User: yxw
  Date: 2018/7/24
  Time: 14:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <title></title>
  <link rel="stylesheet" type="text/css" href="/static/css/m_app.css"/>
  <link rel="stylesheet" media="screen and (max-width:1400px)" href="/static/css/app.css"/>

  <!--<link rel="stylesheet" href="css/swiper.css">-->
  <!--<link href="https://cdn.bootcss.com/Swiper/2.7.6/idangerous.swiper.min.css" rel="stylesheet">-->
  <!--<link href="https://cdn.bootcss.com/Swiper/4.3.0/css/swiper.min.css" rel="stylesheet">-->
  <link href="/static/css/page.css" rel="stylesheet"/>
</head>

<body>
<div class="header_line"></div>
<div class="header news  zjgh_bg">
  <div class="header_up">
    <div class="header_up_left">
      <i class="iconfont">&#xe62c;</i>
      <span>Mon-Fri : 09:00-17:00</span>
    </div>
    <div class="header_up_right">
      <i class="iconfont">&#xe61b;</i>
      <span>+86(021)56497956</span>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <a href="#"><i class="iconfont">&#xe69c;</i></a>
      &nbsp;
      <a href="#"><i class="iconfont">&#xe66a;</i></a>
      &nbsp;
      <a href="#"><i class="iconfont">&#xe9bd;</i></a>
      &nbsp;
      <a href="#"><i class="iconfont">&#xe630;</i></a>
    </div>
  </div>
  <jsp:include page="header_nav.jsp"></jsp:include>
</div>





<div class="news_bn">
  <div class="wrapp">
    <span class="bread">首页 > 走进广和 > 董事长致辞</span>
    <a name="dsz"></a>
    <div class="bread_btn_wrapp">
      <button class="bread_btn " onclick="window.location.href='/CompanyIntroduction/list#gsjs'">公司简介</button>
      <button class="bread_btn  bread_btn_active " onclick="window.location.href='/ChairmanSpeech/list#dsz'">董事长致辞</button>
      <button class="bread_btn" onclick="window.location.href='#'">企业文化</button>
      <button class="bread_btn " onclick="window.location.href='/CoreTeam/list#hxtd'">核心团队</button>
      <button class="bread_btn " onclick="window.location.href='/BigEvent/list#qyry'">企业荣誉</button>
    </div>
  </div>
</div>

<div style="width: 100%;background: white;">
  <div class="newsPlaceholder5"></div>
  <div class="news_page_wrapp">
    <div class="news_title_dt_wrapp">
      <h3 class="title" >董事长致辞</h3>
    </div>
    <div class="news_line_dt_wrapp">
      <div></div>
    </div>
    <div class="news_en_dt_wrapp">
      <h3 class="en_title" >Chairman's speech</h3>
    </div>
    <div class="newsPlaceholder1"></div>




    <div>
      <img class="dsz_img" id="dsz_img" src="/static/img/董事长致辞.png" />
    </div>






    <div class="newsPlaceholder6"></div>
  </div>
</div>










<div class="footer">
  <div class="footer_wrapp">
    <ul class="footer_wrapp_ul">
      <li>
        <a href="" class="footer_frist_a">关于我们</a>
        <ul class="footer_frist_ul">
          <li class="subli">
            <a href="">
              <span>.</span>企业介绍</a></li>
          <li class="subli">
            <a href="">
              <span>.</span>企业公告</a></li>
        </ul>
      </li>
      <li><a href="" class="footer_a">交易产品</a>
        <ul class="footer_ul">
          <li class="subli">
            <a href="">
              <span>.</span>
              外汇
            </a>
          </li>
          <li class="subli">
            <a href="">
              <span>.</span>原油</a></li>
          <li class="subli">
            <a href="">
              <span>.</span>贵金属</a></li>
          <li class="subli">
            <a href="">
              <span>.</span>合约细则</a></li>
        </ul>
      </li>
      <li><a href="" class="footer_a">客服中心</a>
        <ul class="footer_ul">
          <li class="subli">
            <a href="">
              <span>.</span>今日汇率</a></li>
          <li class="subli">
            <a href="">
              <span>.</span>开户流程</a></li>
          <li class="subli">
            <a href="">
              <span>.</span>存取款流程</a></li>
          <li class="subli">
            <a href="">
              <span>.</span>账户问题</a></li>
        </ul>
      </li>
      <li><a href="" class="footer_a">投资交易</a>
        <ul class="footer_ul">
          <li class="subli">
            <a href="">
              <span>.</span>MT4下载</a></li>
          <li class="subli">
            <a href="">
              <span>.</span>MT4安装指南</a></li>
          <li class="subli">
            <a href="">
              <span>.</span>交易指南</a></li>
          <li class="subli">
            <a href="">
              <span>.</span>学习中心</a></li>
        </ul>
      </li>
      <li><a href="" class="footer_last_a">行情资讯</a>
        <ul class="footer_ul">
          <li class="subli">
            <a href="">
              <span>.</span>要闻速递</a></li>
          <li class="subli">
            <a href="">
              <span>.</span>财经日历</a></li>
          <li class="subli">
            <a href="">
              <span>.</span>交易策略</a></li>
        </ul>
      </li>
    </ul>
    <div class="footer_bottom">
      <div class="footer_bottom_left">
        <p>客服支持：custoer@afinserv.com</p>
      </div>
      <div class="footer_bottom_right">
        <ul>
          <li><a href="">风险披露</a></li>
          <li><a href="">免责申明</a></li>
          <li><a href="">客户协议</a></li>
          <li><a href="">会员登录</a></li>
        </ul>
      </div>
    </div>
  </div>
  <div class="line7"></div>
</div>
</body>
<script src="/static/js/jquery-2.2.0.min.js"></script>
<!--<script src="js/jquery.backstretch.min.js"></script>-->
<!--<script src="js/swiper.js"></script>-->
<!--<script src="https://cdn.bootcss.com/Swiper/2.7.6/idangerous.swiper.min.js"></script>-->
<!--<script src="https://cdn.bootcss.com/Swiper/4.3.0/js/swiper.min.js"></script>-->
<script src="/static/js/page.js"></script>
<script src="/static/js/main.js"></script>
<%--<script>

  $.getJSON("/ChairmanSpeech/detail",function(rs){
    $("#dsz_img").attr("src",rs.data.image);
  })

</script>--%>
</html>








