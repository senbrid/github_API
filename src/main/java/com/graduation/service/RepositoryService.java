package com.graduation.service;

import com.graduation.model.Repository;

import java.util.List;

public interface RepositoryService {
    /**
     * 添加仓库数据
     *
     * @param repositoryList
     * @author Joke
     * Date 2018年3月21日15:36:35
     */
    int addRepositoryByListPO(List<Repository> repositoryList);

    int addRepositoryByPO(Repository repository);
}

