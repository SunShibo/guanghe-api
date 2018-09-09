<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

    <title>广和投资</title>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!--[if lt IE 9]>
    <script src="/static/js/html5shiv.min.js"></script>
    <script src="/static/js/css3-mediaqueries.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="/static/css/m_app.css"/>
    <link rel="stylesheet" media="screen and (max-width:1400px)" href="/static/css/app.css"/>
    <link rel="stylesheet" type="text/css" href="/static/css/slick-theme.css" />
    <link rel="stylesheet" type="text/css" href="/static/css/slick.css" />
    <style>

        .btn:hover{
            border: #D3A359 1px solid;
            color: #D3A359;
        }
        .iconfont:hover{
            color: #D3A359;
        }
        @font-face {
            font-family: 'iconfont';  /* project id 754425 */
            src: url('//at.alicdn.com/t/font_754425_sggjnxu4oii.eot');
            src: url('//at.alicdn.com/t/font_754425_sggjnxu4oii.eot?#iefix') format('embedded-opentype'),
            url('//at.alicdn.com/t/font_754425_sggjnxu4oii.woff') format('woff'),
            url('//at.alicdn.com/t/font_754425_sggjnxu4oii.ttf') format('truetype'),
            url('//at.alicdn.com/t/font_754425_sggjnxu4oii.svg#iconfont') format('svg');
        }
        .vedio_icon{
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
            font-size: 80px;
            color: white;
            cursor: pointer;
        }
        .footer_bottom p {
            color: #FFFFFF;
            font-size: 12px;
        }
        .footer_bottom_right {
            float: right;
            margin-top: 5px;
        }
        .club_btn:hover{
            background: #D3A359;
            color: white;
        }
        .club_btn:active{
            position: relative;
            top: 1px;
            left: 1px;
        }
        .shadow{
            box-shadow:0 0 10px rgba(78, 113, 184, .2)inset;
        }
        .news_right_p:hover{
            color: #D3A359;
        }
        .news_left_p:hover{
            color: #D3A359;
        }
        .midd_wrapp{
            padding-top: 0px;
            height:576px;
            padding: 0;
        }
        .midd{
            padding-top: 80px;
            background-image: url(img/lunbo_bg.gif);
            background-size: cover;
        }
        .swiper-father{
            height: 520px;
        }
        .midd_div_content{
            height: 189px;
            overflow: hidden;
        }

        button {
            background-color: transparent;
            color: white;
            padding: 8px 10px;
            border-radius: 2px;
            border: white 1px solid;
            cursor: pointer;
        }
        .btn:active{
            position: relative;
            top: 1px;
            left: 1px;
        }
        @media screen and (max-width: 1400px) {
            .about_video {
                float: right;
                width: 280px;
                height: 270px;
                position: relative;
            }


            .footer_last_a {
                padding: 40px 60px 15px 60px;
            }
            .partner ul {
                width: 900px;
                height: 93px;
                margin: 0 auto;
                padding: 1px 0;
                border: 1px solid #eee;
            }
            .partner div ul li {
                width: 180px!important;
                height: 90px;
            }
            .friend_img{
                border-left: 1px solid #eee;
            }
            .nav_a {
                display: block;
                margin: 8px 15px;
                padding: 0 0 10px 0;
                color: #fff;
                font-size: 16px;
            }
            .nav_logo {
                width: 155px;
                height: 45px;
                float: left;
                margin-right: 25px;
                margin-top: 0px;
            }
            .header {
                height: 670px;
                color: white;
                font-size: 10px;
                padding-top: 4px;
                width: 100%
            }

            /*					9月1改动*/
            .club_left_wrapp1 {
                /*padding: 42px 105px 55px 45px;
                height: 292px;*/
                position: relative;
                padding: 30px 25px 30px 25px;
                height: 273px;
            }
            .club_right_wrapp2 {
                padding: 9px 18px 26px 11px;
                margin-top: 333px;
            }
            .club_btn_wrapp {
                width: 500px;
                padding: 30px 0px 42px 25px;
                position: absolute;
                top: 7px;
                right: -444px;
            }
            .club_desc{
                width: 914px;
                height:200px ;
                margin-top: 37px;
                margin-left: 30px;
                text-align: center;
                line-height: 30px;
                color:rgb(127,127,127)
            }
            .line7 {
                position: relative;
                top: 20px;
                height: 1px;
                width: 100%;
                background: #616161;
            }
        }
        @media screen and (min-width: 1400px) {
            .about_video {
                float: right;
                width: 457px;
                height: 370px;
                position:relative
            }
            .partner ul {
                width: 1170px;
                height: 120px;
                margin: 0 auto;
                padding: 1px 0;
                border: 1px solid #eee;
            }
            .partner div ul li {
                width: 234px!important;
                height: 119px;
            }
            .friend_img{
                border-left: 1px solid #eee;
            }
            .nav_a {
                display: block;
                margin: 8px 25px;
                padding: 0 0 10px 0;
                color: #fff;
                font-size: 16px;
            }
            .nav_logo {
                width: 155px;
                height: 45px;
                float: left;
                margin-right: 65px;
                margin-top: 0px;
            }
            /*				9月1改动*/
            .club_left_wrapp1 {
                padding: 42px 105px 55px 45px;
                height: 292px;
                position: relative;
            }
            .club_right_wrapp2 {
                padding: 9px 18px 26px 11px;
                margin-top: 387px;
            }
            .club_btn_wrapp {
                width: 520px;
                padding: 30px 0px 42px 25px;
                position: absolute;
                top: 20px;
                right: -414px;
            }
            .club_desc{
                width: 1031px;
                height:200px ;
                margin-top: 59px;
                margin-left: 30px;
                text-align: center;
                line-height: 30px;
                color:rgb(127,127,127)
            }
            .line7 {
                position: relative;
                top: 45px;
                height: 1px;
                width: 100%;
                background: #616161;
            }
        }
        .circle {
            height: 46px;
            width: 28px;
            border: 1px solid #D3A359;
            text-align: center;
            border-radius: 45%;
            cursor: pointer;
            position: relative;
        }
        .point{
            width: 5px;
            height: 5px;
            background: #D3A359;
            border-radius: 5px;
            position: absolute;
            top: 10px;
            left: 11px;
        }
        .main_btn_wrap{
            width: 30px;
            height: 48px;
            margin: 0 auto;
            position: absolute;
            left: 48%;
            bottom: 20px;
        }
        .wxgzh{
            position:relative;
        }
        .wxgzh:hover .wximg{
            display: block;
        }
        .wximg{
            display: none;position: absolute;width: 100px;height: 100px;left: 0;top: 30px;
        }
        .white_btn{
            padding: 8px 10px;border: white 1px solid;border-radius: 2px;color: white;
        }
        .no_white_btn{
            padding: 8px 10px;border: #D3A359 1px solid;border-radius: 2px;color: #D3A359;
        }
        .dis_none{
            display: none;
        }
        .club_btn_active {
            color: #fff;
            margin-left: 15px;
            border-radius: 5px;
        }
        .club_btn {
            margin-left: 15px;
        }
    </style>
