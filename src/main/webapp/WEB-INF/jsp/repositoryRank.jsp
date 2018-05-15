<%--
  Created by IntelliJ IDEA.
  User: Joke
  Date: 2018/5/5
  Time: 15:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>项目排行榜</title>
    <link rel="stylesheet" href="/assets/css/bootstrap.min.css">
    <link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="http://www.bootcdn.cn/assets/css/site.min.css?1521768396907" rel="stylesheet">
</head>
<body>
<%--引入导航栏--%>
<div id="head">
    <%@ include file="head.jsp" %>
</div>
<div id="bodyy" class="packages-list-container" style="margin-top: 80px">
    <div class="container">
        <div style="margin-top: 30px"><p style="text-align: center;font-size: 20px">项目排行榜</p></div>
        <div class="list-group packages" id="common-packages">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>项目名</th>
                        <th>star</th>
                        <th>主要语言</th>
                        <th>创建时间</th>
                        <th>更新时间</th>
                        <th>开发者</th>
                    </tr>
                </thead>
                <tbody id="body" class="table-body"></tbody>
            </table>
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
<div id="footer" class="footer hidden-print navbar-fixed-bottom">
    <div class="copy-right"><span>&copy; 2013-2018</span> <a
            href="http://www.miibeian.gov.cn/" target=_blank>京ICP备11008151号</a> <span>京公网安备11010802014853</span></div>
</div>
<script src="/assets/js/jquery-1.11.3.min.js"></script>
<script src="/assets/js/bootstrap.min.js"></script>
<script src="/assets/js/pagination.js"></script>
<script>
    $(document).ready(function () {
        init(1);
    });

    function init(page) {
        $.ajax({
            url:'<%=base%>getRepositoryRankData?page=' + page,
            dataType:"json",
            type:"GET",
            async:true,
            success:function (data) {
                var object = eval("(" + data + ")");
//                $('#total').html(object.total);
                $('#pageText').html("当前是第 " + object.pageNum + " 页,共 " + object.size + " 条数据,总共 " + object.pages + " 页,总共 " + object.total + " 条数据");
                pagination(object,'pagination');
                var html = "";
                for (var i in object.list) {
                    html += "<tr><td>"+(parseInt(i)+1+(parseInt(page)-1)*10)+"</td>" +
                        "<td><a href='https://github.com/"+isEmpty(object.list[i].fullName)+"' target='_blank'>"+isEmpty(object.list[i].name)+"</a></td>" +
                        "<td>"+isEmpty(object.list[i].starCount)+"</td>" +
                        "<td>"+isEmpty(object.list[i].language)+"</td>" +
                        "<td>"+timestampToTime(object.list[i].createdAt)+"</td>" +
                        "<td>"+timestampToTime(object.list[i].updatedAt)+"</td>"+
                        "<td>"+isEmpty(object.list[i].developerlogin)+"</td></tr>";
                }
                $('#body').html(html);
            }
        });
    }

    function isEmpty(string) {
        if(string == "" || string == null || string == undefined){ // "",null,undefined
            return "-";
        }else return string;
    }

    function timestampToTime(timestamp) {
        var date = new Date(timestamp);//如果date为13位不需要乘1000
        var Y = date.getFullYear() + '-';
        var M = (date.getMonth()+1 < 10 ? '0'+(date.getMonth()+1) : date.getMonth()+1) + '-';
        var D = (date.getDate() < 10 ? '0' + (date.getDate()) : date.getDate()) + ' ';
        var h = (date.getHours() < 10 ? '0' + date.getHours() : date.getHours()) + ':';
        var m = (date.getMinutes() <10 ? '0' + date.getMinutes() : date.getMinutes()) + ':';
        var s = (date.getSeconds() <10 ? '0' + date.getSeconds() : date.getSeconds());
        return Y+M+D+h+m+s;
    }

    /**
     * 封装的分页插件
     * @param object  返回的json数据
     * @param text    搜索的关键字
     * @param p       添加分页位置的页面标签
     */
    function pagination(object,p) {
        var pagination = "";
        if(object.total > 0){
            pagination = "<li><a href='javascript:void(0);' onclick=\"init(" + 1 + ")\" aria-label=\"Previous\"><span aria-hidden=\"true\">首页</span></a></li>";
        }
        if (object.hasPreviousPage) {
            pagination += "<li><a href='javascript:void(0);' onclick=\"init(" + object.prePage + ")\" aria-label=\"Previous\"><span aria-hidden=\"true\">上一页</span></a></li>";
        }
        if(object.pages > 5){
            if(object.pageNum>3){
                if(object.pageNum <= (object.pages-2)){
                    pagination += "<li><a>...</a></li>";
                    for(var j = (object.pageNum-2);j<=(object.pageNum+2);j++) {
                        if(j === object.pageNum) {
                            pagination += "<li class='active'><a>" + j + "</a></li>";
                        }
                        else{
                            pagination += "<li><a href='javascript:void(0);' onclick=\"init(" + j + ")\">" + j + "</a></li>";
                        }
                    }
                    if(object.pageNum < (object.pages-2)) {
                        pagination += "<li><a>...</a></li>";
                    }
                }else{
                    pagination += "<li><a>...</a></li>";
                    for(var j = (object.pages-4);j<=object.pages;j++) {
                        if(j === object.pageNum) {
                            pagination += "<li class='active'><a>" + j + "</a></li>";
                        }
                        else{
                            pagination += "<li><a href='javascript:void(0);' onclick=\"init(" + j + ")\">" + j + "</a></li>";
                        }
                    }
                }

            }else{
                for (var j = 1;j <= 5; j++) {
                    if(j === object.pageNum){
                        pagination += "<li class='active'><a>"+j+"</a></li>";
                    }else{
                        pagination += "<li><a href='javascript:void(0);' onclick=\"init("+j+")\">"+j+"</a></li>";
                    }
                }
                pagination += "<li><a>...</a></li>";
            }
        }
        else {
            for (var j = 1;j <= object.pages; j++) {
                if(j === object.pageNum){
                    pagination += "<li class='active'><a>"+j+"</a></li>";
                }else{
                    pagination += "<li><a href='javascript:void(0);' onclick=\"init("+j+")\">"+j+"</a></li>";
                }
            }
        }
        if(object.hasNextPage) {
            pagination += "<li><a href='javascript:void(0);' onclick=\"init(" + object.nextPage + ")\" aria-label=\"Next\"><span aria-hidden=\"true\">下一页</span></a></li>";
        }
        if(object.total > 0) {
            pagination += "<li><a href='javascript:void(0);' onclick=\"init(" + object.pages + ")\" aria-label=\"Previous\"><span aria-hidden=\"true\">末页</span></a></li>";
        }
        $('#'+p).html(pagination);
    }

</script>
</body>
</html>
