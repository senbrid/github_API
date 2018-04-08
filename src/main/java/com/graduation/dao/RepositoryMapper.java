package com.graduation.dao;

import com.graduation.model.Repository;

import java.util.List;

import com.graduation.model.RepositoryExample;
import org.apache.ibatis.annotations.Param;

public interface RepositoryMapper {

    void preDo();

    List<Repository> selectAll();

    int countByExample(RepositoryExample example);

    int deleteByExample(RepositoryExample example);

    int deleteByPrimaryKey(Long id);

    int insert(Repository record);

    int insertBatch(List<Repository> repositories);

    int insertSelective(Repository record);

    List<Repository> selectByExample(RepositoryExample example);

    Repository selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") Repository record, @Param("example") RepositoryExample example);

    int updateByExample(@Param("record") Repository record, @Param("example") RepositoryExample example);

    int updateByPrimaryKeySelective(Repository record);

    int updateByPrimaryKey(Repository record);
}