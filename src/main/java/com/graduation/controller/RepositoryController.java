package com.graduation.controller;

import com.alibaba.fastjson.JSONObject;
import com.graduation.model.Repository;
import com.graduation.service.RepositoryService;
import com.graduation.util.HttpRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
@RequestMapping(value = "/repository",method= RequestMethod.GET)
public class RepositoryController {

    @Autowired
    private RepositoryService repositoryService;

    @RequestMapping("/index")
    public String index(){
        return "/index";
    }

    @RequestMapping(value = "/add/{login}",method= RequestMethod.GET)
    public void addRepository(@PathVariable("login")String login){
        String url = "https://api.github.com/users/" + login + "/repos";
        String param = "";
        //获取网页返回的字符串
        String str = HttpRequest.sendGet(url,param);
        //字符串转json
        List<JSONObject> list = HttpRequest.stringToJson(str);
        List<Repository> repositoryList = HttpRequest.listJSONObjectToListRepository(list);
        int count = repositoryService.addRepository(repositoryList);
        System.out.println("成功添加"+count+"条数据。");
    }
}
