package com.graduation.controller;

import com.alibaba.fastjson.JSONObject;
import com.graduation.model.Developer;
import com.graduation.service.DeveloperService;
import com.graduation.util.JSONParse;
import com.graduation.util.URLBuilder;
import com.graduation.util.URLRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
@RequestMapping("/developer")
public class DevelopController {

    @Autowired
    private DeveloperService developerService;

    /**
     * 添加用户数据（使用AJAX异步）
     */
    @RequestMapping(value = "/add",method= RequestMethod.GET)
    public void addDeveloper(){
        String param = "joke&sort=flowers&order=desc";
        String url = URLBuilder.urlSearchBuilder(1, param);
        //获取网页返回的字符串
        String str = URLRequest.sendGet(url);
        //字符串转json
        List<JSONObject> list = JSONParse.stringToJson(str);
        //把JSON数据封装到实体类List
        List<Developer> developerList = JSONParse.listJSONObjectToListDeveloperSearch(list);
        System.out.println(developerList.size());
        //批量添加数据接口
        int count = developerService.addDeveloperByListPO(developerList);
        //int count = repositoryService.addRepositoryByListPO(repositoryList);
        System.out.println("成功添加" + count + "条数据。");
 }
}
