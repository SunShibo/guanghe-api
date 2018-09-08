<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>财富管理</title>
    <link rel="stylesheet" type="text/css" href="/static/css/m_app.css"/>
    <link rel="stylesheet" media="screen and (max-width:1400px)" href="/static/css/app.css"/>

    <!--<link rel="stylesheet" href="css/swiper.css">-->
    <!--<link href="https://cdn.bootcss.com/Swiper/2.7.6/idangerous.swiper.min.css" rel="stylesheet">-->
    <!--<link href="https://cdn.bootcss.com/Swiper/4.3.0/css/swiper.min.css" rel="stylesheet">-->
    <link href="/static/css/page.css" rel="stylesheet"/>
    <style>
        .container{
            width: 100%;background: white;
            position: relative;
        }
        .btn{
            position: absolute;
            width: 94px;
            height: 30px;
            top: 17.5%;
            right: 38%;
            opacity: 0;
        }
        .c_img{
            width: 100%;height: 100%;
            display: block;
        }
        .cart_tip{
            width: 579px;
            height: 324px;
            background-image: url(img/test_pop.png);
            position: relative;
        }
        .cart_tip>button:nth-child(1){
            width: 77px;
            height: 32px;
            opacity: 0;
            position: absolute;
            bottom:21px;
            left: 188px;
        }
        .cart_tip>button:nth-child(2){
            width: 77px;
            height: 32px;
            opacity: 0;
            position: absolute;
            bottom:21px;
            left: 316px;
        }
        .cart_tip>button:nth-child(3){
            width: 22px;
            height: 22px;
            opacity: 0;
            position: absolute;
            top:21px;
            right: 16px;
        }
    </style>
</head>

<body>
<div class="header_line"></div>
<div class="header news cfgl_bg">
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
        <div style="height: 150px"></div>
    <div class="header_big_font_wrapp">
        <h1 align="center"  class="header_big_font">财富管理 / Wealth management</h1>
    </div>

</div>





<div class="news_bn">
    <div class="wrapp">
        <span class="bread">首页 > 财富管理</span>
    </div>
</div>

<div class="container">
    <img src="" class="c_img"/>
    <button class="btn"></button>
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
            url : "/wealthManagement/detail",
            data : {},
            dataType : "json",
            success : function (data){
                if(data.success == false){
                    alert(data.errMsg);
                    return;
                }else{
                    console.log(data);
                    $(".c_img").attr("src",'${Url}'+data.data.imgUrl);
                }
            }
        });
    });

    $(".btn").on("click",function(){
        $.ajax({
            url: "/questionnaire/queryUserInfo",
            dataType: "json",
            success:function(rs){
                if(rs.errCode=="0010007"){
                    window.location.href = "/login/loginPage"
                } else{
                    if(rs.data.examen!=1){//没有做过问卷调查
                        layer.open({
                            type: 1,
                            title: false,
                            closeBtn: 0,
                            area:["590px","330px"],
                            content: '<div class="cart_tip"><button onclick="backHome();"></button><button onclick="goTest('+rs.data.cognizance+');"></button><button onclick="layer.closeAll();"></button></div>'
                        });
                    }else{
                        window.location.href = "/privateInvestment/page"
                    }
                }
            }
        })
        return;
        if(false){
            //先判断是否登录，再判断是否完成风险评测
            window.location.href = "/privateInvestment/page";
            return;
        } else{
            //判断风险评测


            //没完成风险评测
            layer.open({
                type: 1,
                title: false,
                closeBtn: 0,
                area:["590px","330px"],
                content: '<div class="cart_tip"><button onclick="backHome();"></button><button onclick="goTest();"></button><button onclick="layer.closeAll();"></button></div>'
            });

        }

    })
    function backHome(){
        window.location.href = "/";
    }
    function goTest(v){
        if(v!=1){
            //跳转到合格证认定页面
            window.location.href = "identify.html";
        } else{
            //跳转到风险评测页面
            window.location.href = "research.html";
        }


    }
</script>
</html>
