<%--
  Created by IntelliJ IDEA.
  User: Joke
  Date: 2018/5/4
  Time: 16:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>控制页面</title>
    <link href="/assets/css/bootstrap.css" rel="stylesheet" type="text/css">
    <script src="/assets/js/jquery-3.3.1.js"></script>
    <script src="/assets/js/bootstrap.js"></script>
</head>
<body>
<c:if test="${flag == 'false'}">
    <button id="button" class="btn btn-info" onclick="ButtonClick();">启动脚本</button>
</c:if>
<c:if test="${flag == 'true'}">
    <button id="button" class="btn btn-info" onclick="ButtonClick();">停止脚本</button>
</c:if>

</body>

<script>
    $(document).ready(function () {

    });

    function ButtonClick() {
        $.ajax({
            url: "/admin/setStop",    //请求的url地址
            type: "GET",   //请求方式
            dataType:"json",
            success:function (data) {
                var object = eval("(" + data + ")");
                if(object.flag == false){
                   $("#button").text("停止脚本");
                }else {
                    $("#button").text("启动脚本");
                }
            }
        });
    }
</script>
</html>
