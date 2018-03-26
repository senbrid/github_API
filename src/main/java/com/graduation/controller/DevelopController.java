package com.graduation.controller;

import com.alibaba.fastjson.JSONObject;
import com.graduation.model.Developer;
import com.graduation.service.DeveloperService;
import com.graduation.util.JSONParse;
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
     * @param login
     */
    @RequestMapping(value = "/add/{login}",method= RequestMethod.GET)
    public void addDeveloper(@PathVariable("login")String login){
        String url = "https://api.github.com/users/" + login;
        String param = "";
        //获取网页返回的字符串
        String str = URLRequest.sendGet(url);
        //字符串转json
        List<JSONObject> list = JSONParse.stringToJson(str);
        List<Developer> developerList = JSONParse.listJSONObjectToListDeveloper(list);
        int count = developerService.addDeveloperByListPO(developerList);
        System.out.println("成功添加"+count+"条数据。");
 }
}
