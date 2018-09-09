<%--
  Created by IntelliJ IDEA.
  User: yxw
  Date: 2018/9/9
  Time: 0:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
  .white_btn{
    padding: 8px 10px;
    background: #D3A359;
    border-radius: 2px;
  }
</style>
<div class="header">

  <div class="header_up">
    <div class="header_up_left">
      <i class="iconfont" style="color: #ccc;">&#xe62c;</i>
      <span  style="color: #ccc;">Mon-Fri : 09:00-17:00</span>
    </div>
    <div class="header_up_right">
      <i class="iconfont" style="color: #ccc;">&#xe61b;</i>
      <span style="color: #ccc;">+86(021)56497956</span>
      <a href="help_m.html" style="color: #ccc;padding: 0 10px">帮助中心</a>
      <a target="_blank" href="https://weibo.com/guanghebj"><i class="iconfont">&#xe69c;</i></a>
      &nbsp;
      <a href="javascript:;" class="wxgzh">
        <i class="iconfont">&#xe66a;</i>
        <img class="wximg" src="/static/img/ghtzwx.png" />
      </a>
    </div>
  </div>
  <nav class="header_nav">
    <img src="/static/img/logo.png" class="nav_logo"/>
    <ul>
      <li><a class="nav_a " href="/MallHome/list" >和悦商城</a></li>

      <li id="head_ul1" style="position: relative;" >
        <a onclick="search_btn();" href="javascript:;">
          <i class="iconfont" style="line-height: 40px;">&#xe60d;</i>
        </a>
        <input id="search" class="dis_none"
               style="color: #333;position: absolute;right: 45px;top:3px;height: 30px;width: 10px;
								padding-left: 10px;border-radius: 5px; border:1px solid #D3A359;"
               type="text" placeholder="Search..."/>
      </li>
      <li >
        <a class="shopping_cart">
          <i class="iconfont" style="line-height: 40px;">&#xe682;</i>
          <span class="cart_count">0</span>
        </a>
      </li>
    </ul>
    <div style="float: right; margin-top: 10px;">
      <a href="javascript:;" onclick="toRegister();" class="white_btn nav_btn registerbtn1">立即注册</a>
      <a href="/login/loginPage" class="no_white_btn nav_btn loginbtn1">用户登录</a>
      <a href="account.html" class="white_btn dis_none nav_btn personbtn1">个人中心</a>
      <a href="javascript:;" onclick="outLogin();" class="no_white_btn dis_none nav_btn outbtn1">退&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;出</a>
    </div>
  </nav>
</div>
<script src="/static/js/jquery-2.2.0.min.js"></script>
<script>

  $.ajax({
    url: "/GoodsType/detail",
    dataType: "json",
    success:function(rs){
      var $headul = $("#head_ul1");
      var oneList = oneTab(rs.data);
      for (var i = 0; i < oneList.length; i++) {

        var hmtl1  = ['<li class="has_menu">',
          '<a class="nav_a" href="/Goods/page?leaveId=',
          oneList[i].id,
          '">',
          oneList[i].name,
          '</a>',
          '<ul class="sub_ul">'].join('');
        var twoList = twoTab(rs.data,oneList[i].id);
        var hmtl2='';
        for (var j = 0; j < twoList.length; j++) {
          hmtl2 += ['<a href="/Goods/page?leaveId=',
            twoList[j].pid,
            '&goodsTypeId=',
            twoList[j].id,
            '">',
            twoList[j].name,
            '</a>'].join("");
        }
        var foot = '</ul></li>';
        $headul.before(hmtl1+hmtl2+foot);
      }
      $('.has_menu').hover(function() {
        $(this).find('ul').slideDown(1);
      }, function() {
        $(this).find('ul').slideUp(1);
      });
    }
  });
  function toRegister(){
    window.location.href = "/login/registerPage";
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
</script>