</head>

<body>
<div class="header_line"></div>
<div class="header" >
    <jsp:include page="WEB-INF/jsp/nav/header_nav.jsp"></jsp:include>
    <div style="height: 120px;"></div>
    <div class="header_content">
    </div>
    <div class="main_btn_wrap">
        <%--<div class="circle"><div class="point"></div></div>--%>
    </div>

</div>
<div class="midd">
    <div class="swiper-father">
        <div class="midd_wrapp" id="swiper-container1">
            <div id="midd-wrapper">

            </div>
        </div>
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
            <video width="100%" height="100%" style="object-fit: fill;" id="vedio">
                您的浏览器不支持播放该视频！
            </video>
            <i class="iconfont vedio_icon">&#xe6b0;</i>
        </div>
    </div>
</div>
<div class="main_news">
    <img class="news_img" src="/static/img/newsline.png" />
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
                <p class="news_left_p" id="title3">
                </p>
            </div>
            <div class="placeholder2">
                <div id="news3">
                </div>
            </div>
        </div>
        <div class="news_wrapp_right">
            <div class="placeholder4"></div>
            <div class="news_right_title">
                <p class="news_right_p" id="title2">
                </p>
            </div>
            <div class="placeholder2">
                <div id="news2">
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
                    <button class="club_btn club_btn_active" data-id="0">会员权利</button>
                    <button class="club_btn" data-id="1">会员活动</button>
                    <button class="club_btn" data-id="2">和悦商城</button>
                </div>
                <div class="club_desc">
                    <p id="c_d_0"></p>
                    <p id="c_d_1"></p>
                    <p id="c_d_2"></p>
                    <p id="c_d_3"></p>
                    <p id="c_d_4"></p>
                    <p id="c_d_5"></p>
                </div>
            </div>
            <div class="club_left_wrapp2">
                <a target="_blank" id="clubImga1"><img class="club_left_img" id="clubImg1"></a>
                <div class="club_img_desc" id="clubContent1"></div>
            </div>
            <div class="club_left_wrapp3">
                <a target="_blank" id="clubImga2"><img class="club_left_img" id="clubImg2"></a>
                <div class="club_img_desc" id="clubContent2"></div>
            </div>
        </div>
        <div class="club_right" >
            <div class="club_right_wrapp2">
                <a target="_blank" id="clubImga3"><img class="club_right_img2" id="clubImg3"></a>
                <div class="club_img_desc" id="clubContent3"></div>
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
            <div class="swiperContainer" id="swiper-container2">
                <ul id="logo" class="" >
                </ul>
            </div>

        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/jsp/footer/footer.jsp"></jsp:include>
