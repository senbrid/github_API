package com.graduation.dao;

import com.graduation.model.Fork;
import com.graduation.model.ForkExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ForkMapper {
    int countByExample(ForkExample example);

    int deleteByExample(ForkExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Fork record);

    int insertSelective(Fork record);

    List<Fork> selectByExample(ForkExample example);

    Fork selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Fork record, @Param("example") ForkExample example);

    int updateByExample(@Param("record") Fork record, @Param("example") ForkExample example);

    int updateByPrimaryKeySelective(Fork record);

    int updateByPrimaryKey(Fork record);
}