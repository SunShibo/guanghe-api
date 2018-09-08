<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>私享顾问</title>
    <link rel="stylesheet" type="text/css" href="/static/css/m_app.css"/>
    <link rel="stylesheet" media="screen and (max-width:1400px)" href="/static/css/app.css"/>

    <!--<link rel="stylesheet" href="css/swiper.css">-->
    <!--<link href="https://cdn.bootcss.com/Swiper/2.7.6/idangerous.swiper.min.css" rel="stylesheet">-->
    <!--<link href="https://cdn.bootcss.com/Swiper/4.3.0/css/swiper.min.css" rel="stylesheet">-->
    <style>
        .imgg{
            display: block;
            /*filter:grayscale(100%);*/
            /*opacity: 0.8;*/
        }
        .imgg:hover{
            /*filter: none;*/
            /*opacity: 1;*/
        }
        .ppp{
            width: 25%;float: left; position: relative;
        }







        /* 触发弹窗图片的样式 */
        #myImg {
            border-radius: 5px;
            cursor: pointer;
            transition: 0.3s;
        }

        #myImg:hover {opacity: 0.7;}

        /* 弹窗背景 */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            /*padding-top: 100px;*/ /* Location of the box */
            left: 0;
            top: 0;
            right: 0;
            bottom:0;
            margin: auto;
            width: 800px; /* Full width */
            height: 400px; /* Full height */
            /*overflow: auto;*/ /* Enable scroll if needed */
            /*background-color: rgb(0,0,0);*/ /* Fallback color */
            /*background-color: rgba(0,0,0,0.9);*/ /* Black w/ opacity */
            background-color: white;
        }

        /* 图片 */
        .modal-content {
            margin: auto;
            display: block;
            /*width: 80%;*/
            /*max-width: 700px;*/
            width: 350px;
            height: 400px;

        }

        /* 文本内容 */
        #caption {
            margin: auto;
            display: block;
            /*width: 80%;*/
            width: 340px;
            max-width: 700px;
            text-align: center;
            color: #ccc;
            /*padding: 10px 0;*/
            height: 350px;
            float: right;
            background-color: #FFFFFF;
            padding: 0px 30px;

        }

        /* 添加动画 */
        #caption,.modal {
            -webkit-animation-name: zoom;
            -webkit-animation-duration: 0.6s;
            animation-name: zoom;
            animation-duration: 0.6s;
        }

        @-webkit-keyframes zoom {
            from {-webkit-transform:scale(0)}
            to {-webkit-transform:scale(1)}
        }

        @keyframes zoom {
            from {transform:scale(0)}
            to {transform:scale(1)}
        }

        /* 关闭按钮 */
        .close {
            position: absolute;
            top: 0px;
            right: 20px;
            color: #f1f1f1;
            font-size: 40px;
            font-weight: bold;
            transition: 0.3s;
        }

        .close:hover,
        .close:focus {
            color: #bbb;
            text-decoration: none;
            cursor: pointer;
        }

        /* 小屏幕中图片宽度为 100% */
        @media only screen and (max-width: 800px){
            .modal-content {
                width: 100%;
            }
        }
        .guwen{
            width: 73px;height: 30px; border: 1px solid #FFFFFF; color: #FFFFFF;font-size: 18px;
            padding: 0px 5px;position: absolute;top: 15px; left: 10px; display: none;border-radius: 3px;
        }

        .imgg{
            display: block;transition: all 0.6s;
        }

        .ppp{
            width: 25%;float: left; position: relative;overflow: hidden;
        }

        .imgg:hover {
            transform: scale(1.1);
        }


    </style>
</head>

<body>
<div class="header_line"></div>
<div class="header news sxy_bg">
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
        <div style="height: 150px"></div>
        <h1 align="center"  class="header_big_font">广和商学院 / Guanghe Business School</h1>
    </div>

</div>





<div class="news_bn">
    <div class="wrapp">
        <span class="bread">首页 > 广和商学院  > 私享顾问</span>
        <!--<a name="dsz"></a>-->
        <%--<div class="bread_btn_wrapp">--%>
            <%--<button class="bread_btn ">理财知识培养</button>--%>
            <%--<button class="bread_btn">政策解读</button>--%>
            <%--<button class="bread_btn" >专家讲座</button>--%>
            <%--<button class="bread_btn bread_btn_active">私享顾问</button>--%>
        <%--</div>--%>
    </div>
</div>

<div style="width: 100%;background: white;">
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
    <%--<img src="/static/img/私享顾问.png" style="width: 100%;height: 100%;"/>--%>