</body>
<script src="/static/js/jquery-2.2.0.min.js"></script>
<script src="/static/js/jquery.backstretch.min.js"></script>
<script src="https://cdn.bootcss.com/Swiper/4.3.0/js/swiper.min.js"></script>
<script type="text/javascript" src="/static/js/slick.min.js"></script>
<script src="/static/js/main.js"></script>
<script>
    function checkNum(i){
        if(i==0)return 'wealthManagement/page'
        if(i==1)return "/privateConsultant/page"
        if(i==2)return "/BusinessSchoolDetails/list"
    }
    $.getJSON("/home/info",function(rs){
        infoData = rs.data;var urll = rs.data.Url;
        if (rs.data.banner.length > 0){
            var imgs = [];
            for (var i = 0; i < rs.data.banner.length; i++) {
                if (rs.data.banner[i]['image']) {
                    imgs.push(rs.data.Url+rs.data.banner[i]['image'])
                }
            }
            $(".header").backstretch(imgs, {duration: 10000,fade:2000});
            /*$(".header").backstretch(['/static/img/A-广和投资-官网首页Banner.png'], {duration: 4000});*/
        }
        if (rs.data.detail.length > 0) {
            var html = '';
            for (var i = 0; i < rs.data.detail.length; i++) {

                html+='<a target="_blank" href="'+checkNum(i)+'"><div class="midd_div swiper-slide"><div class="midd_img_wrapp"><img src="';
                if(rs.data.detail[i]['image']){
                    html+=urll;
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
                html+='</div></div></a>';

            }
            $("#midd-wrapper").append(html);
        }
        if (rs.data.companyIntroduction.length > 0) {
            if (rs.data.companyIntroduction[0].companyIntroduction.length > 300) {
                $("#introduction").append(rs.data.companyIntroduction[0].companyIntroduction.substr(0,300)+". . .");
            }else{
                $("#introduction").append(rs.data.companyIntroduction[0].companyIntroduction);
            }
            $("#vedio").append($("<source src=\'" +rs.data.Url+ rs.data.companyIntroduction[0].video + "\'>"));
//            $("#vedio").append($("<source src='http://yun.it7090.com/video/XHLaunchAd/video01.mp4'>"));
        }
        if (rs.data.news.length > 0) {
            for (var i = 0; i < rs.data.news.length; i++) {
                var createTime = rs.data.news[i].createTime.split('-')[1] + '.' + rs.data.news[i].createTime.split('-')[2].split(' ')[0];
                if (i % 2 == 0) {
                    $("#title" + (i + 1)).append(rs.data.news[i].title + '<span id="time' + (i + 1) + '">' + createTime + '</span>');
                } else {
                    $("#title" + (i + 1)).append('<span id="time' + (i + 1) + '">' + createTime + '</span>' + rs.data.news[i].title);
                }
                if (rs.data.news[i].synopsis.length > 80) {
                    $("#news" + (i + 1)).append(rs.data.news[i].synopsis.sub(0, 80) + ". . .");
                } else {
                    $("#news" + (i + 1)).append(rs.data.news[i].synopsis);
                }
            }
        }
        renderClub(rs.data.club,0);//渲染俱乐部数据
        if (rs.data.image.length > 0) {
            var html = '';
            for (var i = 0; i < rs.data.image.length; i++) {
                html += '<li class="swiper-slide"><img class="friend_img" src="';
                html += rs.data.Url+rs.data.image[i].image;
                html += '"></li>';
            }
            $("#logo").append(html);
        }
        $('#midd-wrapper').slick({
            slidesToShow: 3,
            slidesToScroll: 1,
            dots: false,
            nextArrow: "<button type='button' class='slick-next'>Next</button>",
            centerMode: true
        });
        $('#logo').slick({
            slidesToShow: 5,
            slidesToScroll: 1,
            dots: false,
            nextArrow: "<button type='button' class='slick-next'>Next</button>",
        });
        $(".midd_div").hover(function(){
            $(this).addClass("shadow")
        },function(){
            $(this).removeClass("shadow")
        })

    })


    var flag = true;
    //    $(".circle").on("click",function(){
    //        $(".header").backstretch("next");
    //        if(flag){
    //            $(".point").animate({
    //                "top": "32px"
    //            }, "slow");
    //        } else{
    //            $(".header").backstretch("next");
    //            $(".point").animate({
    //                "top": "10px"
    //            }, "slow");
    //        }
    //        flag = !flag;
    //    })
    var $vi = $(".vedio_icon");
    var $v = $("#vedio")[0];
    $v.controls = false;
    $vi.on("click",function(){

        if ($v.paused) {
            $v.controls = true;
            $v.play();
            $vi.css("opacity","0");

        } else {
            $v.controls = false;
            $vi.css("opacity","1");
            $v.pause();
        }
    })
    function renderClub(rs,n){
        for(var i=0;i<rs.length;i++){
            if(i==0){
                var arrP = rs[i].content.split("(#)");
                for (var j = 0; j < arrP.length; j++) {
                    $("#c_d_"+j).text(arrP[j]);
                }
            } else{
                switch (n){
                    case 0:
//                        $("#clubImga"+i).attr("href","/activites/list");
                        break;
                    case 1:
//                        $("#clubImga"+i).attr("href","/activites/details?id="+rs[i].activitiId);
                        break;
                    case 2:
//                        $("#clubImga"+i).attr("href","mall_detail.html?id="+rs[i].goodsId);
                        break;
                }
                $("#clubImg"+i).attr("src",infoData.Url+rs[i].image);
                $("#clubContent"+i).text(rs[i].content);
            }
        }
    }
    $(".club_btn").on("click",function(){
        $(".club_btn").removeClass("club_btn_active");
        $(this).addClass("club_btn_active");
        $(".item").addClass("dis_none");
        var id = Number($(this).data("id"));
        switch (id){
            case 0:
                renderClub(infoData.club,0)
                break;
            case 1:
                renderClub(infoData.activiti,1)
                break;
            case 2:
                renderClub(infoData.goods,2)
                break;
        }
    });
</script>
</html>
