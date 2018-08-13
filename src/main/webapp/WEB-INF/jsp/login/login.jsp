<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>登录-广和投资</title>
  <meta charset="UTF-8">
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <!--[if lt IE 9]>
  <script src="/static/js/html5shiv.min.js"></script>
  <script src="/static/js/css3-mediaqueries.min.js"></script>
  <![endif]-->
  <link rel="stylesheet" type="text/css" href="/static/css/m_app.css"/>
  <style>
    .footer {
      height: 100px;
      width: 100%;
      margin: 0 auto 0 auto;
      background-color: #6C6C6C;
      background-image: url(/static/img/footer_bg.png);
      background-size: cover;
    }
    .footer_bottom {
      margin: 0px auto;
      height: 32px;
      padding: 34px 0px;
    }
    .btn:hover{
      color: white;
      background: #D3A359;
    }
    .iconfont:hover{
      color: #D3A359;
    }
    .header_up span,i{
      color: #777777;
    }
    @font-face {
      font-family: 'iconfont';  /* project id 754425 */
      src: url('//at.alicdn.com/t/font_754425_f9cvqyp9vqd.eot');
      src: url('//at.alicdn.com/t/font_754425_f9cvqyp9vqd.eot?#iefix') format('embedded-opentype'),
      url('//at.alicdn.com/t/font_754425_f9cvqyp9vqd.woff') format('woff'),
      url('//at.alicdn.com/t/font_754425_f9cvqyp9vqd.ttf') format('truetype'),
      url('//at.alicdn.com/t/font_754425_f9cvqyp9vqd.svg#iconfont') format('svg');
    }

    .footer_bottom p {
      color: #FFFFFF;
      font-size: 12px;
    }
    .footer_bottom_right {
      float: right;
      margin-top: 5px;
    }


    .btn {
      background-color: transparent;
      color: #D3A359;
      border-radius: 2px;
      border: #D3A359 1px solid;
      cursor: pointer;
      width: 72px;
      height: 32px;
      line-height: 32px;
      padding: 0px;
    }
    .btn:active{
      position: relative;
      top: 1px;
      left: 1px;
    }

    .nav_a {
      display: block;
      margin: 8px 25px;
      padding: 0 0 10px 0;
      color: #333333;
      font-size: 16px;
    }
    .nav_logo {
      width: 155px;
      height: 45px;
      float: left;
      margin-right: 65px;
      margin-top: 0px;
    }
    .active {
      color: #D3A359;
      border-bottom: 2px solid #D3A359;
    }
    .header_nav {
      width: 1200px;
      margin: 0 auto;
      height: 60px;
    }

    .header {
      height: auto;
      color: white;
      font-size: 10px;
      padding-top: 4px;
      width: 100%;
    }
    .footer_wrapp {
      height: auto
    }
    .user,.pwd{
      position: absolute;
      top: 10px;
      left: 48px;
      font-size: 22px;

    }
    .user:after{
      content: "|";
      padding-left: 8px;
      font-weight:1;
    }
    .pwd:after{
      content: "|";
      padding-left: 8px;
      font-weight: 1;
    }

    .user_wrapp{
      position: relative;margin-top: 58px;
    }
    .pwd_wrapp{
      position: relative;margin-top: 20px;
    }
    .user_name{
      width: 250px;height: 50px;border-radius: 5px;border: solid 1px #EEEEEE;
      padding-left: 70px;
      margin: auto;display: block;
    }
    .user_pwd{
      width: 250px;height: 50px;border-radius: 5px;border: solid 1px #EEEEEE;
      padding-left: 70px;
      margin: auto;display: block;
    }
    .line{
      width: 76px; height: 2px; background: #D3A359;margin: auto;margin-top: 9px;
    }
    .section1{

      width: 100%;height: 960px; background: url(/static/img/登录页面.jpg) no-repeat center;
    }
    .section1>div:nth-child(1){
      width: 938px; height: 470px;
      margin: 0px auto;
      padding-top: 160px;
    }

    .section1>div:nth-child(1)>div:nth-child(1){
      float: left;width: 551px;height: 470px;
    }
    .section1>div:nth-child(1)>div:nth-child(2){
      float: left;width: 387px;height: 470px;background: white;
    }
    .section1>div:nth-child(1)>div:nth-child(2)>p{
      font-size: 20px;text-align: center;padding-top: 29px;letter-spacing: 1px;
      color: #D3A359;
    }

    .focus{
      border: #D3A359 1px solid;
    }
    .login_button{
      width: 320px;
      height: 50px;
      background-color: #d3a359;
      border-radius: 5px;
      border: solid 1px #d3a359;
      display: block;
      margin: auto;
      margin-top: 30px;
      color: white;
      font-size: 14px;
      cursor: pointer;
    }
    .login_button:active{
      position: relative;
      top: 1px;
      left: 1px;
    }
    .forget{
      padding-left: 30px;
      padding-top: 13px;
      float: left;
      font-size: 12px;
      cursor: pointer;
    }
    .register{
      float: right;padding-right: 40px;
      padding-top: 13px;
      font-size: 14px;
      cursor: pointer;
    }
    .forget:hover,.register:hover{
      color: #D3A359;
    }
    .quick{
      text-align: center;
      color: #D3A359;
      font-size: 14px;
      border-bottom: 1px solid #D3A359;
      position: relative;
      top: 80px;
      left: 50px;
      cursor: pointer;
    }
  </style>
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

    <div style="float: right; margin-top: 5px;">
      <button class="btn">网站首页</button>

    </div>
  </nav>
