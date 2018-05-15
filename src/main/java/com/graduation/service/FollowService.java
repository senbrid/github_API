package com.graduation.service;

import com.graduation.model.Follow;
import com.graduation.model.FollowExample;

import java.util.List;

public interface FollowService {

    int insertSelective(Follow record);

    List<Follow> selectByExample(FollowExample example);
}
