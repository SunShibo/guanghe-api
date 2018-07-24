<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title></title>
    <link rel="stylesheet" type="text/css" href="static/css/m_app.css"/>
    <link rel="stylesheet" media="screen and (max-width:1400px)" href="static/css/app.css"/>

    <!--<link rel="stylesheet" href="css/swiper.css">-->
    <!--<link href="https://cdn.bootcss.com/Swiper/2.7.6/idangerous.swiper.min.css" rel="stylesheet">-->
    <link href="https://cdn.bootcss.com/Swiper/4.3.0/css/swiper.min.css" rel="stylesheet">
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
    <div class="header_nav">
        <img src="static/img/logo.png" class="nav_logo"/>
        <ul style="position: relative;">
            <li><a href="#" class="active">首页</a>
                <div class="line8"></div>
            </li>
            <li><a href="#">关于广和</a></li>
            <li><a href="#">财富管理</a></li>
            <li><a href="#">广和商学院</a></li>
            <li><a href="/newsInformation/page">广和新闻</a></li>
            <li><a href="#">会员专享</a></li>


        </ul>
        <div style="float: right; margin-top: 5px;">
            <button>立即注册</button>
            <button class="btn-pri">客户中心</button>
        </div>
    </div>
    <div class="header_content">
        <p align="center">Professional wealth management platform</p>
        <h1 align="center" class="header_content_h1">我们管理的不仅是财富 更是梦想</h1>
        <p align="center" class="header_content_p">Based on the control system and the professional investment consulting team's top wind,</p>
        <p align="center" class="header_content_p">service customized wealth management for high net worth</p>
        <div class="learn">
            <button class="btn-learn">LEARN MORE</button>
        </div>
    </div>

</div>
<div class="midd">
    <div class="swiper-father">
        <div class="midd_wrapp swiper-container" id="swiper-container1">
            <div class="swiper-wrapper" id="midd-wrapper">
            </div>


        </div>
        <div class="swiper-button-next" id="swiper-button-next1"></div>
        <div class="swiper-button-prev" id="swiper-button-prev1"></div>
    </div>
</div>
<div class="main_about">
    <div class="about_warp">
        <div class="about_content">
            <h3>关于广和 / About Guanghe</h3>
            <div class="about_line"></div>

            <div id="introduction"></div>
        </div>
        <div class="about_video">
            <video width="100%" height="100%" style="object-fit: fill;" controls="controls" id="vedio">
            </video>
        </div>
    </div>
</div>
<div class="main_news">
    <img class="news_img" src="static/img/newsline.png" />
    <h3 class="news_title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;广和新闻 / Guanghe news</h3>
    <div class="line5"></div>

    <div class="news_wrapp">
        <div class="news_wrapp_left">
            <div class="placeholder1"></div>
            <div class="news_left_title">
                <p class="news_left_p" id="title1">

                </p>
            </div>
            <div class="placeholder2">
                <div id="news1">

                </div>
            </div>
            <div class="placeholder3"></div>
            <div class="news_left_title">
                <p class="news_left_p" id="title2">
                </p>
            </div>
            <div class="placeholder2">
                <div id="news2">

                </div>
            </div>
        </div>
        <div class="news_wrapp_right">
            <div class="placeholder4"></div>
            <div class="news_right_title">
                <p class="news_right_p" id="title3">
                </p>
            </div>
            <div class="placeholder2">
                <div id="news3">

                </div>
            </div>
            <div class="placeholder3"></div>
            <div class="news_right_title">
                <p class="news_right_p" id="title4" >
                </p>
            </div>
            <div class="placeholder2">
                <div id="news4">

                </div>
            </div>
        </div>
    </div>

</div>
<div class="main_club">
    <div class="club_wrap">
        <div class="club_left" >
            <div class="club_left_wrapp1" >
                <h3> 和悦私享俱乐部 / HeYe Private club</h3>
                <div class="club_line"></div>
                <div class="club_btn_wrapp">
                    <button class="club_btn_active">会员权利</button>
                    <button class="club_btn">会员活动</button>
                    <button class="club_btn">和悦商城</button>
                </div>
                <div class="club_content" id="clubContent0"></div>
            </div>
            <div class="club_left_wrapp2">
                <img class="club_left_img" src="img/2.png" id="clubImg1">
                <div class="club_img_desc" id="clubContent1"></div>
            </div>
            <div class="club_left_wrapp3">
                <img class="club_left_img" src="img/2.png" id="clubImg2">
                <div class="club_img_desc" id="clubContent2"></div>
            </div>
        </div>
        <div class="club_right" >
            <div class="club_right_wrapp1">
                <img class="club_right_img1" src="img/2.png" id="clubImg3">
                <div class="club_img_desc" id="clubContent3"></div>
            </div>
            <div class="club_right_wrapp2">
                <img class="club_right_img2" src="img/2.png"  id="clubImg4">
                <div class="club_img_desc" id="clubContent4"></div>
            </div>
        </div>
    </div>
