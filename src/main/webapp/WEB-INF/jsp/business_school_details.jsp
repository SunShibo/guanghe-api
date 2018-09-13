<%--
  Created by IntelliJ IDEA.
  User: yxw
  Date: 2018/7/25
  Time: 13:28
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
  <link href="/static/css/page.css" rel="stylesheet"/>
</head>

<body>
<div class="header_line"></div>
<div class="header news sxy_bg">
  <jsp:include page="nav/header_nav.jsp"></jsp:include>
  <div class="header_big_font_wrapp"></div>
    <h1 align="center"  class="header_big_font">广和商学院 / Guanghe Business School</h1>

</div>
<div class="news_bn">
  <div class="wrapp">
    <span class="bread"><a href="/">首页</a> > 广和商学院</span>
    <div class="bread_btn_wrapp">
      <button class="bread_btn " onclick="window.location.href='/KnowledgeTraining/page'">知识培养</button>
      <button class="bread_btn " onclick="window.location.href='/PolicyInterpreTation/page'">政策解读</button>
      <button class="bread_btn" onclick="window.location.href='/ExpertIectureHall/page'">专家讲堂</button>
    </div>
  </div>
</div>

<div style="width: 100%;background: white;">

  <div style="width: 100%;background: white;position: relative;">

    <img src="/static/img/商学院.png" style="width: 100%;height: 100%;display: block"/>
    <a href="/KnowledgeTraining/page"
       style="left: 56%;top: 22%;display: block;width: 95px;height: 31px;position: absolute;"></a>
    <a href="/PolicyInterpreTation/page"
       style="left: 19%;top: 56%;display: block;width: 95px;height: 31px;position: absolute;"></a>
    <a href="/ExpertIectureHall/page"
       style="left: 56%;top: 89%;display: block;width: 95px;height: 31px;position: absolute;"></a>

  </div>
</div>









<jsp:include page="footer/footer.jsp"></jsp:include>
</body>
<script src="/static/js/jquery-2.2.0.min.js"></script>
<script src="/static/js/page.js"></script>
<script src="/static/js/main.js"></script>
<script>
  var datas=[];
  var options={
    "id":"page",//显示页码的元素
    "data":datas,//显示数据
    "maxshowpageitem":3,//最多显示的页码个数
    "pagelistcount":8,//每页显示数据个数
    "callBack":function(result){
      var cHtml="";
      for(var i=0;i<result.length;i++){
        cHtml+="<li>"+ result[i].name+"</li>";//处理数据
      }
//      $("#demoContent").html(cHtml);//将数据增加到页面中
    }
  };
  page.init(datas.length,1,options);

</script>
</html>
