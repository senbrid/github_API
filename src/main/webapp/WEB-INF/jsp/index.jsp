<%--
  Created by IntelliJ IDEA.
  User: 93587
  Date: 2018/3/26
  Time: 16:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang=zh-CN>
<head>
    <meta charset=utf-8>
    <meta http-equiv=X-UA-Compatible content="IE=edge">
    <meta name=viewport content="width=device-width,initial-scale=1">
    <title>我的Github - 开源项目免费服务</title>
    <meta name=description
          content="Bootstrap 中文网开源项目免费 CDN 加速服务 - 我们致力于为 Bootstrap、jQuery、Angular、Vue.js 一样优秀的开源项目提供稳定、快速、免费的 CDN 加速服务。BootCDN 是运营时间最长、用户量最大、最早同时支持 HTTPS（SSL）和 HTTP/2.0 协议的中立免费 CDN 。">
    <meta name=keywords content="">
    <meta name=author content=Bootstrap中文网>
    <meta name=founder content=王赛>
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
    <script type="text/javascript">
        var build = 1521768396907;
    </script>
    <script type="text/javascript">
        var _hmt = _hmt || [];
        (function () {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?24aff315392dc2c9b2805cfa4d8e101a";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>
</head>
<body class="home-template">
<jsp:include page="head.jsp"></jsp:include>
<div class="packages-list-container" id="all-packages" style="margin-top: 100px">
    <div class="container">
        <div><p style="color: gray">为您找到相关结果约<a style="color: red">18,500,000</a>个</p></div>
        <div class="list-group packages" id="common-packages">
            <div id="body"></div>
            <a href="" class="package list-group-item all-packages" target=_blank
               onclick="_hmt.push(['_trackEvent', 'packages', 'click', 'all'])">所有开源项目列表</a></div>
        <div class="list-group packages" id=search-results style="display: none"></div>
    </div>
</div>
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

<script type="text/javascript">
    $(document).ready(function(){
        query();
    });

    function query() {
        $.ajax({
            url: "/view/queryData",    //请求的url地址
            dataType: "json",   //返回格式为json
            async: true, //请求是否异步，默认为异步，这也是ajax重要特性
            data: "",    //参数值
            type: "GET",   //请求方式
            success: function (data) {
                var object = eval("(" + data + ")");
                var html = "";
                for (var i in object) {
                    html += "<a href=\"\" class=\"package list-group-item\" target=_blank onclick=\"\">" +
                        "<div class=\"row\"><div class=\"col-md-3\"><h4 class=package-name>" +
                        object[i].name + "</h4></div><div class=\"col-md-9 hidden-xs\"><p class=\"package-description\">" +
                        object[i].description + "</p></div><div class=\"package-extra-info col-md-9 col-md-offset-3 col-xs-12\"><span><i class=\"fa fa-star\"></i> " +
                        object[i].starCount + "</span></div></div></a>";
                }
                $('#body').html(html);
            }
        });
    }
</script>
</body>
</html>

