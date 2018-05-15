<%--
  Created by IntelliJ IDEA.
  User: Joke
  Date: 2018/3/31
  Time: 15:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String base = request.getContextPath();
%>
<html>
<head>
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top" style="background-color: #27ae60;height: 70px">
    <div class="container" style="width: 62%;margin-top: 10px">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="<%=base%>" style="color: white;font-size: 30px"><b>GitHubHOME</b></a>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="<%=base%>/view/total" style="color: white">统计</a></li>
            <li><a href="<%=base%>/view/developerRank" style="color: white">开发者排行榜</a></li>
            <li><a href="<%=base%>/view/repositoryRank" style="color: white">项目排行榜</a></li>
            <li><a href="<%=base%>/" style="color: white">关于</a></li>
        </ul>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <form class="navbar-form navbar-left" style="margin-left: 200px" action="<%=base%>/view/index" method="get" id="qq">
                <div class="form-group">
                    <input type="text" style="width: 300px" class="form-control" placeholder="请输入关键词" id="text" name="q" autocomplete="on" autofocus tabindex="0" spellcheck="false">
                </div>
                <button type="button" class="btn btn-default" id="search">搜索</button>
            </form>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<script>
    $('#text').keydown(function (e) {
        if (e.keyCode == 13) {
            var q = $("#text").val();
            if(q == null || q == ""){
                alert("请输入关键字查询");
            }else{
                $("#qq").submit();
            }
        }
    });
    $('#search').click(function () {
        var q = $('#text').val();
        if(q == null || q == ""){
            alert("请输入关键字查询");
        }else{
            window.location.href = "<%=base%>/view/index?q=" + q;
        }
    });
</script>
</body>
</html>
