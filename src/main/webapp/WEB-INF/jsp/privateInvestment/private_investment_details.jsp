<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <title>广和投资-私募投资-私募产品</title>
    <link rel="stylesheet" type="text/css" href="/static/css/m_app.css"/>
    <link rel="stylesheet" media="screen and (max-width:1400px)" href="/static/css/app.css"/>
    <link rel="stylesheet" type="text/css" href="/static/css/slick.css" />
    <link rel="stylesheet" type="text/css" href="/static/css/slick-theme.css" />
    <link href="/static/css/simuchanpin.css" rel="stylesheet" />
    <style>
        .alone_four{
            padding-left: 270px;
        }

        .items>div:nth-child(1){
            width: 70px;float: left;height: 10px;
        }
        .items>div:nth-child(2){
            width: 200px;float: left;font-size: 14px; line-height: 50px;
        }
        .items>div:nth-child(3){
            float: left;font-size: 14px;color: #666;line-height: 50px;
        }

        .risk{
            border-bottom: #EEEEEE 1px solid;
        }
        .risk_wrapp>div:nth-child(1){
            width: 70px;height: 1px; float: left;
        }
        .risk_wrapp>div:nth-child(2){
            width: 200px; float: left;
        }
        .risk_wrapp>div:nth-child(3){
            float: left;
            width:calc(100% - 270px);
        }
        .risk_wrapp>div:nth-child(3)>p:nth-child(n+2){
            text-indent: 80px;
        }

        .risk_wrapp>div>p{
            line-height: 49px;
            border-bottom: 1px solid #EEEEEE;
            font-size:14px;
            color: #666;

        }
        .risk_wrapp{
            border-bottom: 1px solid #EEEEEE;
        }
    </style>

</head>

<body>
<div class="header_line"></div>
<div class="header news" style="background-image: url(/static/img/private_investment_bg.png);background-size: cover;">
    <div class="header_up">
        <div class="header_up_left">
            <i class="iconfont">&#xe62c;</i>
            <span>Mon-Fri : 09:00-17:00</span>
        </div>
        <div class="header_up_right">
            <i class="iconfont">&#xe61b;</i>
            <span>+86(021)56497956</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="#"><i class="iconfont">&#xe69c;</i></a>
            &nbsp;
            <a href="#"><i class="iconfont">&#xe66a;</i></a>
            &nbsp;
            <a href="#"><i class="iconfont">&#xe9bd;</i></a>
            &nbsp;
            <a href="#"><i class="iconfont">&#xe630;</i></a>
        </div>
    </div>

    <jsp:include page="../nav/header_nav.jsp"></jsp:include>

    <div style="height: 120px;">
        <p align="center" style="font-size:47px">
            私募投资<span style="font-size: 32px;"> / Private investment</span></p>

    </div>

</div>

