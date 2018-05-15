package com.graduation.service.serviceImp;

import com.graduation.dao.RepositoryMapper;
import com.graduation.model.Repository;
import com.graduation.model.RepositoryExample;
import com.graduation.service.RepositoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RepositoryServiceImp implements RepositoryService {

    @Autowired
    private RepositoryMapper repositoryMapper;
    /**
     * 批量添加开发者数据
     *
     * @param repositoryList
     * @author Joke
     * Date 2018年3月21日15:36:35
     */
    @Override
    public int addRepositoryByListPO(List<Repository> repositoryList) {
        //repositoryMapper.preDo();
        //return repositoryMapper.insertBatch(repositoryList);
        return 0;
    }
    /**
     * 单条添加开发者数据
     *
     * @param repository
     * @author Joke
     * Date 2018年3月21日15:36:35
     */
    @Override
    public int addRepositoryByPO(Repository repository) {
        repositoryMapper.preDo();
        return repositoryMapper.insertSelective(repository);
    }

    /**
     * 修改仓库数据
     *
     * @param repository
     * @author Joke
     * Date 2018年4月9日10:12:43
     */
    @Override
    public int updateRepositoryById(Repository repository) {
        return repositoryMapper.updateByPrimaryKey(repository);
    }

    /**
     * 按条件查询数据
     * @param record
     * @return
     */
    @Override
    public List<Repository> queryRepositoryByExample(RepositoryExample record) {
        //repositoryMapper.preDo();
        List<Repository> repositories = repositoryMapper.selectByExample(record);
        return repositories;
    }

    /**
     * 按条件统计项目数量
     *
     * @param record
     * @return int
     */
    @Override
    public Integer queryDataTotal(RepositoryExample record) {
        //repositoryMapper.preDo();
        Integer repositoryCount = repositoryMapper.countByExample(record);
        return repositoryCount;
    }

    /**
     * 按主键查询
     *
     * @param id
     * @return
     */
    @Override
    public Repository getRepositoryById(Long id) {
        return repositoryMapper.selectByPrimaryKey(id);
    }
}
