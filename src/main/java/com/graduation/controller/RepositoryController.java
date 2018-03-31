package com.graduation.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.graduation.model.Repository;
import com.graduation.service.RepositoryService;
import com.graduation.util.JSONParse;
import com.graduation.util.URLBuilder;
import com.graduation.util.URLRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/repository")
public class RepositoryController {

    @Autowired
    private RepositoryService repositoryService;

    /**
     * 添加仓库项目数据（使用AJAX异步）
     */
    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public void addRepository() throws Exception {
        String param = "language:java&sort=stars&order=desc";
        String url = URLBuilder.urlSearchBuilder(0, param);
        //获取网页返回的字符串
        String str = URLRequest.sendGet(url);
        //字符串转json
        List<JSONObject> list = JSONParse.stringToJson(str);
        //把JSON数据封装到实体类List
        List<Repository> repositoryList = JSONParse.listJSONObjectToListRepositorySearch(list);
        System.out.println(repositoryList.size());
        //批量添加数据接口
        int count = repositoryService.addRepositoryByListPO(repositoryList);
        System.out.println("成功添加" + count + "条数据。");
    }

    /**
     * 查询仓库项目数量（使用AJAX异步）
     */
    @RequestMapping(value = "/queryTotalRepos", method = RequestMethod.GET)
    @ResponseBody
    public String queryRepositoryTotal() throws Exception {
        int count = repositoryService.queryDataTotal(null);
        return JSON.toJSONString(count);
    }

}
