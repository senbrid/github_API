<%--
  Created by IntelliJ IDEA.
  User: 93587
  Date: 2018/4/12
  Time: 12:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
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
</head>
<body class="home-template">
<%--引入导航栏--%>
<div id="head">
    <%@ include file="head.jsp" %>
</div>
<div id="container">
    <div id="body" class="packages-list-container" style="margin-top: 100px">
        <div class="container">
            <div><p style="color: gray">${repository.fullName} 详情：</p></div>
            <div class="list-group packages" id="common-packages">
                <div class="package list-group-item" style="height: 190px;">
                    <div class="row">
                        <div class="col-md-2">
                            <a href="javascript:void(0);" class="package-name">
                                <img class="media-object" src="${developer.avatarUrl}" style="float:right;height: 100px;width: 100px" alt="用户头像">
                            </a>
                        </div>
                        <div class="col-md-9 hidden-xs">
                            <div class="row">
                                <div class="col-md-6">
                                    <b class="package-name" style="font-size: 20px">${developer.login}</b>
                                    <p style="color: gray">Github主页：<a href="http://github.com/${developer.login}" target="_blank">http://github.com/${developer.login}</a></p>
                                </div>
                                <div class="col-md-6">
                                    <ul class="nav nav-pills" role="tablist">
                                        <li role="presentation"><a href="javascript:void(0);">公开仓库<span class="badge">${developer.publicRepos}</span></a></li>
                                        <li role="presentation"><a href="javascript:void(0);">关注<span class="badge">${developer.following}</span></a></li>
                                        <li role="presentation"><a href="javascript:void(0);">被关注<span class="badge">${developer.followers}</span></a></li>
                                    </ul>
                                </div>
                            </div>
                            <p class="package-description">${developer.bio}</p>
                            <div class="package-extra-info col-md-12 col-xs-12">
                                <p><span class="glyphicon glyphicon-map-marker"/>${developer.company}</p>
                                <p><span class="glyphicon glyphicon-link"/><a href="${developer.blog}" target="_blank">${developer.blog}</a></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="package list-group-item" style="height: 450px">
                    <div class="row">
                        <div class="col-md-3">
                            <b class="package-name" style="float:right;font-size: 25px;color: #28a745">${repository.name}</b>
                            <br>
                        </div>
                        <div class="col-md-2">
                            <ul class="nav nav-pills" role="tablist">
                                <li role="presentation"><a href="#">分支<span class="badge">3</span></a></li>
                            </ul>
                        </div>
                        <div class="col-md-6">
                            <ul class="nav nav-pills" role="tablist" style="float: right">
                                <li role="presentation"><a href="#">Size<span class="badge">${repository.size}</span></a></li>
                                <li role="presentation"><a href="#">star<span class="badge">${repository.starCount}</span></a></li>
                                <li role="presentation"><a href="#">watch<span class="badge">${repository.watchersCount}</span></a></li>
                                <li role="presentation"><a href="#">fork<span class="badge">${repository.forksCount}</span></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 col-md-offset-1">
                            <p style="color: gray">Github仓库主页：<a href="http://github.com/${repository.fullName}" target="_blank">http://github.com/${repository.fullName}</a></p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-9 col-md-offset-1">
                            <br>
                            <p class="package-description">${repository.description}</p>
                        </div>
                        <div class="col-md-1">
                            <a href="https://github.com/${repository.fullName}/archive/master.zip">
                                <button class="btn btn-default">Download</button>
                            </a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-9 col-md-offset-1">
                            <br>
                            <p style="color: gray;font-size: 13px"><span class="glyphicon glyphicon-tags"></span> ${repository.language}</p>
                            <p style="color: gray;font-size: 13px"><span class="glyphicon glyphicon-hourglass"></span> Updated On ${repository.updatedAt}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="footer" class="footer hidden-print navbar-fixed-bottom">
        <div class="copy-right"><span>&copy; 2013-2018</span> <a
                href="http://www.miibeian.gov.cn/" target=_blank>京ICP备11008151号</a> <span>京公网安备11010802014853</span>
        </div>
    </div>
</div>
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script type="text/javascript">

</script>
</body>
</html>
