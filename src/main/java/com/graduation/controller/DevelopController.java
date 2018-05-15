package com.graduation.controller;

import com.alibaba.fastjson.JSONObject;
import com.graduation.model.Developer;
import com.graduation.service.DeveloperService;
import com.graduation.util.JSONParse;
import com.graduation.util.URLBuilder;
import com.graduation.util.URLRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
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
        String url = URLBuilder.urlSearchDeveBuilder(param);
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
    @RequestMapping(value = "/test",method= RequestMethod.GET)
    public void test() {
        List<Developer> developerList = new ArrayList<>();
        Developer developer = new Developer();
        Long id = new Long(30733);
        developer.setId(id);
        developerList.add(developer);
        int count = developerService.updateDeveloperByListPO(developerList);
        System.out.println("test:"+count);
    }
}
