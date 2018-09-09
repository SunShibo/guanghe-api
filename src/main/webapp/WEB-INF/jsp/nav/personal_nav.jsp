<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<style>
    .nav_a {
        display: block;
        margin: 8px 20px;
        padding: 0 0 10px 0;
        color: #000000;
        font-size: 16px;
    }
</style>
<%--<div class="header_nav">--%>
<%--<img src="../static/img/logo.png" class="nav_logo"/>--%>
<%--<ul>--%>
<%--<li><a class="nav_a index" href="/" >首页</a></li>--%>
<%--<li class="has_menu">--%>
<%--<a class="nav_a ghon" href="/CompanyIntroduction/list">走进广和</a>--%>
<%--<ul class="sub_ul">--%>
<%--<a href="/CompanyIntroduction/list">公司介绍</a>--%>
<%--<a href="/ChairmanSpeech/list">董事长致辞</a>--%>
<%--<a href="/CoreTeam/list">核心团队</a>--%>
<%--<a href="#">企业文化</a>--%>
<%--<a href="/BigEvent/list">企业荣誉</a>--%>
<%--</ul>--%>
<%--</li>--%>
<%--<li class="has_menu">--%>
<%--<a class="nav_a wealth" href="/wealthManagement/page">财富管理</a>--%>
<%--<ul class="sub_ul">--%>
<%--<a href="/privateConsultant/page">私享顾问</a>--%>
<%--<a href="/privateInvestment/page">私募投资</a>--%>
<%--<a href="#">产品优势1</a>--%>
<%--<a href="#">产品优势2</a>--%>
<%--<a href="#">产品优势3</a>--%>
<%--</ul>--%>
<%--</li>--%>
<%--<li class="has_menu">--%>
<%--<a class="nav_a asset" href="/assetManagement/page">资产管理</a>--%>
<%--<ul class="sub_ul">--%>
<%--<a href="#">证券基金</a>--%>
<%--<a href="#">定增基金</a>--%>
<%--<a href="#">产品基金</a>--%>
<%--<a href="#">股权基金</a>--%>
<%--</ul>--%>
<%--</li>--%>
<%--<li class="has_menu">--%>
<%--<a class="nav_a bus" href="/BusinessSchoolDetails/list">广和商学院</a>--%>
<%--<ul class="sub_ul">--%>
<%--<a href="/KnowledgeTraining/page">理财知识培养</a>--%>
<%--<a href="/PolicyInterpreTation/page">政策解读</a>--%>
<%--<a href="/ExpertIectureHall/page">庄家讲堂</a>--%>
<%--</ul>--%>
<%--</li>--%>
<%--<li class="has_menu">--%>
<%--<a class="nav_a news" href="/newsInformation/page">广和新闻</a>--%>
<%--<ul class="sub_ul">--%>
<%--<a href="/newsInformation/page">广和新闻</a>--%>
<%--<a href="/industryInformation/page">行业动态</a>--%>
<%--</ul>--%>
<%--</li>--%>
<%--<li class="has_menu">--%>
<%--<a class="nav_a" href="#">会员尊享</a>--%>

<%--</li>--%>
<%--</ul>--%>
<%--<div style="float: right; margin-top: 5px;">--%>
<%--<button onclick="toRegister();">立即注册</button>--%>
<%--<button class="btn-pri">客户中心</button>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div style="height: 120px;"></div>--%>

<div class="header_up">
    <div class="header_up_left">
        <i class="iconfont" style="color: #ccc;">&#xe62c;</i>
        <span  style="color: #ccc;">Mon-Fri : 09:00-17:00</span>
    </div>
    <div class="header_up_right">
        <i class="iconfont" style="color: #ccc;">&#xe61b;</i>
        <span style="color: #ccc;">+86(021)56497956</span>
        <a href="help_i.html" style="color: #ccc;padding: 0 10px">帮助中心</a>
        <a target="_blank" href="https://weibo.com/guanghebj"><i class="iconfont">&#xe69c;</i></a>
        &nbsp;
        <a href="javascript:;" class="wxgzh">
            <i class="iconfont">&#xe66a;</i>
            <img class="wximg" src="/static/img/ghtzwx.png" />
        </a>
    </div>
