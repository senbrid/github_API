package com.graduation.service;

import com.graduation.model.Developer;

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
}
