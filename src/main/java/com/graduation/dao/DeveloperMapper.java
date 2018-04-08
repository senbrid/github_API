package com.graduation.dao;

import com.graduation.model.Developer;

import java.util.List;

import com.graduation.model.DeveloperExample;
import org.apache.ibatis.annotations.Param;

public interface DeveloperMapper {
    int countByExample(DeveloperExample example);

    int deleteByExample(DeveloperExample example);

    int deleteByPrimaryKey(Long id);

    int insert(Developer record);

    int insertBatch(List<Developer> developerList);

    int updateBatch(List<Developer> developerList);

    int insertSelective(Developer record);

    List<Developer> selectByExample(DeveloperExample example);

    Developer selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") Developer record, @Param("example") DeveloperExample example);

    int updateByExample(@Param("record") Developer record, @Param("example") DeveloperExample example);

    int updateByPrimaryKeySelective(Developer record);

    int updateByPrimaryKey(Developer record);
}