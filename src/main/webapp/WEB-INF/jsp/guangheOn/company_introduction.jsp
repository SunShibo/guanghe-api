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
  <jsp:include page="../nav/header_nav.jsp"></jsp:include>
  <div class="header_big_font_wrapp"><h1 align="center"  class="header_big_font">走进广和 / On Guanghe</h1></div>

</div>






<div class="news_bn">
  <div class="wrapp">
    <span class="bread">首页 > 走进广和 > 公司介绍</span>
    <a name="gsjs"></a>
    <div class="bread_btn_wrapp">
      <button class="bread_btn bread_btn_active"  onclick="window.location.href='/CompanyIntroduction/list#gsjs'">公司简介</button>
      <button class="bread_btn   " onclick="window.location.href='/ChairmanSpeech/list#dsz'">董事长致辞</button>
      <button class="bread_btn" onclick="window.location.href='#'">企业文化</button>
      <button class="bread_btn " onclick="window.location.href='/CoreTeam/list#hxtd'">核心团队</button>
      <button class="bread_btn " onclick="window.location.href='/BigEvent/list#qyry'">企业荣誉</button>
    </div>
  </div>
</div>


<div style="width: 100%;;background: white;">
  <div class="newsPlaceholder5"></div>
  <div class="news_page_wrapp">
    <div class="news_title_dt_wrapp">
      <h3 class="title" >公司介绍</h3>
    </div>
    <div class="news_line_dt_wrapp">
      <div></div>
    </div>
    <div class="news_en_dt_wrapp">
      <h3 class="en_title" >Company introduction</h3>
    </div>
    <div class="newsPlaceholder1"></div>
  </div>
  <div style="">
    <img style="width: 90%; height: 110%; " class="dsz_img" id="dsz_img"/>
  </div>
  <div class="newsPlaceholder6"></div>
</div>











<jsp:include page="../footer/footer.jsp"></jsp:include>
</body>
<script src="/static/js/jquery-2.2.0.min.js"></script>
<!--<script src="js/jquery.backstretch.min.js"></script>-->
<!--<script src="js/swiper.js"></script>-->
<!--<script src="https://cdn.bootcss.com/Swiper/2.7.6/idangerous.swiper.min.js"></script>-->
<!--<script src="https://cdn.bootcss.com/Swiper/4.3.0/js/swiper.min.js"></script>-->
<script src="/static/js/page.js"></script>
<script src="/static/js/main.js"></script>
<script>
  $.getJSON("/CompanyIntroduction/detail",function(rs){
    $("#dsz_img").attr("src",rs.data.Url+rs.data.CompanyIntroductionBo.image)
  })
</script>

</html>









