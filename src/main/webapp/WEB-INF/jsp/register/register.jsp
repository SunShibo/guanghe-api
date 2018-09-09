<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>注册-广和投资</title>
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
            color: #d0d0d0;
        }

        @font-face {
            font-family: 'iconfont';  /* project id 754425 */
            src: url('//at.alicdn.com/t/font_754425_cs7c9asd2vi.eot');
            src: url('//at.alicdn.com/t/font_754425_cs7c9asd2vi.eot?#iefix') format('embedded-opentype'),
            url('//at.alicdn.com/t/font_754425_cs7c9asd2vi.woff') format('woff'),
            url('//at.alicdn.com/t/font_754425_cs7c9asd2vi.ttf') format('truetype'),
            url('//at.alicdn.com/t/font_754425_cs7c9asd2vi.svg#iconfont') format('svg');
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
            width: 76px;
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
            margin-top: 126px;
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
            padding-left: 150px;
            padding-top: 30px;
        }

        .already>a {

            text-decoration: underline;
            font-size: 14px;
            letter-spacing: 1px;
            color: #d3a359;
            cursor: pointer;
        }

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
            padding: 40px;
            width: 910px; /* Full width */
            height: 550px; /* Full height */
            background-color: #ffffff;
            box-shadow: 0px 2px 24px 0px
            rgba(178, 130, 71, 0.2);
            overflow: auto;
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
            color: #D3A359;
            font-size: 40px;
            transition: 0.3s;
        }

        .close:hover,
        .close:focus {
            color: #bbb;
            text-decoration: none;
            cursor: pointer;
        }

        .modal .protocol_title{
            font-size: 20px;
            letter-spacing: 1px;
            text-align: center;
        }
        .modal p{
            font-size: 16px;
            color: #333333;
            line-height: 36px;
            letter-spacing: 1px;
        }
        .modal .protocol_section{
            font-size: 18px;
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
            <button class="btn" onclick="window.location.href='/'">网站首页</button>
        </div>
    </nav>
</div>
<section >
    <div class="reg_wrapp">
        <p class="register">注册</p>
        <div class="line"></div>
        <div class="lab_wrapp">
            <p><span>*</span>手机号码:</p>
            <p><span>*</span>验证码:</p>
            <p><span>*</span>登录密码:</p>
            <p><span>*</span>确认密码:</p>
            <p>推荐理财师工号:</p>
        </div>
        <div class="input_wrapp">
            <form>
                <input class="input" required name="name" placeholder="请输入手机号码" id="phone"/>
                <input class="yzm input" required name="yzm" placeholder="请输入验证码" id="authCode"/>
                <span class="yzm_btn" >获取验证码</span>
                <input class="input" required name="pwd" placeholder="请输入登录密码" id="password" type="password"/>
                <input class="input" required ame="c_pwd" placeholder="请再次输入密码" id="confirmPassword" type="password"/>
                <input class="input" required name="lcs_no" placeholder="请输入理财师工号" id="financialManagerNumber"/>
                <div class="agree_wrapp">
                    <i class="iconfont" id="agree">&#xe611;</i>
                    <span>我已阅读并同意</span><a href="javascript:openpro(true);">《网络服务协议》</a><a href="javascript:openpro(false);">《合格投资者承诺》</a>
                </div>

                <input class="register_btn" value="注册" type="button" onclick="userRegister();"/>
            </form>
            <p class="already">已有帐号？<a href="/login/loginPage">去登录</a></p>
        </div>
    </div>
</section>
<div id="myModal1" class="modal">

    <!-- 关闭按钮 -->
    <span class="close" onclick="document.getElementById('myModal1').style.display='none'">&times;</span>
    <p class="protocol_title">网络服务协议</p>
    <p class="protocol_section">重要提示：</p>
    <p>广和投资有限公司(以下简称“广和投资”)依据本协议的规定为用户提供服务，本协议在公司用户和广和投资之间具有合同上的法律效力。广和投资在此特别提醒您认真阅读、充分理解本协议各条款，特别是其中所涉及的免除或限制广和投资责任的条款、排除或限制用户权利的条款等。请您审慎阅读并选择接受或不接受本协议。除非您接受本协议所有条款，否则您无权使用广和投资于本协议下所提供的服务。您一经注册或使用广和投资服务即视为对本协议全部条款已充分理解并完全接受。</p>
    <p class="protocol_section">第一章 广和投资平台和服务</p>
    <p>第一条 广和投资平台是由广和投资运营的信息中介服务平台（网址：http://www.guanghetouzi.com/，如广和投资以公告等形式发布新的网址，请届时登陆新的网址）。广和投资通过网络平台及客户端等各种方式向用户提供服务，具体服务内容主要包括：交易信息发布、交易管理服务、用户服务等交易辅助服务，具体详情以广和投资当时提供的服务内容为准。</p>
    <p>第二条 为了保障您的权益，在自愿注册使用广和投资服务前，必须仔细阅读并充分理解知悉本服务协议所有条款。一经注册或使用广和投资服务即视为对本服务协议的充分理解和接受；如有违反而导致任何法律后果，您将自己独立承担相应的法律责任。</p>
    <p>第三条 在本协议履行过程中，广和投资可根据情况对本协议进行修改。一旦本协议的内容发生变动，广和投资将通过网络平台公布最新的服务协议，不再向用户作个别通知。如果用户不同意广和投资对本协议所做的修改，有权停止使用广和投资提供的服务。如果用户继续使用广和投资服务，则视为用户接受广和投资对本协议所做的修改，并应遵照修改后的协议执行。</p>
    <p>第四条 广和投资对用户的通知及任何其他的协议、告示或其他关于用户使用账户及服务的通知，用户同意广和投资可通过公司平台公告、站内信、电子邮件、手机短信、无线通讯装置等电子方式或邮寄等物理方式进行，该等通知于发送之日视为已送达收件人（如以邮寄方式向用户发出通知的，则在该等通知按照用户在公司平台留存的联系地址交邮后的第三个自然日即视为送达）。因不可归责于公司的原因（包括但不限于电子邮件地址、手机号码、联系地址等不准确或无效、信息传输故障等）导致用户未在前述通知视为送达之日收到该等通知的，广和投资不承担任何责任。</p>
    <p>第五条 广和投资可以依其判断暂时停止提供、限制或改变相关服务，只要用户仍然使用公司服务，即表示用户仍然同意本协议。</p>
    <p class="protocol_section">第二章 用户承诺事项</p>
    <p>第六条 用户在使用广和投资服务前，必须先在公司网站平台上进行注册。</p>
    <p>第七条 用户承诺以下事项：</p>
    <p>1、用户注册必须依照广和投资要求提示提供真实、最新、有效及完整的资料。</p>
    <p>2、用户保证并承诺通过广和投资平台进行交易的资金来源合法。</p>
    <p>3、用户有义务维护并更新其资料，确保其真实、最新、有效及完整。若用户提供任何错误、虚假、过时或不完整的资料，或者广和投资依其独立判断怀疑资料为错误、虚假、过时或不完整，广和投资有权采取相应措施，包括但不限于停用帐户、拒绝用户使用广和投资服务的部分或全部功能。在此情况下，广和投资不承担任何责任，并且用户同意负担因此所产生的直接或间接的任何支出或损失。</p>
    <p>4、如因用户未及时更新基本资料，导致服务无法提供或提供时发生任何错误，用户不得将此作为取消交易或拒绝付款的理由，广和投资亦不承担任何责任，所有后果应由用户承担。</p>
    <p>5、除本协议以外，用户应同时遵守广和投资平台不时发布及更新的全部规则，包括但不限于公告、产品流程说明、平台项目说明、风险提示等。</p>
    <p class="protocol_section">第三章 广和投资服务的内容</p>
    <p></p>
    <p></p>
    <p></p>
    <p></p>
    <p></p>
    <p></p>
    <p></p>
    <p></p>
    <p></p>
</div>
<div id="myModal2" class="modal">

    <span class="close" onclick="document.getElementById('myModal2').style.display='none'">&times;</span>
    <p class="protocol_title">合格投资者认定</p>
    </br>
    </br>
    <p class="protocol_section" style="text-indent: 25px;">根据《私募投资基金监督管理暂行办法》第四章第十四条规定：“私募基金管理人、私募基金销售机构不得向合格投资者之外的单位和个人募集资金，不得通过报刊、电台、电视、互联网等公众传播媒体或者讲座、报告会、分析会、传单、手机短信、微信、博客和电子邮件等方式，向不特定对象宣传推介。”</p>
    </br>
    </br>
    </br>
    <p class="protocol_section">您如有意进行私募投资基金投资且满足《私募投资基金监督管理暂行办法》关于“合规投资者标准之规定：</p>
    </br>
    <p style="text-indent: 50px;">具备相应风险识别能力和风险承担能力，</p>
    <p style="text-indent: 50px;">投资于单只私募基金的金额不低于100万元，</p>
    <p style="text-indent: 50px;">个人金融类资产不低于300万元或者最近三年个人年均收入不低于50万元人民币。</p>
    </br>
    </br>
    </br>
    <p>请您详细阅读本提示，如符合以上合规投资者条件，方可获得广和投资产口宣传推介服务。</p>


</div>
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
<script src="/static/js/mainJs/jquery.min.js"></script>
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
    function openpro(t){
        if(t){
            document.getElementById('myModal1').style.display='block'

        } else {
            document.getElementById('myModal2').style.display='block'

        }
    }


    function getCode(){
        var type = 0;
        var mobile = $("#phone").val();

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
                if(data.success == false){
                    alert(data.errMsg);
                    return;
                }

            }
        });
    }


    //检查手机号
    function userRegister(){

        var mobile = $("#phone").val();
        if(!(/^1[0-9][0-9]\d{8}$/.test(mobile))){
            alert("不是完整的11位手机号或者正确的手机号");
            return;
        }
        var password = $("#password").val();
        if(password == "" || password.length < 6){
            alert("密码长度不能小于6位");
            return;
        }
        var confirmPassword = $("#confirmPassword").val();
        if(password != confirmPassword){
            alert("密码和确认密码不一致");
            return;
        }
        var authCode = $("#authCode").val();
        if(authCode == "" || authCode.length != 6){
            alert("验证码长度不能小于6位");
            return;
        }
        var financialManagerNumber = $("#financialManagerNumber").val();
        ///login/register

        if(!$(".agree").length){
            alert("请阅读并同意服务协议");
            return;
        }
        $.ajax({
            type: "post",
            url: "/login/register",
            data:{"mobile": mobile,"password":password,"confirmPassword":confirmPassword,
                "authCode":authCode,"financialManagerNumber":financialManagerNumber},
            dataType: "json",
            success:function(res) {
                if(res.success == false){
                    alert(res.errMsg);
                    return;
                }else{
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
            }
        });
    }
    function settime() {
        if (countdown == 0) {
            $yzm_btn.removeClass("disabled");
            $yzm_btn[0].textContent = "发送验证码";
            countdown = 60;
            return;
        } else {
            $yzm_btn[0].textContent = "重新发送(" + countdown + ")";
            countdown--;
        }
        setTimeout(function () {
            settime();
        }, 1000)
    }
    var countdown = 60;
    var $yzm_btn = $(".yzm_btn");
    $yzm_btn.on("click",function(){
        if($yzm_btn.hasClass("disabled"))return;
        var mobile = $("#phone").val();
        if(!(/^1[3|4|5|8][0-9]\d{8}$/.test(mobile))){
            alert('不是有效的手机号码');
            return;
        }
        $.ajax({
            type: "post",
            url: "/login/sendCode",
            data:{"mobile": mobile,"type":0},
            dataType: "json",
            success:function(rs) {
                if(rs.success){
                    settime();
                    $yzm_btn.addClass("disabled");
                }else{
                    if(rs.success == false){
                        alert(rs.errMsg);
                        return;
                    }
                }
            }
        });

    })
</script>
</html>