<%--
  Created by IntelliJ IDEA.
  User: 王彬
  Date: 2019/12/16
  Time: 17:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<script src="/static/js/jquery-2.2.0.min.js"></script>
<script>
    $(function(){
        alert("打印")
        $.ajax({
            type : "post",
            url : "/alipay",
            data : {},
            dataType : "json",
            success : function (data){
                if(data.success == false){
                    alert(data.errMsg);
                    return;
                }else{
                    $('#hello').html(date);
                }
            }
        });
    });

</script>
<body>

</body>
</html>