<!-- 弹窗 -->
<div id="myModal" class="modal">

    <!-- 关闭按钮 -->
    <span class="close" onclick="document.getElementById('myModal').style.display='none'">&times;</span>

    <!-- 弹窗内容 -->
    <div style="float: left; width: 250px; height: 300px;">
        <img class="modal-content" id="img01">
    </div>
    <!-- 文本描述 -->
    <div id="caption">
        <div style="padding-top: 80px; padding-bottom: 20px;">
            <p align="left" style="color: #666666; font-weight: bold;" id="position" ></p>
            <p align="left" style="color: #333333; font-weight: bold; font-size: 20px;" id="name"></p>
        </div>
        <p id="synopsis" align="left" style="color: #999999;"></p>

    </div>
</div>
<div id="wrapp" style="margin: 0 auto; overflow-y: scroll;">

    <%--<div class="ppp">--%>
        <%--<img class="imgg" src="img/guwen/边李1.JPG" data-id="img/guwen/边李1.JPG" style="width: 100%;"/>--%>
        <%--<button class="guwen">张三</button>--%>
    <%--</div>--%>
    <%--<div class="ppp">--%>

        <%--<button class="guwen">张三散</button>--%>
    <%--</div>--%>
    <%--<div class="ppp">--%>
        <%--<img class="imgg" src="img/guwen/韩松亦3.JPG" style="width: 100%;"/>--%>
        <%--<button class="guwen">蒂芬三</button>--%>
    <%--</div>--%>



</div>




</div>





<jsp:include page="../footer/footer.jsp"></jsp:include>
</body>
<script src="/static/js/mainJs/jquery.min.js"></script>
<script>



    // 获取弹窗
    var modal = document.getElementById('myModal');
    // 获取图片插入到弹窗 - 使用 "alt" 属性作为文本部分的内容
    var $img = $('.imgg');
    var modalImg = document.getElementById("img01");
    var captionText = document.getElementById("caption");

    modalImg.src = "";
    $img.on('click',function(){
        modal.style.display = "block";
        modalImg.src = $(this).src;
        captionText.innerHTML = this.alt;
    })

    // 获取 <span> 元素，设置关闭按钮
    var span = document.getElementsByClassName("close")[0];

    // 当点击 (x), 关闭弹窗
    span.onclick = function() {
        modal.style.display = "none";
    }


    $.getJSON("/privateConsultant/list?pageNo=1&pageSize=8",function(rs){
//		$.getJSON("http://192.168.1.1:8888/home/info",function(rs){
        console.log(rs);
//debugger;
        var html = '';
        for(var i=0;i<rs.data.data.length;i++){

            var imgUrl = '${Url}'+ rs.data.data[i].imgUrl;

            html += '<div class="ppp">'+
                        '<img class="imgg" src="'+ imgUrl +'" style="width: 100%;" ' +
                            'onclick="showdatils('+"'"+rs.data.data[i].name+"',"+"'"+rs.data.data[i].gender+"',"+
                            "'"+rs.data.data[i].position+"',"+"'"+imgUrl+"',"+"'"+rs.data.data[i].synopsis+"'"+')"/>'+
                        '<button class="guwen">'+ rs.data.data[i].name +'</button>'+
                    '</div>';
        }
        $("#wrapp").html(html);

        var w = document.documentElement.clientWidth || document.body.clientWidth;
        $("#wrapp").css("height",w/1.8*1.5 + "px");
        $(".imgg").css("height",(w/1.8)/2 + "px");
        $(window).resize(function(){
            var w = document.documentElement.clientWidth || document.body.clientWidth;
            $("#wrapp").css("height",w/1.8*1.5 + "px");
            $(".imgg").css("height",(w/1.8)/2 + "px");
        })

        $('.ppp').hover(function() {
            $(this).find('button').css("display","block");
        }, function() {
            $(this).find('button').css("display","none");
        });

    });

    function showdatils(name,gender,position,imgUrl,synopsis){

        $("#name").html('');
        $("#position").html('');
        $("#synopsis").html('');
        var modalImg = document.getElementById("img01");
        modalImg.src = '';
        // 获取弹窗
        var modal = document.getElementById('myModal');
        modal.style.display = "block";

        var sex = '';
        if(gender == "female"){
            sex = "女士";
        }else{
            sex = "先生";
        }
        $("#name").html(name + sex);
        $("#position").html(position);
        $("#synopsis").html(synopsis);
        modalImg.src = imgUrl;

    }
</script>
</html>