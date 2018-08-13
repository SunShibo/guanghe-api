<!DOCTYPE html>
<html>
<head>
  <title>密码找回-广和投资</title>
  <meta charset="UTF-8">
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <!--[if lt IE 9]>
  <script src="/static/js/html5shiv.min.js"></script>
  <script src="/static/js/css3-mediaqueries.min.js"></script>
  <![endif]-->
  <link rel="stylesheet" type="text/css" href="/static/css/m_app.css"/>
  <style>
    .header{
      box-shadow: 0px 5px 10px #EEEEEE;
    }
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
    a>.iconfont:hover{
      color: #D3A359;
    }
    .header_up span,i{
      color: #777777;
    }

    @font-face {
      font-family: 'iconfont';  /* project id 754425 */
      src: url('//at.alicdn.com/t/font_754425_sqk9koje0y.eot');
      src: url('//at.alicdn.com/t/font_754425_sqk9koje0y.eot?#iefix') format('embedded-opentype'),
      url('//at.alicdn.com/t/font_754425_sqk9koje0y.woff') format('woff'),
      url('//at.alicdn.com/t/font_754425_sqk9koje0y.ttf') format('truetype'),
      url('//at.alicdn.com/t/font_754425_sqk9koje0y.svg#iconfont') format('svg');
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


    section{
      background-image: url(/static/img/bg_team.png) ;
    }
    .reg_wrapp{
      width: 642px;
      height: 710px;
      background: transparent;
      margin: 0 auto;
      padding-top: 70px;
      padding-bottom: 150px;
    }
    .register{
      font-size: 20px;
      letter-spacing: 1px;
      color: #d3a359;
      text-align: center;
      padding-bottom: 10px;
    }
    .line{
      width: 85px;
      height: 2px;
      background-color: #d3a359;
      border-radius: 1px;
      margin: auto;
      margin-bottom: 90px;

    }
    .lab_wrapp{
      float: left;
      width: 135px;
    }
    .lab_wrapp p span {
      font-size: 14px;
      line-height: 60px;
      letter-spacing: 1px;
      color: #d3a359;
    }
    .lab_wrapp p {
      text-align: right;
      font-size: 14px;
      line-height: 60px;
      letter-spacing: 1px;
      color: #333333;
    }
    .input_wrapp{
      float: left;
      width: 500px;
    }
    .input{
      width: 400px;
      height: 41px;
      border-radius: 5px;
      border: solid 1px #cccccc;
      padding-left:16px ;
      margin: 9px 0 8px 20px;
    }
    .yzm{
      width: 222px;
      margin-right: 20px;
    }
    .focus{
      border: #D3A359 1px solid;
    }
    .yzm_btn{
      background-color: #d3a359;
      border-radius: 5px;
      border: solid 1px #d3a359;
      padding: 9px 38px;
      color: white ;
      font-size: 14px;
      cursor: pointer;
      line-height: 41px;
      letter-spacing: 1px;
    }
    .iconfont:hover{
      cursor: pointer;

    }
    .agree_wrapp{
      padding-top: 20px;
      padding-left: 20px;
    }
    .agree{
      color: #D3A359;
    }
    .agree_wrapp span{
      width: 351px;

      font-size: 14px;

      letter-spacing: 1px;
      color: #666666;
    }
    .agree_wrapp a{
      font-size: 14px;
      letter-spacing: 1px;
      color: #d3a359;
    }
    .register_btn{
      width: 320px;
      height: 50px;
      background-color: #d3a359;
      border-radius: 5px;
      border: solid 1px #d3a359;
      cursor: pointer;
      margin-left: 40px;
      color: white;
      font-size: 14px;
      margin-top: 70px;
    }
    .register_btn:active{
      position: relative;
      top: 1px;
      left: 1px;
    }
    .already {

      font-size: 14px;

      letter-spacing: 1px;
      color: #666666;
      padding-left: 180px;
      padding-top: 30px;
    }

    .already>a {

      text-decoration: underline;
      font-size: 14px;
      letter-spacing: 1px;
      color: #d3a359;
      cursor: pointer;
    }
    .progress{
      width: 642px;
      height: 90px;
      margin: 80px auto;
    }
    .progress>div{
      float: left;
    }
    .pd.first{
      margin-left: 60px;
    }
    .pd{
      width: 56px;
      height: 56px;
      background: #CCCCCC;
      border-radius: 28px;
      float: left;
      margin-left: 188px;
      position: relative;
    }
    .step_num{
      position: absolute;
      font-size: 18px;
      line-height: 60px;
      letter-spacing: 1px;
      color: #ffffff;
      top: -1px;
      left: 23px;
    }
    .step_num_last{
      position: absolute;
      font-size: 28px;
      line-height: 60px;
      letter-spacing: 1px;
      color: #ffffff;
      top: -1px;
      left: 16px;
      cursor:auto!important;
    }
    .pd-font1{
      margin-left: 55px;
    }
    .pd-font2{
      margin-left: 188px;
    }
    .pd-font3{
      margin-left: 203px;
    }
    .pdf>span{
      padding-top: 65px;
      display: block;
    }
    .step>.pd{
      background: #D3A359;
    }
    .progress_line{
      width: 200px;
      height: 2px;
      background-color: #cccccc;
      border-radius: 1px;
      position: absolute;
      top: 28px;
      left: 50px;
      z-index: -1;
    }
    .stf{
      color: #BBBBBB;
      font-size: 14px;
    }
    .stf.act{
      color: #D3A359;
    }
    .stepact{
      background: #D3A359;
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
<section >
  <div class="reg_wrapp">
    <p class="register">找回密码</p>
    <div class="line"></div>
    <div class="progress">
      <div class="step">
        <div class="pd first">
          <span class="step_num">1</span>
          <span class="progress_line"></span>
        </div>
        <div class="pd-font1 pdf"><span class="stf act">信息验证</span></div>
      </div>
      <div class="">
        <div class="pd">
          <span class="step_num">2</span>
          <span class="progress_line"></span>
        </div>
        <div class="pd-font2 pdf"><span class="stf">设置密码</span></div>
      </div>
      <div class="">
        <div class="pd">
          <i class="iconfont step_num_last">&#xe61c;</i>
        </div>
        <div class="pd-font3 pdf"><span class="stf">完成</span></div>
      </div>


    </div>
    <div class="lab_wrapp">
      <p><span>*</span>手机号码:</p>
      <p><span>*</span>验证码:</p>
      <!--<p><span>*</span>新密码:</p>
      <p><span>*</span>确认密码:</p>
      <p>推荐理财师工号:</p>-->
    </div>
    <div class="input_wrapp">
      <form action="find_pwd2.jsp">
        <input class="input" required name="name" placeholder="请输入手机号码" id="mobile"/>
        <input class="yzm input" required name="yzm" placeholder="请输入验证码"  id="authCode"/>
        <span class="yzm_btn" onclick="getCode();">获取验证码</span>
        <!--<input class="input" required name="pwd" placeholder="请输入登录密码" />-->
        <!--<input class="input" required ame="c_pwd" placeholder="请再次输入密码" />
        <input class="input" required name="lcs_no" placeholder="请输入理财师工号" />-->
        <!--<div class="agree_wrapp">
            <i class="iconfont" id="agree">&#xe611;</i>
            <span>我已阅读并同意</span><a href="#">《网络服务协议》</a><a href="#">《合格投资者承诺》</a>
        </div>-->

        <input class="register_btn" value="下一步" type="button" onclick="verificationCode();"/>
      </form>
      <p class="already"><a href="/login/registerPage">去注册</a></p>
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
  var $agree = $("#agree");

  $.getJSON("mall.json",function(rs){


  })
  $('.input').focus(function(){
    $(this).addClass("focus")
  })
  $('.input').blur(function(){
    $(this).removeClass("focus")
  })
  $agree.on("click",function(){
    if ($agree.hasClass('agree')) {
      $agree.removeClass('agree')
    } else {
      $agree.addClass('agree')
    }
  })



  function getCode(){
    var type = 2;
    var mobile = $("#mobile").val();

    if(!(/^1[3|4|5|8][0-9]\d{8}$/.test(mobile))){
      alert("不是完整的11位手机号或者正确的手机号");
      return;
    }


    $.ajax({
      type: "post",
      url: "/login/sendCode",
      data:{"mobile": mobile,"type":type},
      dataType: "json",
      success:function(res) {
        if(res.success == false){
          alert(res.errMsg);
          return;
        }

      }
    });
  }

  function verificationCode(){
    var type = 2;
    var mobile = $("#mobile").val();

    var authCode =  $("#authCode").val();

    if(authCode == "" || authCode.length != 6){
      alert("验证码长度不能小于6位");
      return;
    }

    if(!(/^1[3|4|5|8][0-9]\d{8}$/.test(mobile))){
      alert("不是完整的11位手机号或者正确的手机号");
      return;
    }


    $.ajax({
      type: "post",
      url: "/login/verificationCode",
      data:{"mobile": mobile,"type":type,"authCode":authCode},
      dataType: "json",
      success:function(res) {
        console.log(res);
        if(res.success == false){
          alert(res.errMsg);
          return;
        }else{
          window.location.href = '/login/updatePwdPage2?mobile='+mobile+'&authCode='+authCode;
        }

      }
    });
  }

</script>
</html>
