<%--
  Created by IntelliJ IDEA.
  User: yxw
  Date: 2018/9/8
  Time: 22:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <title>企业荣誉</title>
  <link rel="stylesheet" type="text/css" href="/static/css/m_app.css"/>
  <link rel="stylesheet" media="screen and (max-width:1400px)" href="/static/css/app.css"/>
  <link href="/static/css/page.css" rel="stylesheet"/>
  <style>
    .bread_btn {
      width: 117px;
      height: 36px;
      background-color: #cccccc;
      border-radius: 18px;
      border: transparent;
      margin: 0 5px;
      font-family: PingFang-SC-Bold;
      font-size: 16px;
      line-height: 26px;
      letter-spacing: 0px;
      color: #ffffff;
    }
    .bread_btn.bread_btn_active {
      background: #D3A359;
    }

    @media only screen and (min-width: 1400px){

      .img_wp{
        width:1200px; margin: auto;height: 680px;padding-top: 250px;
      }
      .img_wp img{
        width: 396px;
      }
      #bg_div{
        background: url(/static/img/qyry_bg.png) no-repeat center ;
      }

    }
    @media only screen and (max-width: 1400px){

      .img_wp{
        width:1024px; margin: auto;height: 680px;padding-top: 180px;
      }
      .img_wp img{
        width: 338px;
      }
      #bg_div{
        height: 800px;background: white;background-image: url(/static/img/qyry_bg.png);background-size:cover ;
      }
    }
  </style>
</head>

<body>
<div class="header_line"></div>
<div class="header news zjgh_bg">

  <jsp:include page="../nav/header_nav.jsp"></jsp:include>
  <div class="header_big_font_wrapp"></div>
  <h1 align="center"  class="header_big_font">走进广和 / On Guanghe</h1>
</div>





<div class="news_bn">
  <div class="wrapp">
    <span class="bread">首页 > 走进广和 > 企业荣誉</span>
    <a id="qyry" class="maodian"></a>
    <div class="bread_btn_wrapp">
      <button class="bread_btn " onclick="window.location.href='/CompanyIntroduction/list'">公司简介</button>
      <button class="bread_btn " onclick="window.location.href='/ChairmanSpeech/list'">董事长致辞</button>
      <button class="bread_btn " onclick="window.location.href='/CoreTeam/list'">核心团队</button>
      <button class="bread_btn " onclick="window.location.href='/companyCultrue/list'">企业文化</button>
      <button class="bread_btn " onclick="window.location.href='/BigEvent/list'">发展历程</button>
      <button class="bread_btn bread_btn_active" onclick="window.location.href='/CorporateHonor/list'">企业荣誉</button>

    </div>
  </div>
</div>

<div id="bg_div" >
  <div class="newsPlaceholder5"></div>
  <div class="news_title_dt_wrapp" style="width: 136px;">
    <h3 class="title" >企业荣誉</h3>
  </div>
  <div class="news_line_dt_wrapp">
    <div></div>
  </div>
  <div class="news_en_dt_wrapp" style="width: 240px;">
    <h3 class="en_title" >Corporate honor</h3>
  </div>
  <div class="img_wp" style="padding:50px 0;">

  </div>
</div>

<jsp:include page="../footer/footer.jsp"></jsp:include>
</body>
<script src="/static/js/jquery-2.2.0.min.js"></script>
<script src="/static/js/main.js"></script>
<script>
  var w = $(".img_wp");
  $.ajax({
    url: "/CorporateHonor/detail",
    dataType: "json",
    success:function(rs){
      var r = rs.data.CorporateHonorBo;
      for (var i = 0; i < r.length; i++) {
        w.append('<img src="'+rs.data.Url+r[i].image+'" />')
      }
    }
  })
</script>
</html>

