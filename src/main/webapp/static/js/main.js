$(function() {
	$('.has_menu').hover(function() {
		$(this).find('ul').slideDown(1);
	}, function() {
		$(this).find('ul').slideUp(1);
	});
})

/*
 获取地址栏参数，name:参数名称
 * */
function getUrlParms(name){
	var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
	var r = window.location.search.substr(1).match(reg);
	if(name){
		if(r!=null)
			return decodeURI(r[2]);
		return null;
	} else{
		r = window.location.search.substr(1);
		if(r!=null)
			return decodeURI(r);
		return null;
	}
}

//时间转换
function fmtDate(obj){
	var date =  new Date(obj);
	var y = 1900+date.getYear();
	var m = "0"+(date.getMonth()+1);
	var d = "0"+date.getDate();
	return y+"-"+m.substring(m.length-2,m.length)+"-"+d.substring(d.length-2,d.length);
}
function trim(str,is_global){
	var result;
	result = str.replace(/(^\s+)|(\s+$)/g,"");
	if(is_global.toLowerCase()=="g")
	{
		result = result.replace(/\s/g,"");
	}
	return result;
}
function dealHtml(str){
	return str.split('< ').join("<");
}
function oneTab(arr){
	var newArr=[];
	for (var i=0;i<arr.length;i++) {
		if(arr[i].pid==0)newArr.push(arr[i]);
	}
	return newArr.sort(compare("sort"));
}
function twoTab(arr,pid){
	var newArr=[];
	for (var i=0;i<arr.length;i++) {
		if(arr[i].pid==pid)newArr.push(arr[i]);
	}
	return newArr.sort(compare("sort"));
}
var compare = function (prop) {
	return function (obj1, obj2) {
		var val1 = obj1[prop];
		var val2 = obj2[prop];if (val1 < val2) {
			return -1;
		} else if (val1 > val2) {
			return 1;
		} else {
			return 0;
		}
	}
}

function urlReplace(t,v,p){
	if(p.indexOf(t)==-1) return p+"&"+t+"="+v;
	var old  = t + "=" + p.split(t+'=')[1].split("&")[0];
	var New  = t + "=" + v;
	return p.replace(old,New);
}

// 时间转长时间串，yyyy-MM-dd hh:mm:ss
function DateToLStr(dt) {
	try {
		var y, m, m1, d, d1, h, h1, mm, mm1, s, s1;
		y = dt.getFullYear();
		m = dt.getMonth() + 1; //1-12
		d = dt.getDate();
		h = dt.getHours();
		mm = dt.getMinutes();
		s = dt.getSeconds();

		m1 = (m < 10 ? "0" + m : m);
		d1 = (d < 10 ? "0" + d : d);
		h1 = (h < 10 ? "0" + h : h);
		mm1 = (mm < 10 ? "0" + mm : mm);
		s1 = (s < 10 ? "0" + s : s);
		return "" + y + "-" + m1 + "-" + d1 + " " + h1 + ":" + mm1 + ":" + s1;
	} catch(e) {
		console.log("error");
		return "";
	}
}
var baseUrl = "http://127.0.0.1:8020";

(function($) {
	if(window.location.href.indexOf("127.0.0.1")!=-1){
		//备份jquery的ajax方法
		var _ajax = $.ajax;
		//重写jquery的ajax方法
		$.ajax = function(opt) {
			opt.url = baseUrl + opt.url;
			var fn = {
				error: function(XMLHttpRequest, textStatus, errorThrown) {},
				success: function(data, textStatus) {}
			}
			if(opt.error) {
				fn.error = opt.error;
			}
			if(opt.success) {
				fn.success = opt.success;
			}
			//扩展增强处理
			var _opt = $.extend(opt, {
				error: function(XMLHttpRequest, textStatus, errorThrown) {
					if(XMLHttpRequest.status == 401) {
						//autoLogin();
					}
					fn.error(XMLHttpRequest, textStatus, errorThrown);
				},
				success: function(data, textStatus) {
					fn.success(data, textStatus);
				},
				beforeSend: function(XHR) {
					$("body").append('<img class="loading_tip" style="position:absolute;top:50%;left:50%" src="layer/theme/default/loading-2.gif">');
				},
				complete: function(XHR, TS) {
					$(".loading_tip").remove();
				}
			});
			_ajax(opt);
		};
	}
})(jQuery);

$(".shopping_cart").on("click",function(){
	window.location.href = "mall_cart.html"
})
//获取商城页面头部分类数据
getCartData();
function getCartData(){
	$.ajax({
		url: "/shoppingCar/shopingCarDetail",
		dataType: "json",
		success:function(rs){
			if(!rs.success)return;
			$(".cart_count").text(rs.data.goodsDetailBos.length);
		}
	})
}

//限制字符串长度
function limitStrLength(str,len){
	if(str.length>len){
		return str.substr(0,len) + "...";
	}else{
		return str;
	}
}

function popTip(flag,title,content){
	if(flag){
		layer.open({
			type: 1,
			title: false,
			closeBtn: 0,
			area:["320px","190px"],
			content: '<div class="success_tip"><p class="tip_title">'+title+'</p><p class="tip_content">'+content+'</p><button class="success_tip_btn" onclick="layer.closeAll();"></button></div>'
		});
	}else{
		layer.open({
			type: 1,
			title: false,
			closeBtn: 0,
			area:["320px","190px"],
			content: '<div class="err_tip"><p class="tip_title">'+title+'</p><p class="tip_content">'+content+'</p><button class="success_tip_btn" onclick="layer.closeAll();"></button></div>'
		});
	}
}

