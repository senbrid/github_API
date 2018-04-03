package com.graduation.service;

import com.graduation.model.Developer;
import com.graduation.model.DeveloperExample;

import java.util.List;

public interface DeveloperService {
    /**
     * 添加开发者数据
     *
     * @param developerList
     * @author Joke
     * Date 2018年3月21日15:36:35
     */
    int addDeveloperByListPO(List<Developer> developerList);
    /**
     * 根据开发者ID查询开发者头像地址
     *
     * @param example
     * @author Joke
     * Date 2018年4月3日12:00:37
     */
    List<Developer> getDeveloperByExample(DeveloperExample example);
}
