package com.graduation.dao;

import com.graduation.model.Branch;
import com.graduation.model.BranchExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BranchMapper {
    int countByExample(BranchExample example);

    int deleteByExample(BranchExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Branch record);

    int insertSelective(Branch record);

    List<Branch> selectByExample(BranchExample example);

    Branch selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Branch record, @Param("example") BranchExample example);

    int updateByExample(@Param("record") Branch record, @Param("example") BranchExample example);

    int updateByPrimaryKeySelective(Branch record);

    int updateByPrimaryKey(Branch record);
}