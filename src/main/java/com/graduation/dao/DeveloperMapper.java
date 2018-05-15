package com.graduation.dao;

import com.graduation.model.Developer;
import com.graduation.model.DeveloperExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DeveloperMapper {

    void preDo();

    int countByExample(DeveloperExample example);

    int deleteByExample(DeveloperExample example);

    int deleteByPrimaryKey(Long id);

    int insert(Developer record);

    int insertSelective(Developer record);

    List<Developer> selectByExample(DeveloperExample example);

    Developer selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") Developer record, @Param("example") DeveloperExample example);

    int updateByExample(@Param("record") Developer record, @Param("example") DeveloperExample example);

    int updateByPrimaryKeySelective(Developer record);

    int updateByPrimaryKey(Developer record);
}