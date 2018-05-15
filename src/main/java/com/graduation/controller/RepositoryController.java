package com.graduation.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.graduation.model.Developer;
import com.graduation.model.Repository;
import com.graduation.service.DeveloperService;
import com.graduation.service.RepositoryService;
import com.graduation.util.JSONParse;
import com.graduation.util.URLBuilder;
import com.graduation.util.URLRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

@Controller
@RequestMapping("/repository")
public class RepositoryController {

    @Autowired
    private RepositoryService repositoryService;
    @Autowired
    private DeveloperService developerService;

    /**
     * 添加仓库项目数据（使用AJAX异步）
     */
    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public void addRepository() throws Exception {
        String param = "language:java&sort=stars&order=desc";
        String url = URLBuilder.urlSearchRepoBuilder(param);
        //获取网页返回的字符串
        String str = URLRequest.sendGet(url);
        //字符串转json
        List<JSONObject> list = JSONParse.stringToJson(str);
        //把JSON数据封装到实体类List
        List<Repository> repositoryList = JSONParse.listJSONObjectToListRepositorySearch(list);

        StringBuilder result = new StringBuilder();
        for (Repository repository : repositoryList) {
            //result.append(URLRequest.sendGet(URLBuilder.urlDeveBuilder(repository.getDeveloperid())));
        }
        //字符串转json
        List<JSONObject> jsonObjectList = JSONParse.stringToJson(result.toString());
        //把JSON数据封装到实体类List
        List<Developer> developerList = JSONParse.listJSONObjectToListDeveloper(jsonObjectList);

        System.out.println("size:" + removeDupliById(developerList).size());
        int countInsert = developerService.addDeveloperByListPO(removeDupliById(developerList));
        System.out.println("成功添加" + countInsert + "条开发者数据。");
        //批量添加数据接口
        int count = repositoryService.addRepositoryByListPO(repositoryList);
        System.out.println("成功添加" + count + "条项目数据。");
    }

    /**
     * 根据id属性的值去掉对象列表里重复的对象
     *
     * @param developers
     * @return
     */
    public static List<Developer> removeDupliById(List<Developer> developers) {
        Set<Developer> personSet = new TreeSet<>((o1, o2) -> o1.getId().compareTo(o2.getId()));
        personSet.addAll(developers);

        return new ArrayList<>(personSet);
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
