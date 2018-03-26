package com.graduation.service.serviceImp;

import com.graduation.dao.RepositoryMapper;
import com.graduation.model.Repository;
import com.graduation.service.RepositoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RepositoryServiceImp implements RepositoryService {

    @Autowired
    private RepositoryMapper repositoryMapper;
    /**
     * 添加开发者数据
     *
     * @param repositoryList
     * @author Joke
     * Date 2018年3月21日15:36:35
     */
    public int addRepositoryByListPO(List<Repository> repositoryList) {
        int count = 0;
        for(Repository repository : repositoryList){
            count += repositoryMapper.insert(repository);
        }
        return count;
    }
}
