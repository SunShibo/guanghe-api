<%--
  Created by IntelliJ IDEA.
  User: yxw
  Date: 2018/8/3
  Time: 14:00
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
  <link rel="stylesheet" type="text/css" href="/static/css/slick.css" />
  <link rel="stylesheet" type="text/css" href="/static/css/slick-theme.css" />
  <link href="/static/css/zhishipeiyang.css" rel="stylesheet"/>
  <style>
    .header.news {
      background: #4F4F4F;
      height: 450px;
    }

    .line{
      width: 65px; height: 2px; background-color: #D3A359; margin: 10px auto;
    }

    .boss_line {
      border-bottom: 2px solid #E2E2E2;
      height: 50px;
      width: 100%;
      background: transparent;
      position: relative;
      margin-bottom: 10px;
    }
    .colorlump{
      height: 20px;
      width: 35px;
      border-radius: 20px;
      position: absolute;
      background: #D3A359;
      bottom: -10px;
    }
    .cl1{
      left: 0;
    }
    .cl2{
      left:50px;
    }
    .cl3{
      left:100px
    }
    .cl4{
      left:150px
    }
  </style>
</head>

<body>
<div class="header_line"></div>
<div class="header news sxy_bg">
  <jsp:include page="/WEB-INF/jsp/nav/header_nav.jsp"></jsp:include>
  <div style="height: 120px;"></div>
  <p align="center" style="font-size:47px">
    理财知识培养<span style="font-size: 32px;"> / Training of financial knowledge</span></p>
</div>





<div class="news_bn">
  <div class="wrapp">
    <span class="bread">首页 > 广和商学院 > 理财知识培养</span>
    <a name="hxtd"></a>
    <div class="bread_btn_wrapp">
      <button class="bread_btn bread_btn_active" onclick="window.location.href='/KnowledgeTraining/page'">理财知识培养</button>
      <button class="bread_btn" onclick="window.location.href='/PolicyInterpreTation/page'">政策解读</button>
      <button class="bread_btn" onclick="window.location.href='/ExpertIectureHall/page'">私享顾问</button>
    </div>
  </div>
</div>

<section class="panel team" data-section-name="team">
  <div class="container">
    <div class="inner">
      <div class="newsPlaceholder5"></div>
      <p align="center" style="font-size: 36px;">理财知识培养</p>
      <div class="line"></div>
      <p align="center" style="font-size: 26px;">Training of financial knowledge</p>
      <div>

        <div style="height: 50px;"></div>
      </div>
      <div class="team-box">
        <div class="member-list" id="member-list">

        </div>
        <div class="member-detail" id="member-detail">

        </div>
        <div class="page-bottom-space"></div>
      </div>
    </div>
</section>
<jsp:include page="../footer/footer.jsp"></jsp:include>
</body>
<script src="/static/js/jquery-2.2.0.min.js"></script>
<script type="text/javascript" src="/static/js/slick.min.js"></script>
<script src="/static/js/main.js"></script>
<script>
  $.getJSON("/KnowledgeTraining/detail", function(rs) {
    var len = rs.data.news.length;//数据条数(灵活)
    var html1="",html2="";
    for (var i = 0; i < len; i++) {
      html1+='<div class="list-item"><div class="list-item-inner"><p><img style="width: 100%;" src="';
      html1+= rs.data.Url;
      html1+= rs.data.news[i].image;
      html1+='"></p></div></div>';
      html2+='<div class="detail-item"><div class="boss_line"><div class="colorlump cl';
      html2+=(i+1);
      html2+='"></div></div></div>';
    }
    $('#member-list').append(html1);
    $('#member-detail').append(html2);
    var line_width = $(".boss_line").css("width").split("p")[0]-35;
    for (var i = 0; i < len; i++) {

      $(".cl"+(i+1)).css("left",((100/(len-1))*i)+"%")
      if ((i+1)==len) {
        $(".cl"+(i+1)).css("left",line_width+"px");
      }
    }
    $('.member-detail').slick({
      slidesToShow: 1,
      slidesToScroll: 1,
      arrows: false,
      fade: true,
      asNavFor: '.member-list'
    });
    $('.member-list').slick({
      slidesToShow: 3,
      slidesToScroll: 1,
      asNavFor: '.member-detail',
      dots: false,
      centerMode: true,
      focusOnSelect: true,
      centerPadding: '0px',
      arrows: false
    })
  });


</script>
</html>
