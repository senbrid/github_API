package com.graduation.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.graduation.model.Repository;
import com.graduation.service.RepositoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
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

        List<Repository> repositories = repositoryService.queryAllData();
        //System.out.println("size:" + repositories.size());

        //把对象集合转换成json
        String json = JSON.toJSONString(repositories);
        System.out.println("json1:\n" + json);
        return json;
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