</div>
<section class="section1">
  <div>
    <div>
      <img src="/static/img/登录页面_小图.jpg" />
    </div>
    <div>
      <p>登录</p>
      <div class="line"></div>
      <form>
        <div class="user_wrapp">
          <input class="user_name" required="" placeholder="请输入手机号" id="mobile"/>
          <i class="iconfont user" >&#xe7e8;</i>
        </div>
        <div class="pwd_wrapp">
          <input class="user_pwd" required="" placeholder="请输入密码" id="password"/>
          <i class="iconfont pwd" >&#xe602;</i>
        </div>
        <input type="button" class="login_button" value="登录" onclick="login();" />
      </form>
      <a class="forget" href="/login/updatePwdPage1">忘记密码？</a>
      <a class="register" href="/login/registerPage">注册</a>
      <a class="quick">验证码快捷登录</a>
    </div>
  </div>
</section>


<div class="footer">
  <div class="footer_wrapp">

    <div class="footer_bottom">
      <div class="footer_bottom_left">
        <p>Copyright © 2005 Company Name. Rights Reserved广和投资有限公司版权所有 </p>
      </div>
      <div class="footer_bottom_right">
        <p>北京市朝阳区姚家园路105号冶金地质总局观湖国际2座1层</p>
      </div>
    </div>
  </div>
</div>
</body>
<script src="/static/js/jquery-2.2.0.min.js"></script>
<script type="text/javascript" src="/static/js/slick.min.js"></script>
<script>
  var $s1 = $(".section1");
  $.getJSON("mall.json",function(rs){


  })
  $('input').focus(function(){
    $(this).addClass("focus")
    $(this).next().css("color","#D3A359")
  })
  $('input').blur(function(){
    $(this).removeClass("focus")
    $(this).next().css("color","#837d75")
  })

    function login(){
      var mobile = $("#mobile").val();
      if(!(/^1[3|4|5|8][0-9]\d{8}$/.test(mobile))){
        alert("不是完整的11位手机号或者正确的手机号");
        return;
      }
      var password = $("#password").val();
      if(password == "" || password.length < 6){
        alert("密码长度不能小于6位");
        return;
      }
      $.ajax({
        type: "post",
        url: "/login/signIn",
        data:{"mobile": mobile,"password":password,"type":0},
        dataType: "json",
        success:function(res) {
          if(res.success == false){
            alert(res.errMsg);
            return;
          }else{
            window.location.href = "/";
          }

        }
      });
    }


</script>
</html>
