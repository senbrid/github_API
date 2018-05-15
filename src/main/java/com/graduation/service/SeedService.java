package com.graduation.service;

import com.graduation.model.Seed;

public interface SeedService {

    int insertSelective(Seed record);

    Seed selectByLimit(int state,int start,int size);

    Seed selectById(int id);
}