<div class="news_bn">
    <div class="wrapp">
        <span class="bread">首页 > 财富管理 > 私募投资> 私募产品 </span>
        <a name="hxtd"></a>

    </div>

    <section >
        <div style="height: 50px;"></div>
        <div class="news_page_wrapp">


            <div class="invest_wrapp">
                <p class="iw_title" id="fundName"></p>
                <p>
                    <span id="productScaleStart"></span>
                    <span id="amountOfInvestment"></span>
                    <span id="fundType"></span>
                </p>
                <p>
                    <span id="productScaleStartTxt"></span>
                    <span id="amountOfInvestmentTxt"></span>
                    <span>基金类型</span>
                </p>
                <div class="invest_waring">
                    <p id="invest_waring_p">*广和提醒您：投资有风险</p>
                </div>
                <div class="invest_start">
                    <p class="login_p">您尚未<span>登录!</span></p>
                    <div style="height: 50px;"></div>
                    <button class="reduce iconfont btn ">&#xe60c;</button>
                    <input value="" id="amountOfInvestment1" /><span class="unit" id="amountOfInvestmentTxt1"></span>
                    <button class="plus iconfont btn btn_allow">&#xe641;</button>

                    <p class="invest_tip"><span id="amountOfInvestment2"></span><span id="increasingAmount">递增金额   10万元</span></p>
                    <button class="yuyue btn btn_allow" onclick="appointment();">我要预约</button>
                </div>
            </div>






            <div class="content">
                <p  class="content_title">产品介绍</p>
                <p class="product-introduction">Product introduction</p>
                <div class="produce_title_wrapp">
                    <div class="product_title_lump"></div>
                    <p class="product_title">基金要素</p>
                </div>



                <div class="items item">
                    <div></div>
                    <div>基金名称</div>
                    <div id="fundName1"></div>
                </div>

                <div class="items item">
                    <div></div>
                    <div>基金类型</div>
                    <div id="fundType1"></div>
                </div>

                <div class="items item">
                    <div></div>
                    <div>运作方式</div>
                    <div id="operations"></div>
                </div>


                <div class="items item">
                    <div></div>
                    <div>基金管理人</div>
                    <div id="fundManager"></div>
                </div>

                <div class="items item">
                    <div></div>
                    <div>基金托管人</div>
                    <div id="fundCustodian"></div>
                </div>


                <div class="items item">
                    <div></div>
                    <div>产品规模</div>
                    <div id="productScale"></div>
                </div>

                <div class="items item">
                    <div></div>
                    <div>认购起点</div>
                    <div id="subscribeStartingPoint"></div>
                </div>


                <div class="items item">
                    <div></div>
                    <div>产品期限</div>
                    <div id="product_term"></div>
                </div>


                <div class="items item">
                    <div></div>
                    <div>基金投向</div>
                    <div id="fundInvestment"></div>
                </div>

                <div class="items item">
                    <div></div>
                    <div>基金费用</div>
                    <div id="capitalCost"></div>
                </div>

                <div class="items item">
                    <div></div>
                    <div>比较基准</div>
                    <div id="comparisonDatum"></div>
                </div>

                <div class="items item">
                    <div></div>
                    <div>业绩报酬</div>
                    <div id="performanceReward"></div>
                </div>

<div>
                <div class="risk_wrapp" id="risk_wrapp">
                    <div></div>
                    <div>
                        <p id="risk">风险控制</p>
                    </div>
                    <div id="abcd">
                        <%--<p><span>产品分层：</span><span>优先级LP：</span><span>大型央企、银行保险等金融机构不高于80%；</span></p>--%>
                        <%--<p><span>优先级LP：</span><span>五莲县财政部门或政府融资平台不低于20%；</span></p>--%>
                        <%--<p><span>GP：</span><span>广和投资有限公司  1.5%</span></p>--%>
                    </div>
                </div>
