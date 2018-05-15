<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
String base = request.getContextPath();
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>GitHubHome.cn - 首页</title>
    <link rel="shortcut icon" href="https://githuber.cn/img/favicon.png">
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/layout.css" rel="stylesheet">
    <link href="assets/css/index.css" rel="stylesheet">
    <style>
        #footer{ left:0px; position:fixed; width:100%; height:100px;bottom:0px;text-align: center}
    </style>
</head>
<body>

<nav id="header" class="navbar navbar-inverse">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="<%=base%>">
                <img class="logo-img" src="assets/image/logo.png">
                <span class="logo-txt">.cn</span>
            </a>
        </div>

        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="https://githuber.cn/">首页</a></li>
                <li><a href="https://githuber.cn/stat">统计</a></li>
                <li><a href="https://githuber.cn/rank">星榜</a></li>
                <li><a href="https://githuber.cn/search">搜索</a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>


<div class="jumbotron" style="margin-top: -20px;">
    <div class="container">
        <h1>GitHub开发者</h1>
    </div>
</div>

<div id="body" class="container">
    <div class="row">
        <div class="col-sm-4">
            <h2>统计</h2>
            <p>你用什么编程语言？看看来自GitHub的数据</p>
            <p><a class="btn btn-default" href="https://githuber.cn/stat" role="button">查看 »</a></p>
        </div>
        <div class="col-sm-4">
            <h2>星榜</h2>
            <p>GitHub上的大牛都有谁？让数据告诉你</p>
            <p><a class="btn btn-default" href="https://githuber.cn/rank" role="button">膜拜 »</a></p>
        </div>
        <div class="col-sm-4">
            <h2>搜索</h2>
            <p>众里寻ta不百度——GitHub人才搜索</p>
            <p><a class="btn btn-default" href="https://githuber.cn/search" role="button">搜人 »</a></p>
        </div>
    </div>
</div>

<div id="footer" class="container">
    <div class="row">
        <p class="col-xs-4" style="float: right"><a href="<%=base%>/#" class="pull-right">返回顶部</a></p>
        <p class="col-xs-12 external-links">
            <a href="http://weibo.com/githubercn" target="_blank">官方微博</a> ·
            <a href="http://huiming.io/" target="_blank">晦鸣博客</a> ·
            <a href="https://getfullstack.com/" target="_blank">Web全栈技术指南</a>
        </p>
    </div>
    <div class="row">
        <p class="col-xs-12">© 2018 github.com 沪ICP备15044046号-1</p>
    </div>
</div>


<script src="assets/js/jquery-1.11.3.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/app.js"></script>


</body>
</html>