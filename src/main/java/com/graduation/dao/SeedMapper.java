package com.graduation.dao;

import com.graduation.model.Seed;
import com.graduation.model.SeedExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SeedMapper {
    int countByExample(SeedExample example);

    int deleteByExample(SeedExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Seed record);

    int insertSelective(Seed record);

    List<Seed> selectByExample(SeedExample example);

    Seed selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Seed record, @Param("example") SeedExample example);

    int updateByExample(@Param("record") Seed record, @Param("example") SeedExample example);

    int updateByPrimaryKeySelective(Seed record);

    int updateByPrimaryKey(Seed record);
}