</div>

                <%--<div class="item_alone">--%>
                        <%--<p class="produce_sub_title">--%>
                            <%--<span class="produce_sub_desc alone_one">产品分层：优先级LP：大型央企、银行保险等金融机构不高于80%；</span>--%>
                        <%--</p>--%>
                    <%--</div>--%>
                    <%--<div class="item_alone">--%>
                        <%--<p class="produce_sub_title">--%>
                            <%--风险控制--%>
                            <%--<span class="produce_sub_desc alone_two" > 劣后级LP：五莲县财政部门或政府融资平台不低于20%；</span>--%>
                        <%--</p>--%>
                    <%--</div>--%>
                    <%--<div class="item">--%>
                        <%--<p class="produce_sub_title">--%>
                            <%--<span class="produce_sub_desc alone_one"> GP：广和投资有限公司  1.5%</span>--%>
                        <%--</p>--%>
                    <%--</div>--%>


                <div class="produce_title_wrapp">
                    <div class="product_title_lump"></div>
                    <p class="product_title">产品优势</p>
                </div>
                <div id="advantageCent">


                </div>
                <%--<div class="item advantage">--%>
                    <%--<div class="advantage_left">--%>
                        <%--<p class="adv_sub_title">一流的专业投资</p>--%>
                    <%--</div>--%>
                    <%--<div class="advantage_right">--%>
                        <%--<p class="adv_double_desc">广和投资团队既有国内资深的行业专家和金融企业的领军人物,也有海外知名的投资人士,融合全球视野和中国本土智慧,拥有--%>
                            <%--丰富的境内外资本市场投资经验。</p>--%>
                    <%--</div>--%>
                <%--</div>--%>

                <%--<div class="item advantage">--%>
                    <%--<div class="advantage_left">--%>
                        <%--<p class="adv_sub_title">严谨的风控流程</p>--%>
                    <%--</div>--%>
                    <%--<div class="advantage_right">--%>
                        <%--<p class="adv_double_desc alone">广和投资从项目选择、投资决策、投资前期及投资后运行全过程的风险管控力求以最大程度降低风睑发生概率。</p>--%>
                    <%--</div>--%>

                <%--</div>--%>
                <%--<div class="item advantage">--%>

                    <%--<div class="advantage_left">--%>
                        <%--<p class="adv_sub_title">庞大的企业资源</p>--%>
                    <%--</div>--%>
                    <%--<div class="advantage_right">--%>
                        <%--<p class="adv_double_desc">广和投资独有的市场投资决策，丰富的企业信息资源，确保了所投资企业始终处于细分市场的龙头地位，从而保证了其在项--%>
                            <%--目选择方面的领先优势。</p>--%>
                    <%--</div>--%>

                <%--</div>--%>

                <div class="produce_title_wrapp">
                    <div class="product_title_lump"></div>
                    <p class="product_title">历史产品及兑付情况</p>
                </div>
                <table id="productCent">

                    <tr>
                        <th>所管理私募基金名称</th>
                        <th>投资方向与收益情况</th>
                        <th>基金规模</th>
                    </tr>

                    <%--<tr>--%>
                        <%--<td>北京广和黄柏塬旅游产业基金</td>--%>
                        <%--<td>陕西黄柏塬旅游养老项目基金收益      13%</td>--%>
                        <%--<td>3000万元</td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                        <%--<td>广和旅游产业基金</td>--%>
                        <%--<td>证券市场                                          10%</td>--%>
                        <%--<td>3000万元</td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                        <%--<td>广和盈证证券投资系列基金</td>--%>
                        <%--<td>票据收益权类                                   10%</td>--%>
                        <%--<td>13000万元</td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                        <%--<td>广和鸿丰票据收益权基金</td>--%>
                        <%--<td>影视项目收益权                                12%</td>--%>
                        <%--<td>3000万元</td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                        <%--<td>天河盛宴影视投资基金</td>--%>
                        <%--<td>影视项目收益权                                12%</td>--%>
                        <%--<td>3000万元</td>--%>
                    <%--</tr>--%>
                </table>
                <div class="produce_title_wrapp">
                    <div class="product_title_lump"></div>
                    <p class="product_title">采集产品</p>
                </div>
                <table id="productCent1">

                    <%--<tr>--%>
                        <%--<th>海南旅游产业投资基金</th>--%>
                        <%--<th>中盐榆林盐化有限公司股权投资基金</th>--%>
                        <%--<th>北斗星共享经济独角兽私募投资基金</th>--%>
                    <%--</tr>--%>

                    <%--<tr>--%>
                        <%--<td>滴滴股权投资基金</td>--%>
                        <%--<td>恒丰-金股一号股票质押基金</td>--%>
                        <%--<td>恒泰12号信托计划</td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                        <%--<td>新时代-慧金964（银行股权质押）</td>--%>
                        <%--<td>新时代-鑫业1813号（金融股权质押）</td>--%>
                        <%--<td>3000万元</td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                        <%--<td>广和盈证证券投资系列基金</td>--%>
                        <%--<td>票据收益权类                                   10%</td>--%>
                        <%--<td>13000万元</td>--%>
                    <%--</tr>--%>

                </table>


            </div>

        </div>
    </section>

    <jsp:include page="../footer/footer.jsp"></jsp:include>
