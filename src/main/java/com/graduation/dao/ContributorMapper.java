package com.graduation.dao;

import com.graduation.model.Contributor;
import com.graduation.model.ContributorExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ContributorMapper {
    int countByExample(ContributorExample example);

    int deleteByExample(ContributorExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Contributor record);

    int insertSelective(Contributor record);

    List<Contributor> selectByExample(ContributorExample example);

    Contributor selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Contributor record, @Param("example") ContributorExample example);

    int updateByExample(@Param("record") Contributor record, @Param("example") ContributorExample example);

    int updateByPrimaryKeySelective(Contributor record);

    int updateByPrimaryKey(Contributor record);
}