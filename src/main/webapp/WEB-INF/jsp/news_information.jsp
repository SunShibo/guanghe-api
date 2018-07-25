<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<head>
    <meta charset="utf-8" />
    <title>新闻动态</title>
    <link rel="stylesheet" type="text/css" href="/static/css/m_app.css"/>
    <link rel="stylesheet" media="screen and (max-width:1400px)" href="/static/css/app.css"/>
    <link href="https://cdn.bootcss.com/Swiper/4.3.0/css/swiper.min.css" rel="stylesheet">

    <!--<link rel="stylesheet" href="css/swiper.css">-->
    <!--<link href="https://cdn.bootcss.com/Swiper/2.7.6/idangerous.swiper.min.css" rel="stylesheet">-->
    <!--<link href="https://cdn.bootcss.com/Swiper/4.3.0/css/swiper.min.css" rel="stylesheet">-->
    <link href="/static/css/news_information.css" rel="stylesheet"/>
</head>

<body>
<div class="header_line"></div>
<div class="header news">
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

    <jsp:include page="header_nav.jsp"></jsp:include>

    <div class="header_content">

    </div>

</div>





<div class="news_bn">
    <div class="wrapp">
        <span class="bread">首页 > 广和新闻 > 新闻动态</span>
    </div>
</div>

<div style="width: 100%;background: white;">
    <div class="newsPlaceholder5"></div>
    <div class="news_page_wrapp">
        <div class="news_title_dt_wrapp">
            <h3 class="title" >新闻动态</h3>
        </div>
        <div class="news_line_dt_wrapp">
            <div></div>
        </div>
        <div class="news_en_dt_wrapp">
            <h3 class="en_title" >News information</h3>
        </div>
        <div class="newsPlaceholder1"></div>
        <div id="content"></div>



        <%--<div class="news_detail_wrapp">--%>
            <%--<div class="newsPlaceholder2"></div>--%>
            <%--<div class="news_detail_wrapp1">--%>
                <%--<div class="news_detail_img">--%>
                    <%--<img src="../static/img/logo.png" />--%>
                <%--</div>--%>
                <%--<div class="newsPlaceholder3"></div>--%>
                <%--<div class="news_detail_wrapp2">--%>
                    <%--<h1 >“小小投资家，撬动大未来”——少儿财商沙龙活动</h1>--%>
                    <%--<span>2018-07-04  来源：广和投资</span>--%>
                    <%--<div class="news_detail">学习拼智商，社交比情商，成就事业往往要看财商。从小培养孩子的财商，进行有规划的理财教育，是新一代家长的重要选择。随着中国经济社会的飞速发展，越来越多的家庭逐渐认识到财商的重要性，尤其是财商教育对儿童发展的重要性。</div>--%>
                    <%--<div class="news_detail_btn"><a href="">+查看全文</a></div>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>


        <%--<div class="news_detail_wrapp">--%>
            <%--<div class="newsPlaceholder2"></div>--%>
            <%--<div class="news_detail_wrapp1">--%>
                <%--<div class="news_detail_img">--%>
                    <%--<img src="../static/img/logo.png" />--%>
                <%--</div>--%>
                <%--<div class="newsPlaceholder3"></div>--%>
                <%--<div class="news_detail_wrapp2">--%>
                    <%--<h1 >“小小投资家，撬动大未来”——少儿财商沙龙活动</h1>--%>
                    <%--<span>2018-07-04  来源：广和投资</span>--%>
                    <%--<div class="news_detail">学习拼智商，社交比情商，成就事业往往要看财商。从小培养孩子的财商，进行有规划的理财教育，是新一代家长的重要选择。随着中国经济社会的飞速发展，越来越多的家庭逐渐认识到财商的重要性，尤其是财商教育对儿童发展的重要性。</div>--%>
                    <%--<div class="news_detail_btn"><a href="">+查看全文</a></div>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>

        <%--<div class="news_detail_wrapp">--%>
            <%--<div class="newsPlaceholder2"></div>--%>
            <%--<div class="news_detail_wrapp1">--%>
                <%--<div class="news_detail_img">--%>
                    <%--<img src="../static/img/logo.png" />--%>
                <%--</div>--%>
                <%--<div class="newsPlaceholder3"></div>--%>
                <%--<div class="news_detail_wrapp2">--%>
                    <%--<h1 >“小小投资家，撬动大未来”——少儿财商沙龙活动</h1>--%>
                    <%--<span>2018-07-04  来源：广和投资</span>--%>
                    <%--<div class="news_detail">学习拼智商，社交比情商，成就事业往财商教育对儿童发展的重要性。</div>--%>
                    <%--<div class="news_detail_btn"><a href="">+查看全文</a></div>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>





        <div class="newsPlaceholder4"></div>
        <div style="height: 28px; width: 300px; margin: 0 auto;">
            <ul class="page" id="page"></ul><!--<h3 class="title" >新闻动态</h3>-->
        </div>
        <div class="newsPlaceholder6"></div>
    </div>
