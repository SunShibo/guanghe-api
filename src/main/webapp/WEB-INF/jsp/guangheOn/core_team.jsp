<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<div>
  <head>
    <meta charset="utf-8" />
    <title></title>
    <link rel="stylesheet" type="text/css" href="/static/css/m_app.css"/>
    <link rel="stylesheet" media="screen and (max-width:1400px)" href="/static/css/app.css"/>
    <link rel="stylesheet" type="text/css" href="/static/css/slick.css" />
    <link rel="stylesheet" type="text/css" href="/static/css/slick-theme.css" />
    <link href="/static/css/coreTeam.css" rel="stylesheet"/>

  </head>

  </div>
    <div class="header_line"></div>
    <div class="header news zjgh_bg">
      <jsp:include page="../nav/header_nav.jsp"></jsp:include>
      <div class="header_big_font_wrapp"></div>
      <h1 align="center"  class="header_big_font">走进广和 / On Guanghe</h1>

    </div>





    <div class="news_bn">
      <div class="wrapp">
        <span class="bread">首页 > 走进广和 > 核心团队</span>
        <a id="hxtd" ></a>
        <div class="bread_btn_wrapp">
          <button class="bread_btn " onclick="window.location.href='/CompanyIntroduction/list#gsjs'">公司简介</button>
          <button class="bread_btn " onclick="window.location.href='/ChairmanSpeech/list#dsz'">董事长致辞</button>
          <button class="bread_btn bread_btn_active " onclick="window.location.href='/CoreTeam/list#hxtd'">核心团队</button>
          <button class="bread_btn " onclick="window.location.href='/companyCultrue/list'">企业文化</button>

          <button class="bread_btn  " onclick="window.location.href='/BigEvent/list'">发展历程</button>
          <button class="bread_btn " onclick="window.location.href='/CorporateHonor/list'">企业荣誉</button>
        </div>
      </div>
    </div>

    <section class="panel team" data-section-name="team">
      <div class="container">
        <div class="inner">
          <div style="width: 150px; margin: 0 auto; padding: 50px 0 10px 0;">
            <span style="font-size: 36px; height: 26px;">核心团队</span>
          </div>
          <div style="width:65px;margin: 0 auto; height: 2px; background-color:#D3A359 "></div>
          <div style="width: 150px; margin: 0 auto; padding: 10px 0 10px 0;">
            <span style="font-size: 26px; height: 26px;">Core team</span>
          </div>
          <div>
            <p style="font-size: 14px;line-height: 20px;text-indent: 20px;color: #666666;" id="coreTeam-content">

            </p>
            <div style="height: 50px;"></div>
          </div>
          <div class="team-box">
            <div class="member-list" id="midd-wrapper">
              <div class="list-item">
                <div class="list-item-inner">
                  <p><img style="width: 100%;" src="/static/img/hanglei.png"></p>
                </div>
              </div>
              <div class="list-item">
                <div class="list-item-inner">
                  <p><img style="width: 100%;" src="/static/img/zhangruopeng.png"></p>
                </div>
              </div>
              <div class="list-item">
                <div class="list-item-inner">
                  <p><img style="width: 100%;" src="/static/img/wangchunyan.png"></p>
                </div>
              </div>
              <div class="list-item">
                <div class="list-item-inner">
                  <p><img style="width: 100%;" src="/static/img/weizhong.png"></p>
                </div>
              </div>
            </div>

          </div>
          <div class="member-detail"id="midd-wrapper-content">
            <div class="detail-item">
              <p align="center" class="boss_name" >韩磊先生</p>
              <div class="boss_line"></div>
              <p align="center" class="identity">广和集团副总裁 、广和投资总裁</p>
              <p>
                10年金融行业从业经验,具有丰富的投资、资产管理、风险控制经验,现全面管理广和投资工作，负责制订公司发展规划及发展策略.
              </p>
            </div>
            <div class="detail-item">
              <p align="center" class="boss_name" >张若鹏先生</p>
              <div class="boss_line"></div>
              <p align="center" class="identity">广和投资产品总监</p>
              <p>
                比勒陀利亚大学主修市场经济管理和国际货币金融专业，持有美国特许金融分析师CFA认证、AFP资格认证、银行从业资格证书。
                曾多年供职于信托行业、私募管理行业。曾担任ABNAMRO BANK产品经理；曾任职于ABSA BANK，执行操作策略、外汇分析；曾于坤元资产管理有限公司担任要职，并成功为首开集团、霸州体育馆项目完成融资，具有丰富的产品研发、资金管理、风险控制等经验。            </p>
            </div>
            <div class="detail-item">
              <p align="center" class="boss_name" >王春艳女士</p>
              <div class="boss_line"></div>
              <p align="center" class="identity">广和投资风控总监</p>
              <p>
                清华大学经济管理学院金融学专业，经济学硕士，美国特许金融分析师CFA持有人、香港注册估值分析师CVA持有人，10余年金融行业从业经验，具有丰富的产品研发、资金管理、风险控制经验，曾在任招商银行产品中心任职.
              </p>
            </div>
            <div class="detail-item">
              <p align="center" class="boss_name" >韦仲先生</p>
              <div class="boss_line"></div>
              <p align="center" class="identity">广和投资副总裁、财富中心总裁</p>
              <p>
                10年市场营销、品牌传播、财富管理工作经验，多年金融团队管理经验，丰富的资产配置经验，负责搭建了广和投资财富管理板块，专注于高净值客户财富管理事业.
              </p>
            </div>
          </div>
        </div>
        <div class="page-bottom-space"></div>
      </div>
    </section>
    <jsp:include page="../footer/footer.jsp"></jsp:include>
    </body>
    <script src="/static/js/jquery-2.2.0.min.js"></script>
    <script type="text/javascript" src="/static/js/slick.min.js"></script>
    <script src="/static/js/main.js"></script>
    <script>

    </script>
    <script>
      $.getJSON("/CoreTeam/detail",function(rs){
        if(rs.data.coreTeam.length>0){
          $("#coreTeam-content").append(rs.data.coreTeam[0]['coreTeam'])
        }
        /*if(rs.data.employee.length>0){
         var  html = '';
         for(var i=0;i<rs.data.employee.length;i++){
         html +='<div class="detail-item"> <p align="center" class="boss_name" >';
         if(rs.data.employee[i]['employeeName']){
         html += rs.data.employee[i]['employeeName'];
         }
         html+='</p><div class="boss_line"></div> <p align="center" class="identity">'
         if(rs.data.employee[i]['employeePosition']){
         html += rs.data.employee[i]['employeePosition'];
         }
         html += '</p><p>'
         if(rs.data.employee[i]['introduction']){
         html += rs.data.employee[i]['introduction'];
         }
         html+='</p></div>'
         }
         $("#midd-wrapper-content").append(html);
         }*/
        /*if(rs.data.employee.length) {
         var html = '';
         for (var i = 0; i < rs.data.employee.length; i++) {
         html += '<div class="list-item"><div class="list-item-inner"><p><img style="width: 100%;" src="';
         if (rs.data.employee[i]['imageUrl']) {
         html += rs.data.employee[i]['imageUrl'];
         }
         html += '"></p></div></div>';
         }
         $("#midd-wrapper").append(html);
         }*/
        $('.member-detail').slick({
          slidesToShow: 1,
          slidesToScroll: 1,
          arrows: false,
          fade: true,
          asNavFor: '.member-list'
        });
        $('.member-list').slick({
          slidesToShow: 3,
          slidesToScroll: 1,
          asNavFor: '.member-detail',
          dots: false,
          centerMode: true,
          focusOnSelect: true,
          centerPadding: '0px'
        });
      })
    </script>
    </html>
