package com.graduation.task;

import com.alibaba.fastjson.JSONObject;
import com.graduation.model.Developer;
import com.graduation.model.DeveloperExample;
import com.graduation.model.Repository;
import com.graduation.service.DeveloperService;
import com.graduation.service.RepositoryService;
import com.graduation.util.JSONParse;
import com.graduation.util.URLBuilder;
import com.graduation.util.URLRequest;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.*;

@Component
public class ATask {

    @Autowired
    private RepositoryService repositoryService;
    @Autowired
    private DeveloperService developerService;

    private Logger logger = Logger.getLogger(ATask.class);

    @Scheduled(fixedDelay = 1000 * 60 * 3)//@Scheduled 可以作为一个触发源添加到一个方法中
    //以一个固定延迟时间10分钟调用一次执行
    // 这个周期是以上一个调用任务的##完成时间##为基准，在上一个任务完成之后，5s后再次执行
    public void demo1() {
        logger.info("定时任务 #获取数据# 开始");
        long begin = System.currentTimeMillis();
        //执行你需要操作的定时任务
        try {
            String param = "language:ruby&sort=stars&order=desc&per_page=100";
            String url = URLBuilder.urlSearchRepoBuilder(param);
            //获取网页返回的字符串
            String str = URLRequest.sendGet(url);
            //字符串转json
            List<JSONObject> list = JSONParse.stringToJson(str);
            //把JSON数据封装到实体类List
            List<Repository> repositoryList = JSONParse.listJSONObjectToListRepositorySearch(list);
            //去掉与数据库数据重复的数据
            List<Repository> repositories = new ArrayList<>();
            for (Repository repository : repositoryList) {
                Repository repository1 = repositoryService.getDataById(repository.getId());
                if (repository1 == null) {
                    repositories.add(repository);
                }
            }
            if (!repositories.isEmpty()) {
                StringBuilder result = new StringBuilder();
                for (Repository repository : repositories) {
                    Developer developer = developerService.getDeveloperById(repository.getDeveloperid());
                    if (developer == null) {
                        result.append(URLRequest.sendGet(URLBuilder.urlDeveBuilder(repository.getFullName().split("/")[0])));
                    }
                }
                //字符串转json
                List<JSONObject> jsonObjectList = JSONParse.stringToJson(result.toString());
                //把JSON数据封装到实体类List
                List<Developer> developerList = JSONParse.listJSONObjectToListDeveloper(jsonObjectList);

                int countInsert = developerService.addDeveloperByListPO(removeDupliById(developerList));
                //批量添加数据
                int count = repositoryService.addRepositoryByListPO(repositories);
                logger.info("成功添加" + countInsert + "条开发者数据," + count + "条项目数据。");
            } else {
                logger.info("没有获取到新数据。");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        long end = System.currentTimeMillis();
        logger.info("定时任务 #获取数据# 结束，共耗时：[" + (end - begin) + "]毫秒");
    }

    @Scheduled(fixedDelay = 1000 * 60 * 3)//@Scheduled 可以作为一个触发源添加到一个方法中
    //以一个固定延迟时间10分钟调用一次执行
    // 这个周期是以上一个调用任务的##完成时间##为基准，在上一个任务完成之后，5s后再次执行
    public void demo2() {
        logger.info("定时任务 #更新数据# 开始");
        long begin = System.currentTimeMillis();
        //执行你需要操作的定时任务
        try {
            DeveloperExample developerExample = new DeveloperExample();
            DeveloperExample.Criteria criteria = developerExample.createCriteria();
            Date date = new Date(new Date().getTime() - 1000 * 60 * 60 * 5);
            logger.info("date:" + date);
            criteria.andUpdatedLessThan(date);
            List<Developer> developerList = developerService.getDeveloperByExample(developerExample);
            logger.info("size:" + developerList.size());
            if (!developerList.isEmpty()) {
                StringBuilder result = new StringBuilder();
                for (Developer developer : developerList) {
                    result.append(URLRequest.sendGet(URLBuilder.urlDeveBuilder(developer.getLogin())));
                }
                //字符串转json
                List<JSONObject> jsonObjectList = JSONParse.stringToJson(result.toString());
                //把JSON数据封装到实体类List
                List<Developer> developers = JSONParse.listJSONObjectToListDeveloper(jsonObjectList);
                int count = developerService.updateDeveloperByListPO(developers);
                logger.info("更新 "+count+" 条数据");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        long end = System.currentTimeMillis();
        logger.info("定时任务 #更新数据# 结束，共耗时：[" + (end - begin) + "]毫秒");
    }

//    @Scheduled(fixedRate  = 5000)
//    //以一个固定延迟时间5秒钟调用一次执行
//    // 这个周期是以上一个任务##开始时间##为基准，从上一任务开始执行后5s再次调用：
//    public void demo2(){
//        logger.info("定时任务#更新数据#开始......");
//        long begin = System.currentTimeMillis();
//        //执行你需要操作的定时任务
//        try {
//            Thread.sleep(1000);
//        } catch (InterruptedException e) {
//            e.printStackTrace();
//        }
//        long end = System.currentTimeMillis();
//        logger.info("定时任务demo2结束，共耗时：[" + (end-begin)+ "]毫秒");
//    }
//
//    @Scheduled(cron = "0 34 13 * * ?") //如果你需要在特定的时间执行，就需要用到cron 了
//    //这里是在每天的13点30分执行一次
//    public void demo3(){
//        logger.info("定时任务demo3开始.");
//        long begin = System.currentTimeMillis();
//        //执行你需要操作的定时任务
//        try {
//            Thread.sleep(1000);
//        } catch (InterruptedException e) {
//            e.printStackTrace();
//        }
//        long end = System.currentTimeMillis();
//        logger.info("定时任务demo3结束，共耗时：[" + (end-begin)+ "]毫秒");
//    }

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
}