</div>



<jsp:include page="footer.jsp"></jsp:include>
</body>
<script src="/static/js/mainJs/jquery.min.js"></script>
<!--<script src="js/jquery.backstretch.min.js"></script>-->
<!--<script src="js/swiper.js"></script>-->
<!--<script src="https://cdn.bootcss.com/Swiper/2.7.6/idangerous.swiper.min.js"></script>-->
<!--<script src="https://cdn.bootcss.com/Swiper/4.3.0/js/swiper.min.js"></script>-->
<script src="/static/js/web/page.js"></script>
<script>

    var options;
    getdata(1,8);
    function getdata(cur,size){
        console.log(cur+',,,'+size)
        $.getJSON("/newsInformation/list?pageNo="+cur+"&pageSize="+size,function(rs){
            var datas=rs.data.data;
            options={
                "id":"page",//显示页码的元素
                "data":datas,//显示数据
                "maxshowpageitem":3,//最多显示的页码个数
                "pagelistcount":size,//每页显示数据个数
                "callBack":function(result){
                    var html = '';
                    for(var i=0;i<datas.length;i++){
                        var createTimeStr = jsonDateFormat(datas[i].createTime);
                        var content = datas[i].content;
                        if(content.length > 160){
                            content =content.substring(0,160);
                        }
                        html += '<div class="news_detail_wrapp">' +
                                '<div class="newsPlaceholder2"></div>' +
                                '<div class="news_detail_wrapp1">' +
                                '<div class="news_detail_img">' +
                                '<img src="'+ datas[i].imgUrl +'" />' +
                                '</div>' +
                                '<div class="newsPlaceholder3"></div>' +
                                '<div class="news_detail_wrapp2">' +
                                '<h1>'+ datas[i].title +'</h1>' +
                                '<span>'+ createTimeStr +'  来源：'+ datas[i].source +'</span>' +
                                '<div class="news_detail">'+ content +'</div>' +
                                '<div class="news_detail_btn"><a href="findOne?id='+ datas[i].id +'">+查看全文</a></div>' +
                                '</div>' +
                                '</div>' +
                                '</div>';

                    }
                    $("#content").html(html);//将数据增加到页面中
                }
            };
            page.init(rs.data.count,cur,options);
        })
    }





    function jsonDateFormat(jsonDate) {//json日期格式转换为正常格式

        var year = jsonDate.year+1900;
        var month = jsonDate.month+1;
        var day = jsonDate.date;
        month=(month>9)?(""+month):("0"+month);  //如果得到的数字小于9要在前面加'0'
        day=(day>9)?(""+day):("0"+day);
        return year + "-" + month + "-" + day;

    }

    function jsonTimeFormat(jsonTime){

        var hour=jsonTime.hours;
        var minute=jsonTime.minutes;
        hour=(hour>9)?(""+hour):("0"+hour);
        minute=(minute>9)?(""+minute):("0"+minute);

        return hour+":"+minute;
    }
</script>
</html>
