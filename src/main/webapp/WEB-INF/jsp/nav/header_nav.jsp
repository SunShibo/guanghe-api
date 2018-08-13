<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<div class="header_nav">
    <img src="../static/img/logo.png" class="nav_logo"/>
    <ul>
        <li><a class="nav_a index" href="/" >首页</a></li>
        <li class="has_menu">
            <a class="nav_a ghon" href="/CompanyIntroduction/list">走进广和</a>
            <ul class="sub_ul">
                <a href="/CompanyIntroduction/list">公司介绍</a>
                <a href="/ChairmanSpeech/list">董事长致辞</a>
                <a href="/CoreTeam/list">核心团队</a>
                <a href="#">企业文化</a>
                <a href="/BigEvent/list">企业荣誉</a>
            </ul>
        </li>
        <li class="has_menu">
            <a class="nav_a wealth" href="/wealthManagement/page">财富管理</a>
            <ul class="sub_ul">
                <a href="/privateConsultant/page">私享顾问</a>
                <a href="/privateInvestment/page">私募投资</a>
                <a href="#">产品优势1</a>
                <a href="#">产品优势2</a>
                <a href="#">产品优势3</a>
            </ul>
        </li>
        <li class="has_menu">
            <a class="nav_a asset" href="/assetManagement/page">资产管理</a>
            <ul class="sub_ul">
                <a href="#">证券基金</a>
                <a href="#">定增基金</a>
                <a href="#">产品基金</a>
                <a href="#">股权基金</a>
            </ul>
        </li>
        <li class="has_menu">
            <a class="nav_a bus" href="/BusinessSchoolDetails/list">广和商学院</a>
            <ul class="sub_ul">
                <a href="/KnowledgeTraining/page">理财知识培养</a>
                <a href="/PolicyInterpreTation/page">政策解读</a>
                <a href="/ExpertIectureHall/page">庄家讲堂</a>
            </ul>
        </li>
        <li class="has_menu">
            <a class="nav_a news" href="/newsInformation/page">广和新闻</a>
            <ul class="sub_ul">
                <a href="/newsInformation/page">广和新闻</a>
                <a href="/industryInformation/page">行业动态</a>
            </ul>
        </li>
        <li class="has_menu">
            <a class="nav_a" href="#">会员尊享</a>

        </li>
    </ul>
    <div style="float: right; margin-top: 5px;">
        <button onclick="toRegister();">立即注册</button>
        <button class="btn-pri">客户中心</button>
    </div>
</div>
<div style="height: 120px;"></div>
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
