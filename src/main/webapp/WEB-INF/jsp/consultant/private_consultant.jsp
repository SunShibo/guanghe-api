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
    <div class="header_big_font_wrapp">
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
        <%--<img class="imgg" src="img/guwen/曾昊2.JPG" data-id="data:image/jpeg;base64,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" style="width: 100%;"/>--%>
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

        var html = '';
        for(var i=0;i<rs.data.length;i++){

            var imgUrl = '${Url}'+ rs.data[i].imgUrl;

            html += '<div class="ppp">'+
                        '<img class="imgg" src="'+ imgUrl +'" style="width: 100%;" ' +
                            'onclick="showdatils('+"'"+rs.data[i].name+"',"+"'"+rs.data[i].gender+"',"+
                            "'"+rs.data[i].position+"',"+"'"+imgUrl+"',"+"'"+rs.data[i].synopsis+"'"+')"/>'+
                        '<button class="guwen">'+ rs.data[i].name +'</button>'+
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