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

  <!--<link rel="stylesheet" href="css/swiper.css">-->
  <!--<link href="https://cdn.bootcss.com/Swiper/2.7.6/idangerous.swiper.min.css" rel="stylesheet">-->
  <!--<link href="https://cdn.bootcss.com/Swiper/4.3.0/css/swiper.min.css" rel="stylesheet">-->
  <link href="/static/css/page.css" rel="stylesheet"/>
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
  <jsp:include page="header_nav.jsp"></jsp:include>
</div>





<div class="news_bn">
  <div class="wrapp">
    <span class="bread">首页 > 广和商学院</span>
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
  <img src="/static/img/商学院.png" style="width: 100%;height: 100%;"/>
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
<script src="/static/js/jquery-2.2.0.min.js"></script>
<!--<script src="js/jquery.backstretch.min.js"></script>-->
<!--<script src="js/swiper.js"></script>-->
<!--<script src="https://cdn.bootcss.com/Swiper/2.7.6/idangerous.swiper.min.js"></script>-->
<!--<script src="https://cdn.bootcss.com/Swiper/4.3.0/js/swiper.min.js"></script>-->
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


  //		$.getJSON("rs.json",function(rs){
  //		$.getJSON("http://192.168.1.1:8888/home/info",function(rs){
  //			if(rs.data.banner.length>0){
  //				var imgs = [];
  //				for(var i=0;i<rs.data.banner.length;i++){
  //					if(rs.data.banner[i]['image']){
  //						imgs.push(rs.data.banner[i]['image'])
  //					}
  //				}
  //				$(".header").backstretch(imgs, {duration: 4000});
  //			}
  //			if(rs.data.detail.length>0){
  //				var html = '';
  //				for(var i=0;i<rs.data.detail.length;i++){
  //
  //					html+='<div class="midd_div swiper-slide"><div class="midd_img_wrapp"><img src="';
  //					if(rs.data.detail[i]['image']){
  //						html+=rs.data.detail[i]['image'];
  //					}
  //					html+='" class="midd_img"/></div><dt class="midd_div_title">';
  //					if(rs.data.detail[i]['title']){
  //						html+=rs.data.detail[i]['title'];
  //					}
  //					html+='</dt><dt class="midd_div_entitle">';
  //					html+=rs.data.detail[i]['engTitle'];
  //					html+='</dt><div class="midd_div_content">';
  //					html+=rs.data.detail[i]['content'];
  //					html+='</div></div>';
  //
  //				}
  //				$("#midd-wrapper").append(html);
  //			}
  //			if(rs.data.companyIntroduction.length>0){
  //				$("#introduction").append(rs.data.companyIntroduction[0].companyIntroduction);
  //				$("#vedio").append( $("<source src=\""+ rs.data.companyIntroduction[0].video +"\">"));
  //			}
  //			if(rs.data.news.length>0){
  //				for(var i=0;i<rs.data.news.length;i++){
  //					if(i<2){
  //						$("#title"+(i+1)).append(rs.data.news[i].title + '<span id="time'+(i+1)+'">'+rs.data.news[i].createTime.month+'.'+rs.data.news[i].createTime.day+'</span>' );
  //					}else{
  //						$("#title"+(i+1)).append( '<span id="time'+(i+1)+'">'+rs.data.news[i].createTime.month+'.'+rs.data.news[i].createTime.day+'</span>' + rs.data.news[i].title);
  //					}
  //					$("#news"+(i+1)).append(rs.data.news[i].content);
  //				}
  //			}
  //			if(rs.data.club.length>0){
  //				for(var i=0;i<rs.data.club.length;i++){
  //
  //						$("#clubImg"+i).attr("src",rs.data.club[i].image);
  //						$("#clubContent"+i).append(rs.data.club[i].content);
  //				}
  //			}
  //			if(rs.data.image.length>0){
  //				var html = '';
  //				for(var i=0;i<rs.data.image.length;i++){
  //					html+='<li class="swiper-slide"><img src="';
  //					html+=rs.data.image[i].image;
  //					html+='"></li>';
  //				}
  //				$("#logo").append(html);
  //			}
  //
  //
  //			new Swiper('#swiper-container1', {
  //		      slidesPerView: 3,
  //		      spaceBetween: 0,
  //		      slidesPerGroup: 1,
  //		      loop: true,
  //		      loopFillGroupWithBlank: true,
  //		      navigation: {
  //		        nextEl: '#swiper-button-next1',
  //		        prevEl: '#swiper-button-prev1',
  //		      },
  //		    });
  //		   	new Swiper('#swiper-container2', {
  //		      slidesPerView: 5,
  //		      spaceBetween: 0,
  //		      slidesPerGroup: 1,
  //		      loop: true,
  //		      loopFillGroupWithBlank: true,
  //		      navigation: {
  //		        nextEl: '#swiper-button-next2',
  //		        prevEl: '#swiper-button-prev2',
  //		      },
  //		    });
  //		})
</script>
</html>