</body>
<script src="/static/js/mainJs/jquery.min.js"></script>
<script>

    function getParam(paramName) {
        paramValue = "", isFound = !1;
        if (this.location.search.indexOf("?") == 0 && this.location.search.indexOf("=") > 1) {
            arrSource = unescape(this.location.search).substring(1, this.location.search.length).split("&"), i = 0;
            while (i < arrSource.length && !isFound) arrSource[i].indexOf("=") > 0 && arrSource[i].split("=")[0].toLowerCase() == paramName.toLowerCase() && (paramValue = arrSource[i].split("=")[1], isFound = !0), i++
        }
        return paramValue == "" && (paramValue = null), paramValue
    }

    var privateInvestmentId =  getParam("id");


    function initPage(){
        $.getJSON("/privateInvestment/detail?id="+privateInvestmentId ,function(rs) {
            $("#fundName").html(rs.data.fundName);

            var productScaleStart = rs.data.productScaleStart+"";
            var productScaleEnd = rs.data.productScaleEnd+"";
            var productScaleStartt = "";
            if(productScaleStart.length > 8){
                productScaleStartt = "亿元";
                productScaleStart = productScaleStart.substring(0,productScaleStart.length-8)+"";
                productScaleEnd = productScaleEnd.substring(0,productScaleEnd.length-8)+"";
            }else if(productScaleStart.length <= 8 && productScaleStart.length > 4){
                productScaleStart = productScaleStart.substring(0,productScaleStart.length-4)+"";
                productScaleEnd = productScaleEnd.substring(0,productScaleEnd.length-4)+"";
                productScaleStartt = "万元";
            }else{
                productScaleStart = rs.data.productScaleStart+"";
                productScaleEnd = rs.data.productScaleEnd+"";
                productScaleStartt = "元";
            }


            $("#productScaleStart").html(productScaleStart + "-" + productScaleEnd);
            $("#productScaleStartTxt").html('产品规模('+ productScaleStartt +')');
            $("#fundType").html(rs.data.fundType);


            var amountOfInvestment = rs.data.amountOfInvestment + "";
            var amountOfInvestmentt = "";
            if(amountOfInvestment.length > 8){
                amountOfInvestment = amountOfInvestment.substring(0,amountOfInvestment.length-8)+"";
                amountOfInvestmentt = '亿元';
            }else if(amountOfInvestment.length <= 8 && amountOfInvestment.length > 4){
                amountOfInvestment = amountOfInvestment.substring(0,amountOfInvestment.length-4)+"";
                amountOfInvestmentt = '万元';
            }else{
                amountOfInvestment = rs.data.amountOfInvestment+"";
                amountOfInvestmentt = '元';
            }
            $("#amountOfInvestment").html(amountOfInvestment);
            $("#amountOfInvestmentt").html(amountOfInvestmentt);

            $("#amountOfInvestment1").val(amountOfInvestment) ;
            $("#amountOfInvestmentTxt1").html(amountOfInvestmentt);

            $("#amountOfInvestmentTxt").html('起投金额('+ amountOfInvestmentt +')');
            $("#amountOfInvestment2").html('起投金额 ' + amountOfInvestment+amountOfInvestmentt);


            var increasingAmount = rs.data.increasingAmount + "";
            var increasingAmountt = "";
            if(increasingAmount.length > 8){
                increasingAmount = increasingAmount.substring(0,increasingAmount.length-8)+"";
                increasingAmountt = '亿元';
            }else if(increasingAmount.length <= 8 && increasingAmount.length > 4){
                increasingAmount = increasingAmount.substring(0,increasingAmount.length-4)+"";
                increasingAmountt = '万元';
            }else{
                increasingAmount = rs.data.increasingAmount+"";
                increasingAmountt = '元';
            }
            //递增金额   10万元
            $("#increasingAmount").html('递增金额 ' + increasingAmount+increasingAmountt);



            $("#fundName1").html(rs.data.fundName);
            $("#fundType1").html(rs.data.fundType);
            $("#operations").html(rs.data.operations);
            $("#fundManager").html(rs.data.fundManager);
            $("#fundCustodian").html(rs.data.fundCustodian);
            $("#productScale").html(rs.data.productScale);
            $("#capitalCost").html(rs.data.capitalCost);




            $("#subscribeStartingPoint").html(rs.data.subscribeStartingPoint);
            $("#product_term").html(rs.data.productTerm);
            $("#fundInvestment").html(rs.data.fundInvestment);
            $("#comparisonDatum").html(rs.data.comparisonDatum);
            $("#performanceReward").html(rs.data.performanceReward);


        });
    }

    function getProductAdvantage(){
        $.getJSON("/productAdvantage/list?privateInvestmentId="+privateInvestmentId ,function(rs) {
            //advantageCent

            var html = '';
            for(var i=0;i<rs.data.data.length;i++){
                html += '<div class="item advantage">'+
                '<div class="advantage_left">'+
                '<p class="adv_sub_title">'+rs.data.data[i].name+'</p>'+
                '</div>'+
                '<div class="advantage_right">'+
                '<p class="adv_double_desc">'+rs.data.data[i].synopsis+'</p>'+
                '</div>'+
                '</div>';
            }
            $("#advantageCent").html(html);
        });
    }


    function getTransactionRecord(){
        $.getJSON("/transactionRecord/list?privateInvestmentId="+privateInvestmentId ,function(rs) {
            //productCent

            var html = '';
            for(var i=0;i<rs.data.data.length;i++){
                html += '<tr>'+
                        '<td>'+rs.data.data[i].name+'</td>'+
                '<td>'+rs.data.data[i].investmentDirection+' '+rs.data.data[i].profit+'</td>'+
                '<td>'+rs.data.data[i].scale+'</td>'+
                '</tr>';
            }
            $("#productCent").append(html);
        });
    }

    function getCollectProduct(){
        $.getJSON("/collectProduct/list?privateInvestmentId="+privateInvestmentId ,function(rs) {
            //productCent1

            var count = 0;
            var html = '';
            for(var i=0;i<rs.data.data.length/3;i++){

                    html += '<tr>';
                for(var j=0;j<3;j++){

                    if(count < rs.data.data.length){
                        html += '<th>'+rs.data.data[count].name+'</th>';
                    }else{
                        html += '<th></th>';
                    }

                    count++;
                }
                    html += '</tr>';
            }
            $("#productCent1").html(html);
        });
    }


    function getRiskManagement(){
        $.getJSON("/riskManagement/list?privateInvestmentId="+privateInvestmentId ,function(rs) {
            var r = rs.data.data,html="";
            for(var i=0;i<r.length;i++){

                if(i == 0){
                    html += '<p><span>产品分层：</span><span>' + r[i].level + '</span><span>' + r[i].synopsis + '</span></p>';
                }else{
                    html += '<p><span>' + r[i].level + '</span><span>' + r[i].synopsis + '</span></p>';
                }
            }

            $("#abcd").append(html);

            //		150px来源:风险控制数据条数*50 ，假设总共有3条数据，50*3=150px，对应执行下列代码
            $("#risk_wrapp").css("height", r.length * 50 +"px");//150px动态获取，每条数据50，如果有4条数据，对应改成200px
            $("#risk").css("line-height",r.length * 50 + "px"); //150px动态获取，每条数据50，如果有4条数据，对应改成200px

        });

    }

    $(function(){
        initPage();
        getProductAdvantage();
        getTransactionRecord();
        getCollectProduct();

        getRiskManagement();
    });
</script>

</html>
