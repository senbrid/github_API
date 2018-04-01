package com.graduation.controller;

import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.graduation.model.Repository;
import com.graduation.model.RepositoryExample;
import com.graduation.service.RepositoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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

    /**
     * 页面跳转
     * @return
     */
    @RequestMapping(value = "/index",method = RequestMethod.GET)
    public String index() {
        return "index";
    }

    /**
     * 分页查询数据
     * @param page
     * @return
     */
    @RequestMapping(value = "/queryData",method = RequestMethod.GET)
    @ResponseBody
    public String queryData(@RequestParam(value="page",defaultValue = "1") Integer page,
                            @RequestParam(value="text",defaultValue = "") String text) {

        RepositoryExample repositoryExample = new RepositoryExample();
        RepositoryExample.Criteria criteria = repositoryExample.createCriteria();
        criteria.andDescriptionLike("%" + text + "%");
        //分页查询
        PageHelper.startPage(page,10);
        List<Repository> repositories = repositoryService.queryData(repositoryExample);
        //封装查询的结果集
        PageInfo<Repository> pageInfo = new PageInfo<Repository>(repositories);
        //把对象集合转换成json
        return JSON.toJSONString(pageInfo);
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
