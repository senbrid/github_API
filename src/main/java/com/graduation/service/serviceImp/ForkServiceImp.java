package com.graduation.service.serviceImp;

import com.graduation.dao.ForkMapper;
import com.graduation.model.Fork;
import com.graduation.service.ForkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ForkServiceImp implements ForkService {

    @Autowired
    private ForkMapper forkMapper;

    @Override
    public int insertSelective(Fork record) {
        return forkMapper.insertSelective(record);
    }
}
