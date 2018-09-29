<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>资产管理</title>
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

    <!--<link rel="stylesheet" href="css/swiper.css">-->
    <!--<link href="https://cdn.bootcss.com/Swiper/2.7.6/idangerous.swiper.min.css" rel="stylesheet">-->
    <!--<link href="https://cdn.bootcss.com/Swiper/4.3.0/css/swiper.min.css" rel="stylesheet">-->
    <link href="/static/css/page.css" rel="stylesheet"/>
</head>

<body>
<div class="header_line"></div>
<div class="header news zcgl_bg">
    <%--<div class="header_up">--%>
        <%--<div class="header_up_left">--%>
            <%--<i class="iconfont">&#xe62c;</i>--%>
            <%--<span>Mon-Fri : 09:00-17:00</span>--%>
        <%--</div>--%>
        <%--<div class="header_up_right">--%>
            <%--<i class="iconfont">&#xe61b;</i>--%>
            <%--<span>+86(021)56497956</span>--%>
            <%--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
            <%--<a href="#"><i class="iconfont">&#xe69c;</i></a>--%>
            <%--&nbsp;--%>
            <%--<a href="#"><i class="iconfont">&#xe66a;</i></a>--%>
            <%--&nbsp;--%>
            <%--<a href="#"><i class="iconfont">&#xe9bd;</i></a>--%>
            <%--&nbsp;--%>
            <%--<a href="#"><i class="iconfont">&#xe630;</i></a>--%>
        <%--</div>--%>
    <%--</div>--%>
    <jsp:include page="../nav/header_nav.jsp"></jsp:include>
    <div class="header_big_font_wrapp">


    </div>
        <h1 align="center"  class="header_big_font">资产管理 / Asset management</h1>
</div>





<div class="news_bn">
    <div class="wrapp">
        <span class="bread"><a href="/">首页</a> > 资产管理</span>
    </div>
</div>

<div style="width: 100%;background: white;display: block;">
    <!--<div class="newsPlaceholder5"></div>
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
            <img class="dsz_img" src="img/logo.png" />
        </div>
        <div class="newsPlaceholder6"></div>
    </div>-->
    <img src="/static/img/资产管理.png" style="width: 100%;height: 100%;display: block;" id="imgUrl"/>
</div>




<jsp:include page="../footer/footer.jsp"></jsp:include>
</body>
<script src="/static/js/mainJs/jquery.min.js"></script>
<!--<script src="js/jquery.backstretch.min.js"></script>-->
<!--<script src="js/swiper.js"></script>-->
<!--<script src="https://cdn.bootcss.com/Swiper/2.7.6/idangerous.swiper.min.js"></script>-->
<!--<script src="https://cdn.bootcss.com/Swiper/4.3.0/js/swiper.min.js"></script>-->
<script src="/static/js/web/page.js"></script>
<script>
    $(function(){

        $.ajax({
            type : "post",
            url : "/assetManagement/detail",
            data : {},
            dataType : "json",
            success : function (data){
                if(data.success == false){
                    alert(data.errMsg);
                    return;
                }else{
                    console.log(data);
                    $("#imgUrl").attr("src",'${Url}'+data.data.imgUrl);
                }
            }
        });
    });
</script>
</html>