function outLogin(){
	$.ajax({
		url: "/login/logout",
		dataType: "json",
		success:function(rs){
			window.location.reload();
		}
	})
}

function search_btn(){
	if($("#search").hasClass("dis_none")){
		$("#search").removeClass("dis_none");
		$("#search").animate({width:'150px'},function(){
			$("#search").focus();
		})
	}else{
		$("#search").animate({width:'0px'},function(){
			$("#search").addClass("dis_none");
			proSearch();
		})
	}
}

function proSearch(){
	if(document.getElementById("search").value == '')return;
	window.location.href = "mall_search.html?query="+document.getElementById("search").value.trim();
}

function checkLoginStat(callback){
	$.ajax({
		url: "/login/queryLoginStatus",
		dataType: "json",
		success:function(rs){
			callback(rs);
		}
	})
}
$.ajax({
	url: "/login/queryLoginStatus",
	dataType: "json",
	success:function(rs){
		if(rs.success){
			$(".u_nick").text(dealPhone(rs.data.phoneNumber));
			$(".registerbtn1").addClass("dis_none")
			$(".loginbtn1").addClass("dis_none")
			$(".personbtn1").removeClass("dis_none")
			$(".outbtn1").removeClass("dis_none")
		}
	}
})
function dealPhone(p){
	return p.replace(/^(\d{4})\d{4}(\d+)/,"$1****$2");
}

$(".grzx .list").on("click",function(){
	var id = $(this).data("id");
	switch (id){
		case 1:
			window.location.href = "my_integral.html";
			break;
		case 2:
			window.location.href = "my_order.html";
			break;
		case 3:
			window.location.href = "my_favorite.html";
			break;
		case 4:
			window.location.href = "my_account.html";
			break;
		case 5:
			window.location.href = "my_invest.html";
			break;
		case 6:
			window.location.href = "my_risk.html";
			break;
		case 7:
			window.location.href = "my_adviser.html";
			break;
		case 8:
			window.location.href = "my_msg.html";
			break;
	}
})

function serializeObject(form) {
	var o = {};
	$.each(form.serializeArray(), function(index) {
		if (o[this['name']]) {
			o[this['name']] = o[this['name']] + ";" + this['value'];
		} else {
			o[this['name']] = this['value'];
		}
	});
	return o;
}

setTimeout(function(){
	loopMsg();
},30000)
function loopMsg(){
	$.ajax({
		url: "/message/list?pageNo=1&pageSize=1",
		type:"post",
		dataType: "json",
		success:function(rs){
			if(rs.success)$("#msg_num").text(rs.data.uncount)
		}
	})
}



function timeago(now,dateTimeStamp){   //dateTimeStamp是一个时间毫秒，注意时间戳是秒的形式，在这个毫秒的基础上除以1000，就是十位数的时间戳。13位数的都是时间毫秒。
	var minute = 1000 * 60;      //把分，时，天，周，半个月，一个月用毫秒表示
	var hour = minute * 60;
	var day = hour * 24;
	var week = day * 7;
	var halfamonth = day * 15;
	var month = day * 30;
//  var now = new Date().getTime();   //获取当前时间毫秒
	console.log(now)
	var diffValue = now - dateTimeStamp;//时间差

	if(diffValue < 0){
		return;
	}
	var minC = diffValue/minute;  //计算时间差的分，时，天，周，月
	var hourC = diffValue/hour;
	var dayC = diffValue/day;
	var weekC = diffValue/week;
	var monthC = diffValue/month;
	if(monthC >= 1 && monthC <= 3){
		result = " " + parseInt(monthC) + "月前"
	}else if(weekC >= 1 && weekC <= 3){
		result = " " + parseInt(weekC) + "周前"
	}else if(dayC >= 1 && dayC <= 6){
		result = " " + parseInt(dayC) + "天前"
	}else if(hourC >= 1 && hourC <= 23){
		result = " " + parseInt(hourC) + "小时前"
	}else if(minC >= 1 && minC <= 59){
		result =" " + parseInt(minC) + "分钟前"
	}else if(diffValue >= 0 && diffValue <= minute){
		result = "刚刚"
	}
	else {
		var datetime = new Date();
		datetime.setTime(dateTimeStamp);
		var Nyear = datetime.getFullYear();
		var Nmonth = datetime.getMonth() + 1 < 10 ? "0" + (datetime.getMonth() + 1) : datetime.getMonth() + 1;
		var Ndate = datetime.getDate() < 10 ? "0" + datetime.getDate() : datetime.getDate();
		var Nhour = datetime.getHours() < 10 ? "0" + datetime.getHours() : datetime.getHours();
		var Nminute = datetime.getMinutes() < 10 ? "0" + datetime.getMinutes() : datetime.getMinutes();
		var Nsecond = datetime.getSeconds() < 10 ? "0" + datetime.getSeconds() : datetime.getSeconds();
		result = Nyear + "-" + Nmonth + "-" + Ndate
	}
	return result;
}