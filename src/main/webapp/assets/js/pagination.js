/**
 * 封装的分页插件
 * @param object  返回的json数据
 * @param text    搜索的关键字
 * @param p       添加分页位置的页面标签
 */
function pagination(object,text,p) {
    var pagination = "";
    if(object.total > 0){
        pagination = "<li><a href='javascript:void(0);' onclick=\"query(" + 1 + "," + "\'" + text + "')\" aria-label=\"Previous\"><span aria-hidden=\"true\">首页</span></a></li>";
    }
    if (object.hasPreviousPage) {
        pagination += "<li><a href='javascript:void(0);' onclick=\"query(" + object.prePage + "," + "\'" + text + "')\" aria-label=\"Previous\"><span aria-hidden=\"true\">上一页</span></a></li>";
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
                        pagination += "<li><a href='javascript:void(0);' onclick=\"query(" + j + "," + "\'" + text + "')\">" + j + "</a></li>";
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
                        pagination += "<li><a href='javascript:void(0);' onclick=\"query(" + j + "," + "\'" + text + "')\">" + j + "</a></li>";
                    }
                }
            }

        }else{
            for (var j = 1;j <= 5; j++) {
                if(j === object.pageNum){
                    pagination += "<li class='active'><a>"+j+"</a></li>";
                }else{
                    pagination += "<li><a href='javascript:void(0);' onclick=\"query("+j+","+"\'"+text+"')\">"+j+"</a></li>";
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
                pagination += "<li><a href='javascript:void(0);' onclick=\"query("+j+","+"\'"+text+"')\">"+j+"</a></li>";
            }
        }
    }
    if(object.hasNextPage) {
        pagination += "<li><a href='javascript:void(0);' onclick=\"query(" + object.nextPage + "," + "\'" + text + "')\" aria-label=\"Next\"><span aria-hidden=\"true\">下一页</span></a></li>";
    }
    if(object.total > 0) {
        pagination += "<li><a href='javascript:void(0);' onclick=\"query(" + object.pages + "," + "\'" + text + "')\" aria-label=\"Previous\"><span aria-hidden=\"true\">末页</span></a></li>";
    }
    $('#'+p).html(pagination);
}