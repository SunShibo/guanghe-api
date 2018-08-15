<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>积分商城-广和投资</title>
	<meta charset="UTF-8">
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--[if lt IE 9]>
	<script src="/static/js/html5shiv.min.js"></script>
	<script src="/static/js/css3-mediaqueries.min.js"></script>
	<![endif]-->
	<link rel="stylesheet" type="text/css" href="/static/css/m_app.css"/>
	<link rel="stylesheet" type="text/css" href="/static/css/mall.css" />
	<link rel="stylesheet" type="text/css" href="/static/css/slick.css" />

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
			<a href="#"><i class="iconfont">&#xe89d;</i></a>
			&nbsp;
			<a href="#"><i class="iconfont">&#xe630;</i></a>
		</div>
	</div>
	<nav class="header_nav">
		<img src="/static/img/logo.png" class="nav_logo"/>
		<ul>
			<li><a class="nav_a active" href="#" >和悦商城</a></li>
			<li class="has_menu">
				<a class="nav_a" href="#">日用家居</a>
			</li>
			<li class="has_menu">
				<a class="nav_a" href="#">食品生鲜</a>

			</li>
			<li class="has_menu">
				<a class="nav_a" href="#">数码电器</a>

			</li>
			<li class="has_menu">
				<a class="nav_a" href="#">户外运动</a>
			</li>
			<li >
				<a style="cursor: pointer;"><i class="iconfont">&#xe60d;</i></a>
			</li>
			<li >
				<a class="shopping_cart">
					<i class="iconfont">&#xe682;</i>
					<span class="cart_count">0</span>
				</a>
			</li>
		</ul>
		<div style="float: right; margin-top: 5px;">
			<button class="btn">返回首页</button>
			<button class="btn">登&nbsp;&nbsp;&nbsp;&nbsp;录</button>
			<button class="btn">立即注册</button>
		</div>
	</nav>
</div>
<section class="section1">
</section>
<section class="section2">
	<div id="img1">
	</div>
	<div id="ad_item">
		<p>精品推荐<span>/ Fine quality</span></p>

	</div>
</section>
<section class="section3" id="section3">
</section>
<section class="section4">
	<div id="img2">
	</div>
	<div id="new_item">
		<p>新品上架<span>/ New Arrivals</span></p>
	</div>
</section>、
<jsp:include page="../footer/footer.jsp"></jsp:include>
</body>
<script src="/static/js/jquery-2.2.0.min.js"></script>
<script type="text/javascript" src="/static/js/slick.min.js"></script>
<script>
	var $s1 = $(".section1");
	var $adItem = $("#ad_item");
	var $newItem = $("#new_item");
	var $section3 = $("#section3");
	var $img1 = $("#img1");
	var $img2 = $("#img2");

	$.getJSON("/MallHome/info",function(rs){
		$img1.append('<a href="'+rs.data.recommondImage[0]['url']+'"><img class="ad_1" src="'+rs.data.recommondImage[0]['image']+'"/></a>');
		$img2.append('<a href="'+rs.data.recommondImage[1]['url']+'"><img class="ad_1" src="'+rs.data.recommondImage[1]['image']+'"/></a>');
		$section3.append('<a href="'+rs.data.image[0]['url']+'"><img src="'+rs.data.image[0]['image']+'"/></a>');

		for(var i=0;i<rs.data.banner.length;i++){

			if(rs.data.banner[i]['image']){

				$s1.append('<a target="_blank" href="'+rs.data.banner[i]['url']+'"><img class="lunbo" src="'+rs.data.banner[i]['image']+'"/></a>')
			}
		}
		for(var i=0;i<rs.data.goods.length;i++){

			if(rs.data.goods[i]['homeState']==1){
				var html = '<div class="ad_item"><img src="';
				html+=rs.data.goods[i]['introduceImgUrl'];
				html+='" /><p>';
				html+=rs.data.goods[i]['name'];
				html+='</p><p>积分：';
				html+=rs.data.goods[i]['price'];
				html+='</p><button>立即兑换</button></div>';
				$adItem.append(html)
			}else{
				var html = '<div class="new_item"><img src="';
				html+=rs.data.goods[i]['introduceImgUrl'];
				html+='" /><p>';
				html+=rs.data.goods[i]['name'];
				html+='</p><p>积分：';
				html+=rs.data.goods[i]['price'];
				html+='</p><button>立即兑换</button></div>';
				$newItem.append(html)
			}
		}



		$s1.slick({
			autoplay:true,
			autoplaySpeed:3000,
			dots: true,
			fade: true,
			speed: 1000,
			infinite: true,
			cssEase: 'cubic-bezier(0.7, 0, 0.3, 1)'
		})
	})

	//		$.getJSON("rs.json",function(rs){
	//			if(rs.data.banner.length>0){
	//				var imgs = [];
	//				for(var i=0;i<rs.data.banner.length;i++){
	//					if(rs.data.banner[i]['image']){
	//						imgs.push(rs.data.banner[i]['image'])
	//					}
	//				}
	//				$(".header").backstretch(imgs, {duration: 8000,fade:2000});
	//			}
	//			if(rs.data.detail.length>0){
	//				var html = '';
	//				for(var i=0;i<rs.data.detail.length;i++){
	//
	//					html+='<a href="dsz.html"><div class="midd_div swiper-slide"><div class="midd_img_wrapp"><img src="';
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
	//					html+='</div></div></a>';
	//
	//				}
	//				$("#midd-wrapper").append(html);
	//			}
	//			if(rs.data.companyIntroduction.length>0){
	//				$("#introduction").append(rs.data.companyIntroduction[0].companyIntroduction);
	//				$("#vedio").append( $("<source src=http://yun.it7090.com/video/XHLaunchAd/video01.mp4>"));
	//
	//			}
	//			if(rs.data.news.length>0){
	//				for(var i=0;i<rs.data.news.length;i++){
	//					var createTime = rs.data.news[i].createTime.split('-')[1]+'.'+rs.data.news[i].createTime.split('-')[2].split(' ')[0];
	//					if(i<2){
	//						$("#title"+(i+1)).append(rs.data.news[i].title + '<span id="time'+(i+1)+'">'+createTime+'</span>' );
	//					}else{
	//						$("#title"+(i+1)).append( '<span id="time'+(i+1)+'">'+createTime+'</span>' + rs.data.news[i].title);
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
	//					html+='<li class="swiper-slide"><img class="friend_img" src="';
	//					html+=rs.data.image[i].image;
	//					html+='"></li>';
	//				}
	//				$("#logo").append(html);
	//			}
	//
	//		    $('#midd-wrapper').slick({
	//		        slidesToShow: 3,
	//		        slidesToScroll: 1,
	//		        dots: false,
	//		        arrows:false,
	//		        nextArrow: "<button type='button' class='slick-next'>Next</button>",
	//		    });
	//		    $('#logo').slick({
	//		        slidesToShow: 5,
	//		        slidesToScroll: 1,
	//		        dots: false,
	//		        nextArrow: "<button type='button' class='slick-next'>Next</button>",
	//		    });
	//
	//
	//		})



</script>
</html>