</div>
<div class="header_nav">
    <img src="/static/img/logo.png" class="nav_logo"/>
    <ul>
        <li><a class="nav_a active" href="/" >首页</a></li>
        <li class="has_menu">
            <a class="nav_a" href="/CompanyIntroduction/list">走进广和</a>
            <ul class="sub_ul">
                <a href="/CompanyIntroduction/list">公司介绍</a>
                <a href="/ChairmanSpeech/list">董事长致辞</a>
                <a href="/CoreTeam/list">核心团队</a>
                <a href="/companyCultrue/list">企业文化</a>
                <a href="/BigEvent/list">发展历程</a>
                <a href="/CorporateHonor/list">企业荣誉</a>
            </ul>
        </li>
        <li class="has_menu">
            <a class="nav_a" href="/wealthManagement/page">财富管理</a>
            <ul class="sub_ul">
                <a href="/privateConsultant/page">私享顾问</a>
                <a href="/privateInvestment/page">私募投资</a>
                <%--<a href="#">产品优势1</a>--%>
                <%--<a href="#">产品优势2</a>--%>
                <%--<a href="#">产品优势3</a>--%>
            </ul>
        </li>
        <li class="has_menu">
            <a class="nav_a" href="/assetManagement/page">资产管理</a>
            <%--<ul class="sub_ul">--%>
            <%--<a href="#">证券基金</a>--%>
            <%--<a href="#">定增基金</a>--%>
            <%--<a href="#">产品基金</a>--%>
            <%--<a href="#">股权基金</a>--%>
            <%--</ul>--%>
        </li>
        <li class="has_menu">
            <a class="nav_a" href="/BusinessSchoolDetails/list">广和商学院</a>
            <ul class="sub_ul">
                <a href="/KnowledgeTraining/page">理财知识培养</a>
                <a href="/PolicyInterpreTation/page">政策解读</a>
                <a href="/ExpertIectureHall/page">庄家讲堂</a>
            </ul>
        </li>
        <li class="has_menu">
            <a class="nav_a" href="/newsInformation/page">广和新闻</a>
            <ul class="sub_ul">
                <a href="/newsInformation/page">广和新闻</a>
                <a href="/industryInformation/page">行业动态</a>
            </ul>
        </li>
        <li class="has_menu">
            <a class="nav_a" href="/activites/huiyuanzunxiang">会员尊享</a>
            <ul class="sub_ul">
                <a href="/activites/list">会员活动</a>
                <a href="/MallHome/list">和悦商城</a>
            </ul>
        </li>

    </ul>
    <div style="float: right; margin-top: 13px;">
        <a href="javascript:;" onclick="toRegister();" class="white_btn nav_btn registerbtn1">立即注册</a>
        <a href="/login/loginPage" class="no_white_btn nav_btn loginbtn1">用户登录</a>
        <a href="/personal/my_integral" class="white_btn dis_none nav_btn personbtn1">个人中心</a>
        <a href="javascript:;" onclick="outLogin();" class="no_white_btn dis_none nav_btn outbtn1">退&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;出</a>
    </div>
</div>
<script src="/static/js/mainJs/jquery.min.js"></script>
<script src="/static/js/web/page.js"></script>

<script>
    $(function() {
        $('.has_menu').hover(function() {
            $(this).find('ul').slideDown(1);
        }, function() {
            $(this).find('ul').slideUp(1);
        });

        addActiveClass();
    });

    function addActiveClass(){
        var location = window.location.href;
        if(location.indexOf("CompanyIntroduction") > 0 ||
                location.indexOf("ChairmanSpeech") > 0 ||
                location.indexOf("CoreTeam") > 0 ||
                location.indexOf("BigEvent") > 0 ){
            $(".ghon").addClass("active");
        }else if(location.indexOf("wealthManagement") > 0 ||
                location.indexOf("privateConsultant") > 0 ||
                location.indexOf("privateInvestment") > 0
        ){
            $(".wealth").addClass("active");
        }else if(location.indexOf("assetManagement") > 0  ){
            $(".asset").addClass("active");
        }else if(location.indexOf("BusinessSchoolDetails") > 0  ){
            $(".bus").addClass("active");
        }else if(location.indexOf("newsInformation") > 0 ||
                location.indexOf("industryInformation") > 0 ){
            $(".news").addClass("active");
        }else{
            $(".index").addClass("active");
        }


    }

    function toRegister(){
        window.location.href = "/login/registerPage";
    }


</script>