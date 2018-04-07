<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String base = request.getContextPath();
    System.out.println(base);
%>
<!DOCTYPE html>
<html lang=zh-CN>
<head>
    <meta charset=utf-8>
    <meta http-equiv=X-UA-Compatible content="IE=edge">
    <meta name=viewport content="width=device-width,initial-scale=1">
    <title>我的Github - 开源项目免费服务</title>
    <meta name=descriptioncontent="">
    <link href=https://cdn.bootcss.com rel=dns-prefetch>
    <link href=https://api.bootcdn.cn rel=dns-prefetch>
    <link href=https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css rel=stylesheet>
    <link href=https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css rel=stylesheet>
    <link href="http://www.bootcdn.cn/assets/css/site.min.css?1521768396907" rel=stylesheet>
    <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]--><!--[if IE 9]>
    <script src="https://cdn.bootcss.com/geopattern/1.2.3/js/base64.min.js"></script>
    <script src="https://cdn.bootcss.com/geopattern/1.2.3/js/typedarray.min.js"></script>
    <![endif]-->
    <link rel=apple-touch-icon-precomposed sizes=144x144
          href="http://www.bootcdn.cn/assets/ico/apple-touch-icon-144-precomposed.png?1521768396907">
    <link rel="shortcut icon" href="http://www.bootcdn.cn/assets/ico/favicon.ico?1521768396907">
    <script>
        var build = 1521768396907;
    </script>
    <script>
        var _hmt = _hmt || [];
        (function () {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?24aff315392dc2c9b2805cfa4d8e101a";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>
</head>
<body class=home-template>
<header class="site-header">
    <nav class="navbar navbar-static-top main-navbar" id=top>
        <div class=container>
            <div class=navbar-header>
                <button class="navbar-toggle collapsed" type=button data-toggle=collapse data-target=#bs-navbar
                        aria-controls=bs-navbar aria-expanded=false>
                    <span class=sr-only>Toggle navigation</span>
                    <span class=icon-bar></span>
                    <span class=icon-bar></span>
                    <span class=icon-bar></span>
                </button>
                <a href="" class="navbar-brand lead" style="font-size: 30px;margin-left: auto"><b>GitHubHOME</b></a>
            </div>
            <nav id=bs-navbar class="collapse navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="" onclick="_hmt.push(['_trackEvent', 'main-navbar', 'click', 'api'])"
                           target=_blank>API</a></li>
                    <li><a href="" onclick="_hmt.push(['_trackEvent', 'main-navbar', 'click','blog'])"
                           target=_blank>排行榜</a></li>
                    <li><a href=#about onclick="_hmt.push(['_trackEvent', 'main-navbar', 'click', 'about'])">关于</a></li>
                </ul>
            </nav>
        </div>
    </nav>
    <div class="container jumbotron">
        <div class="row">
            <div class="col-xs-12">
                <h1>GitHubHOME<img src="http://www.bootcdn.cn/assets/img/bootcdn.png" alt="BootCDN logo" class=hidden>
                </h1>
                <p>稳定、快速、免费的GitHub开源项目服务<br><span class=package-amount>共收录了 <strong id="count">0</strong> 个热门开源项目</span></p>
                <div class="search-wraper" role="search">
                    <div class=form-group>
                        <%--<input class="form-control search clearable" placeholder="搜索开源库，例如：java"--%>
                        <%--autocomplete=on autofocus tabindex=0 autocorrect=off--%>
                        <%--autocapitalize=off spellcheck=false>--%>
                        <input type="text" class="form-control input-lg clearable" placeholder="搜索开源库，例如：java"
                               style="text-align: center"
                               autocomplete=on autofocus tabindex=0 spellcheck=false>
                        <i class="fa fa-search"></i></div>
                </div>
            </div>
        </div>
    </div>
</header>
<main class=packages-list-container id=all-packages>
    <div class=container>
        <div class="list-group packages" id="common-packages">
            <div id="body">
                <%--<a href="" class="package list-group-item" target=_blank onclick="">--%>
                <%--<div class="row">--%>
                <%--<div class="col-md-3"><h4 class=package-name>bootstrap</h4></div>--%>
                <%--<div class="col-md-9 hidden-xs"><p class="package-description">Bootstrap--%>
                <%--是全球最受欢迎的前端组件库，用于开发响应式布局、移动设备优先的--%>
                <%--WEB 项目。</p></div>--%>
                <%--<div class="package-extra-info col-md-9 col-md-offset-3 col-xs-12"><span><i class="fa fa-star"></i> 122947</span>--%>
                <%--</div>--%>
                <%--</div>--%>
                <%--</a>--%>
            </div>
            <a href="" class="package list-group-item all-packages" target=_blank
               onclick="_hmt.push(['_trackEvent', 'packages', 'click', 'all'])">所有开源项目列表</a></div>
        <div class="list-group packages" id=search-results style="display: none"></div>
    </div>
</main>
<footer id="footer" class="footer hidden-print">
    <div class=copy-right><span>&copy; 2013-2018</span> <a
            href=http://www.miibeian.gov.cn/ target=_blank>京ICP备11008151号</a> <span>京公网安备11010802014853</span></div>
</footer>
<a href=# id=back-to-top><i class="fa fa-angle-up"></i></a>

<script src=https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js></script>
<script src=https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js></script>
<script src=https://cdn.bootcss.com/geopattern/1.2.3/js/geopattern.min.js></script>
<script src=https://cdn.bootcss.com/clipboard.js/1.5.16/clipboard.min.js></script>
<script src=https://cdn.bootcss.com/localforage/1.4.2/localforage.min.js></script>
<script src=https://cdn.bootcss.com/lodash.js/4.17.4/lodash.min.js></script>
<script src="http://www.bootcdn.cn/assets/js/site.min.js?1521768396907"></script>

<script>
    $(document).ready(function(){
        queryTotalRepos();
        query();
    });

//    加载收录总项目条数
    function queryTotalRepos() {
        $.ajax({
            url: "<%=base%>/repository/queryTotalRepos",    //请求的url地址
            dataType: "json",   //返回格式为json
            async: true, //请求是否异步，默认为异步，这也是ajax重要特性
            data: "",    //参数值
            type: "GET",   //请求方式
            success: function (data) {
                $('#count').html(data);
            }
        });
    }

    function query() {
        $.ajax({
            url: "<%=base%>/view/queryData",    //请求的url地址
            dataType: "json",   //返回格式为json
            async: true, //请求是否异步，默认为异步，这也是ajax重要特性
            data: {"page":page,"text":text},    //参数值
            type: "GET",   //请求方式
            success: function (data) {
                var object = eval("(" + data + ")");
                var html = "";
                for (var i in object.list) {
                    html += "<div class=\"package list-group-item\">"+
                        "<div class=\"row\"><div class=\"col-md-1\">"+
                        "<a href=\"#\" class=\"package-name\" style=\"float:right\">"+
                        "<img class=\"media-object\" src=\"https://avatars1.githubusercontent.com/u/21178421?s=64&v=4\" style=\"height: 32px;width: 32px\" alt=\"用户头像\">"+
                        "</a></div><div class=\"col-md-9 hidden-xs\">"+
                        "<a class=\"package-name\" href=\"#\"><b>"+ object.list[i].fullName +
                        "</b></a><br/><p class=\"package-description\">"+ object.list[i].description +
                        "</p></div>" +
                        "<div class=\"col-md-1\"><button class=\"btn btn-default\" type=\"submit\">Download</button></div>" +
                        "</div><div class=\"package-extra-info col-md-12 col-md-offset-1 col-xs-12\">"+
                        "<span><i class=\"fa fa-star\">"+ object.list[i].starCount +"</i></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+
                        "<span><i class=\"fa fa-star\">"+ object.list[i].starCount +"</i></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+
                        "<span><i class=\"fa fa-star\">"+ object.list[i].starCount +"</i></span></div></div>";

                }
                $('#body').html(html);
            }
        });
    }
</script>

</body>
</html>
