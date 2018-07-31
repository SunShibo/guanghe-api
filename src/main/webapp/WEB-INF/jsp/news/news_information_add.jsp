<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<head>
    <meta charset="utf-8" />
    <title>活动资讯添加</title>
    <link rel="shortcut icon" href="/static/images/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" type="text/css" href="/static/css/main.css"/>
    <script type="text/javascript" src="/static/js/mainJs/jquery.min.js"></script>
    <script charset="utf-8" src="/static/js/kindeditor/kindeditor-all-min.js"></script>
    <script charset="utf-8" src="/static/js/kindeditor/zh_CN.js"></script>
    <script type="text/javascript" src="/static/js/common/ajaxupload.js"></script>
</head>
<body>
    <div class="index clear">
        <%--<jsp:include page="../main.jsp"></jsp:include>--%>
            <div class="indexRight1">
                <div class="title">活动资讯 > 活动资讯编辑</div>
                <div class="tablebox2">
                    <form id="activityMessageForm" method="post">
                        <table cellpadding="0" cellspacing="0" border="0">
                            <tr>
                                <td class="td1">标&nbsp;&nbsp;题：</td>
                                <td class="td2">
                                    <input type="text" name="title"><em>*必填</em>
                                </td>
                            </tr>
                            <tr>
                                <td class="td1">简&nbsp;&nbsp;介：</td>
                                <td class="td2">
                                    <textarea name="introduce" rows="5" cols="70"></textarea><em>*必填</em>
                                </td>
                            </tr>
                            <tr>
                                <td>缩略图：</td>
                                <td>
                                    <div class="suolue">
                                        <div class="uploadimg">
                                            <img width="160px;" height="160px;" id="uploadImage" src="../static/img/u37.png"/>
                                            <input type="hidden" name="thumbnails" value="${activityMessage.thumbnails}"><br/>
                                        </div>
                                        <div class="zi">
                                            <span style="color:#FF0000;">*必填</span>
                                            <p class="del" id="B_delete_thumbnails">删除</p>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>内&nbsp;&nbsp;容：</td>
                                <td>
                                    <div class="edit">
                                        <textarea name="messageContent"></textarea>
                                        <input type="hidden" name="content"/>
                                    </div>
                                    <em>*必填</em>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <a href="javascript:void(0);" id="B_submit">发布</a>
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
<script>

//    var editor;
//    $(function (){
//        // 添加菜单样式
//        $("div[id^='menu_']").removeClass("on");
//        $("div[id='menu_message']").addClass("on");
//
//        KindEditor.ready(function(K) {
//            editor = K.create('textarea[name="messageContent"]', {
//                allowFileManager : true,
//                items : [
//                    'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',
//                    'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist',
//                    'insertunorderedlist', '|', 'emoticons', 'image', 'media', 'link','code','source',
//                    'fullscreen'],
////                uploadJson : '/static/js/kindeditor/kd_upload_image.jsp',
//                allowFileManager : true,
////                fileManagerJson : '/static/js/kindeditor/kd_upload_file.jsp'
//            });
//        });
//
//        // 上传缩略图
//        uploadThumbnails();
//        $("#B_delete_thumbnails").click(deleteThumbnails);
//        $("#B_submit").click(addActivityMessage);
//    })

    //简单模式初始化
    var editor;
    KindEditor.ready(function(K) {
        editor = K.create('textarea[name="messageContent"]', {
//            resizeType : 1,
//            allowPreviewEmoticons : false,
            allowFileManager : true,
            items : [
                'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',
                'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist',
                'insertunorderedlist', '|', 'emoticons', 'image', 'media', 'link','code','source',
                'fullscreen'],
            uploadJson : '/static/js/kindeditor/kd_upload_image.jsp',
            allowFileManager : true,
            fileManagerJson : '/static/js/kindeditor/kd_upload_file.jsp'
        });

        // 上传缩略图
        uploadThumbnails();
        $("#B_delete_thumbnails").click(deleteThumbnails);
        $("#B_submit").click(addActivityMessage);
    });

    function deleteThumbnails(){
        $("#uploadImage").attr("src", "");
        $("input[name='thumbnails']").val("");
    }

    function deleteDetailImage(){
        $("#uploadDetailImage").attr("src", "");
        $("input[name='detailImage']").val("");
    }

    function addActivityMessage(){
        var title = $("input[name='title']").val();
        if(title == ""){
            alert("标题不能为空");
            return ;
        }
        var introduce = $("textarea[name='introduce']").val();
        if(introduce == ""){
            alert("简介不能为空");
            return ;
        }
        if(editor.html() == ""){
            alert("活动资讯内容不能为空");
            return ;
        }
        $("input[name='content']").val(editor.html());
        $.ajax({
            type : "post",
            url : "add",
            data : $("#activityMessageForm").serialize(),
            dataType : "json",
            success: function(result, status) {
                if(result.errCode == "0"){
                    alert(result.errMsg);
                    return ;
                }else {
                    alert("添加活动资讯信息成功");
                    window.location.href = "list";
                }
            }
        })
    }

    function uploadDetailImage(){
        var button = $("#uploadDetailImage"), interval;
        new AjaxUpload(button, {
            action: "uploadThumbnails",
            type:"post",
            name: 'myFile',
            responseType : 'json',
            onSubmit: function(file, ext) {
                if (!(ext && /^(jpg|JPG|png|PNG|gif|GIF)$/.test(ext))) {
                    alert("您上传的图片格式不对，请重新选择！");
                    return false;
                }
            },
            onComplete: function(file, response) {
                if(response.message == "big"){
                    alert("图片太大，请重新选择！");
                    return ;
                }else if(response.message == "paramError"){
                    alert("参数有误！");
                    return ;
                }else if(response.message == "fail"){
                    alert("修改失败，请重新修改！");
                    return ;
                }else if(response.message == "success"){
                    var resultData = response.data;
                    $("#uploadDetailImage").attr("src", resultData.baseUrl + resultData.thumbnailsUrl);
                    $("input[name='detailImage']").val(resultData.thumbnailsUrl);
                }
            }
        });
    }

    function uploadThumbnails(){
        var button = $("#uploadImage"), interval;
        new AjaxUpload(button, {
            action: "uploadThumbnails",
            type:"post",
            name: 'myFile',
            responseType : 'json',
            onSubmit: function(file, ext) {
                if (!(ext && /^(jpg|JPG|png|PNG|gif|GIF)$/.test(ext))) {
                    alert("您上传的图片格式不对，请重新选择！");
                    return false;
                }
            },
            onComplete: function(file, response) {
                if(response.message == "big"){
                    alert("图片太大，请重新选择！");
                    return ;
                }else if(response.message == "paramError"){
                    alert("参数有误！");
                    return ;
                }else if(response.message == "fail"){
                    alert("修改失败，请重新修改！");
                    return ;
                }else if(response.message == "success"){
                    var resultData = response.data;
                    $("#uploadImage").attr("src", resultData.baseUrl + resultData.thumbnailsUrl);
                    $("input[name='thumbnails']").val(resultData.thumbnailsUrl);
                }
            }
        });
    }
</script>