package com.graduation.controller;

import com.alibaba.fastjson.JSONArray;
import com.graduation.model.Repository;
import com.graduation.service.RepositoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 页面数据显示控制器
 */
@Controller
@RequestMapping("/view")
public class ViewController {

    @Autowired
    RepositoryService repositoryService;

    @RequestMapping(value = "/index",method = RequestMethod.GET)
    public String index() {
        return "index";
    }

    @RequestMapping(value = "/queryData",method = RequestMethod.GET)
    @ResponseBody
    public String queryData() {
//        List<Repository> repositories = repositoryService.queryAllData();
//        System.out.println("size:" + repositories.size());
        String json =  "[{"+"\"name\":\"JSON\""+","+"\"description\":\"我是第一条数据\""+","+"\"star_count\":\"3669\"" + "}"+","+"{"+"\"name\":\"JSON\""+","+"\"description\":\"我是第二条数据\""+","+"\"star_count\":\"9886\"" + "}]";
        System.out.println("json:" + json);
        JSONArray jsonArray = JSONArray.parseArray(json);
        System.out.println("toJSONString:" + jsonArray.toJSONString());
        return jsonArray.toJSONString();
    }

    /**
     * @author liu.c
     * @return json
     * @date 2018年3月29日11:02:31
     */
    @RequestMapping(value = "/getRepositoryData",method = RequestMethod.GET)
    @ResponseBody
    public String getRepositoryData() {

        return "index";
    }

    @RequestMapping(value = "/getDeveloperData",method = RequestMethod.GET)
    @ResponseBody
    public String getDeveloperData() {

        return "index";
    }

}