</div>
<div class="partner">
    <h3>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        合作伙伴 &nbsp;&nbsp;/&nbsp; Cooperative partner</h3>
    <div class="line5"></div>
    <div class="line6"></div>
    <p >我们的成功建立在客户成功的基础上,因此我们投资于客户</p>
    <div class="partner_banner">
        <div class="swiper-fotter-father">
            <div class="swiper-container swiperContainer" id="swiper-container2">
                <ul id="logo" class="swiper-wrapper">
                </ul>
            </div>
            <div class="swiper-button-next" id="swiper-button-next2"></div>
            <div class="swiper-button-prev" id="swiper-button-prev2"></div>
        </div>
    </div>
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
<script src="static/js/jquery-2.2.0.min.js"></script>
<script src="static/js/jquery.backstretch.min.js"></script>
<!--<script src="js/swiper.js"></script>-->
<!--<script src="https://cdn.bootcss.com/Swiper/2.7.6/idangerous.swiper.min.js"></script>-->
<script src="https://cdn.bootcss.com/Swiper/4.3.0/js/swiper.min.js"></script>
<script>



    $.getJSON("home/info",function(rs){
//		$.getJSON("http://192.168.1.1:8888/home/info",function(rs){
        if(rs.data.banner.length>0){
            var imgs = [];
            for(var i=0;i<rs.data.banner.length;i++){
                if(rs.data.banner[i]['image']){
                    imgs.push(rs.data.banner[i]['image'])
                }
            }
            $(".header").backstretch(imgs, {duration: 4000});
        }
        if(rs.data.detail.length>0){
            var html = '';
            for(var i=0;i<rs.data.detail.length;i++){

                html+='<div class="midd_div swiper-slide"><div class="midd_img_wrapp"><img src="';
                if(rs.data.detail[i]['image']){
                    html+=rs.data.detail[i]['image'];
                }
                html+='" class="midd_img"/></div><dt class="midd_div_title">';
                if(rs.data.detail[i]['title']){
                    html+=rs.data.detail[i]['title'];
                }
                html+='</dt><dt class="midd_div_entitle">';
                html+=rs.data.detail[i]['engTitle'];
                html+='</dt><div class="midd_div_content">';
                html+=rs.data.detail[i]['content'];
                html+='</div></div>';

            }
            $("#midd-wrapper").append(html);
        }
        if(rs.data.companyIntroduction.length>0){
            $("#introduction").append(rs.data.companyIntroduction[0].companyIntroduction);
            $("#vedio").append( $("<source src=\""+ rs.data.companyIntroduction[0].video +"\">"));
        }
        if(rs.data.news.length>0){
            for(var i=0;i<rs.data.news.length;i++){
                if(i<2){
                    $("#title"+(i+1)).append(rs.data.news[i].title + '<span id="time'+(i+1)+'">'+rs.data.news[i].createTime.month+'.'+rs.data.news[i].createTime.day+'</span>' );
                }else{
                    $("#title"+(i+1)).append( '<span id="time'+(i+1)+'">'+rs.data.news[i].createTime.month+'.'+rs.data.news[i].createTime.day+'</span>' + rs.data.news[i].title);
                }
                $("#news"+(i+1)).append(rs.data.news[i].content);
            }
        }
        if(rs.data.club.length>0){
            for(var i=0;i<rs.data.club.length;i++){

                $("#clubImg"+i).attr("src",rs.data.club[i].image);
                $("#clubContent"+i).append(rs.data.club[i].content);
            }
        }
        if(rs.data.image.length>0){
            var html = '';
            for(var i=0;i<rs.data.image.length;i++){
                html+='<li class="swiper-slide"><img src="';
                html+=rs.data.image[i].image;
                html+='"></li>';
            }
            $("#logo").append(html);
        }


        new Swiper('#swiper-container1', {
            slidesPerView: 3,
            spaceBetween: 0,
            slidesPerGroup: 1,
            loop: true,
            loopFillGroupWithBlank: true,
            navigation: {
                nextEl: '#swiper-button-next1',
                prevEl: '#swiper-button-prev1',
            },
        });
        new Swiper('#swiper-container2', {
            slidesPerView: 5,
            spaceBetween: 0,
            slidesPerGroup: 1,
            loop: true,
            loopFillGroupWithBlank: true,
            navigation: {
                nextEl: '#swiper-button-next2',
                prevEl: '#swiper-button-prev2',
            },
        });
    })
</script>
</html>
