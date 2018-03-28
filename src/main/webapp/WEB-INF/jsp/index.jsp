<%--
  Created by IntelliJ IDEA.
  User: 93587
  Date: 2018/3/26
  Time: 16:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>我是标题</title>
    <script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
欢迎来到我的页面！

<button ONCLICK="isClick()">ajax异步测试一下</button>
<a href="/repository/add">添加仓库test</a>
<a href="/developer/add">添加用户test</a>
<script>
    function isClick() {
        $.ajax({
            //几个参数需要注意一下
            type: "GET",//方法类型
            dataType: "json",//预期服务器返回的数据类型
            url: "/repository/add" ,//url
            data: ""
        });
    }
</script>
</body>
</html>
