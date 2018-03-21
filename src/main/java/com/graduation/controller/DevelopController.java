package com.graduation.controller;

import com.alibaba.fastjson.JSONObject;
import com.graduation.model.Developer;
import com.graduation.service.DeveloperService;
import com.graduation.util.HttpRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
@RequestMapping(value = "/developer",method= RequestMethod.GET)
public class DevelopController {

    @Autowired
    private DeveloperService developerService;
    @RequestMapping("/index")
    public String index(){
        return "/index";
    }

    @RequestMapping(value = "/add/{login}",method= RequestMethod.GET)
    public void developerAdd(@PathVariable("login")String login){
        String url = "https://api.github.com/users/" + login;
        String param = "";
        //获取网页返回的字符串
        String str = HttpRequest.sendGet(url,param);
        //字符串转json
        List<JSONObject> list = HttpRequest.stringToJson(str);
        List<Developer> developerList = HttpRequest.listJSONObjectToListDeveloper(list);
        int count = developerService.addDeveloper(developerList);
        System.out.println("成功添加"+count+"条数据。");
 }
}
