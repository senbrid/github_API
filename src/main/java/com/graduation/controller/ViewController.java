package com.graduation.controller;

import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.graduation.model.*;
import com.graduation.service.DeveloperService;
import com.graduation.service.RepositoryService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

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
    @Autowired
    DeveloperService developerService;

    /**
     * 页面跳转
     * @return
     */
    @RequestMapping(value = "/index",method = RequestMethod.GET)
    public String index(@RequestParam(value="q") String q,ModelMap map) {
        map.put("key",q);
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
                            @RequestParam(value="text",defaultValue = "") String text){

        RepositoryExample repositoryExample = new RepositoryExample();
        RepositoryExample.Criteria criteria = repositoryExample.createCriteria();
        criteria.andDescriptionLike("%" + text + "%");
        RepositoryExample.Criteria criteria2= repositoryExample.createCriteria();
        criteria2.andFullNameLike("%" + text + "%");
        repositoryExample.or(criteria2);
        repositoryExample.setOrderByClause("star_count DESC");
        //分页查询
        PageHelper.startPage(page,10);
        List<Repository> repositories = repositoryService.queryRepositoryByExample(repositoryExample);
        List<RepositoryVO> repositoryVOList = new ArrayList<RepositoryVO>();
        PageInfo<Repository> pInfo = new PageInfo<Repository>(repositories);
        for (Repository repository : repositories) {
            RepositoryVO repositoryVO = new RepositoryVO();
            //复制对象属性数据
            BeanUtils.copyProperties(repository,repositoryVO);

            Developer developer = developerService.getDeveloperById(repository.getDeveloperid());
            repositoryVO.setAvatarUrl(developer.getAvatarUrl());
            repositoryVOList.add(repositoryVO);
        }
        //封装查询的结果集
        PageInfo<RepositoryVO> pageInfo = new PageInfo<RepositoryVO>(repositoryVOList);
        //复制对象属性数据
        BeanUtils.copyProperties(pInfo,pageInfo);
        pageInfo.setList(repositoryVOList);
        //把对象集合转换成json
        return JSON.toJSONString(pageInfo);
    }

    /**
     * @author liu.c
     * @return json
     * @date 2018年3月29日11:02:31
     */
    @RequestMapping(value = "/reposDetails",method = RequestMethod.GET)
    public String reposDetails(@RequestParam(value="id") Long id,ModelMap map) {
        Repository repository = repositoryService.getDataById(id);
        Developer developer = developerService.getDeveloperById(repository.getDeveloperid());
        map.put("repository",repository);
        map.put("developer",developer);
        return "reposDetail";
    }

    @RequestMapping(value = "/getDeveloperData",method = RequestMethod.GET)
    public String getDeveloperData() {

        return "index";
    }

}
