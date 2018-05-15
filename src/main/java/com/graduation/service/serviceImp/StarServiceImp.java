package com.graduation.service.serviceImp;

import com.graduation.dao.StarMapper;
import com.graduation.model.Star;
import com.graduation.service.StarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StarServiceImp implements StarService {

    @Autowired
    private StarMapper starMapper;

    @Override
    public int insertSelective(Star record) {
        return starMapper.insertSelective(record);
    }
}
