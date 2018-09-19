<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>会员尊享</title>
  <meta charset="UTF-8">
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <link rel="icon" href="/static/img/16_16 LOGO.png" type="image/x-icon">
  <!--[if lt IE 9]>
  <script src="/static/js/html5shiv.min.js"></script>
  <script src="/static/js/css3-mediaqueries.min.js"></script>
  <![endif]-->
  <link rel="stylesheet" type="text/css" href="/static/css/m_app.css"/>
  <link rel="stylesheet" media="screen and (max-width:1400px)" href="/static/css/app.css"/>
  <link rel="stylesheet" type="text/css" href="/static/css/slick.css" />
  <link rel="stylesheet" type="text/css" href="/static/css/slick-theme.css" />
  <link href="/static/css/zhishipeiyang.css" rel="stylesheet"/>
  <style>
    @media only screen and (min-width: 1400px) {
      .header.news {
        background: #4F4F4F;
        height: 450px;
        background: url(/static/img/vip_bg1.png) no-repeat center center ;
        background-size: cover;
      }
    }
    @media only screen and (max-width: 1400px) {
      .header.news {
        background: #4F4F4F;
        height: 450px;
        background: url(/static/img/vip_bg1.png) no-repeat center center ;
        background-size: cover;
      }
    }
    img { width:100%; }


  </style>
</head>

<body>
<div class="header_line"></div>
<div class="header news">
  <jsp:include page="../nav/header_nav.jsp"></jsp:include>
</div>
<img src="/static/img/vip_pic.png">


<jsp:include page="../footer/footer.jsp"></jsp:include>
</body>
<script src="/static/js/jquery-2.2.0.min.js"></script>
<script type="text/javascript" src="/static/js/slick.min.js"></script>
<script src="/static/js/main.js"></script>
<script>

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
    arrows:false
  });



</script>
</html>
