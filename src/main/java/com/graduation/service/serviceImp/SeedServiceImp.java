package com.graduation.service.serviceImp;

import com.graduation.dao.SeedMapper;
import com.graduation.model.Seed;
import com.graduation.service.SeedService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.LinkedHashMap;
import java.util.Map;
@Service
public class SeedServiceImp implements SeedService {

    @Autowired
    private SeedMapper seedMapper;

    @Override
    public int insertSelective(Seed record) {
        return seedMapper.insertSelective(record);
    }

    @Override
    public Seed selectByLimit(int state, int start, int size) {
        System.out.println(state +","+ start +","+ size);
        Map<String,Object> map = new LinkedHashMap<String, Object>();
        map.put("state",state);
        map.put("start",start);
        map.put("size",size);
        return null;
    }

    @Override
    public Seed selectById(int id) {
        return seedMapper.selectByPrimaryKey(id);
    }
}
