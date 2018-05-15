<%--
  Created by IntelliJ IDEA.
  User: 93587
  Date: 2018/3/26
  Time: 16:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String base = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>我的Github - 开源项目免费服务</title>
    <link href="https://cdn.bootcss.com" rel=dns-prefetch>
    <link href="https://api.bootcdn.cn" rel=dns-prefetch>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="http://www.bootcdn.cn/assets/css/site.min.css?1521768396907" rel="stylesheet">
    <link rel="apple-touch-icon-precomposed" sizes="144x144"
          href="http://www.bootcdn.cn/assets/ico/apple-touch-icon-144-precomposed.png?1521768396907">
    <link rel="shortcut icon" href="http://www.bootcdn.cn/assets/ico/favicon.ico?1521768396907">
    <style>
        html,body{
            height: 100%;
            margin: 0;
            padding: 0;
        }
        #container{
            position: relative;
            min-height: 100%;
        }
        #body{
            margin-top: 100px;
            padding-bottom: 101px;
        }
        #footer{
            position: absolute;
            left: 0;
            bottom: 0;
            height: 101px;
        }
    </style>
</head>
<body class="home-template">
<%--引入导航栏--%>
<div id="head">
    <jsp:include page="head.jsp"></jsp:include>
</div>
<div id="container">
    <div id="body" class="packages-list-container">
        <div class="container">
            <div><p style="color: gray">为您找到相关结果约<a style="color: red;text-decoration:none" id="total">0</a>个</p></div>
            <div class="list-group packages" id="common-packages">
                <div id="content"></div>
            </div>
            <div class="pagination" style="float: left"><p style="color: gray"  id="pageText"></p></div>
            <%--分页插件--%>
            <nav aria-label="Page navigation" style="float: right">
                <ul class="pagination" id="pagination"></ul>
            </nav>
            <ul id='bp-element'></ul>
        </div>
        <div class="list-group packages" id=search-results style="display: none"></div>
    </div>
    <div id="foot">
        <jsp:include page="foot.jsp"></jsp:include>
    </div>
    <%--<div id="footer" class="footer hidden-print navbar-fixed-bottom">--%>
        <%--<div class="copy-right"><span>&copy; 2013-2018</span> <a--%>
                <%--href="http://www.miibeian.gov.cn/" target=_blank>京ICP备11008151号</a> <span>京公网安备11010802014853</span></div>--%>
    <%--</div>--%>
</div>
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="/assets/js/pagination.js"></script>

<script type="text/javascript">

    $(document).ready(function(){
        query(1,'${key}');
        $("#text").val('${key}');
    });
    function query(page,text) {
        //以100的速度跳到页面最上端
        $("html,body").animate({scrollTop:0}, 100);
        $.ajax({
            url: "<%=base%>/view/queryData",    //请求的url地址
            dataType: "json",   //返回格式为json
            async: true, //请求是否异步，默认为异步，这也是ajax重要特性
            data: {"page":page,"text":text},    //参数值
            type: "GET",   //请求方式
            success: function (data) {
                var object = eval("(" + data + ")");
                $('#total').html(object.total);
                $('#pageText').html("当前是第 " + object.pageNum + " 页,共 " + object.size + " 条数据,总共 " + object.pages + " 页,总共 " + object.total + " 条数据");
                pagination(object,text,'pagination');
                var html = "";
                for (var i in object.list) {
                    html += "<div class=\"package list-group-item\">"+
                    "<div class=\"row\"><div class=\"col-md-1\">"+
                    "<a href=\"#\" class=\"package-name\" style=\"float:right\">"+
                    "<img class=\"media-object\" src="+ object.list[i].avatarUrl+ '&s=64' +" style=\"height: 32px;width: 32px\" alt=\"用户头像\">"+
                    "</a></div><div class=\"col-md-9 hidden-xs\">"+
                    "<a class=\"package-name\" href='javascript:void(0)' onclick=\"toDetails("+object.list[i].id+")\"><b>"+ object.list[i].fullName +
                    "</b></a><br/><p class=\"package-description\">"+ object.list[i].description +
                    "</p></div>" +
                    "<div class=\"col-md-1\"><a href=\"https://github.com/"+object.list[i].fullName+"/archive/master.zip\"><button class=\"btn btn-default\">Download</button></a></div>" +
                    "<div class=\"package-extra-info col-md-12 col-md-offset-1 col-xs-12\">"+
                    "<span><i class=\"fa fa-star\"></i>&nbsp;&nbsp;<label style='color: orange'>"+ object.list[i].starCount +"</label></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+
                    "<span><i class=\"fa fa-language\"></i>&nbsp;&nbsp;<label style='color: orange'>"+ object.list[i].language +"</label></span></div></div></div>";
                }
                $('#content').html(html);
            }
        });
    }

    function toDetails(id) {
        window.location.href = "<%=base%>/view/reposDetails?id=" + id;
    }
</script>
</body>
</html>

