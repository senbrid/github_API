package com.graduation.service.serviceImp;

import com.graduation.dao.FollowMapper;
import com.graduation.model.Follow;
import com.graduation.model.FollowExample;
import com.graduation.service.FollowService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class FollowServiceImp implements FollowService {

    @Autowired
    private FollowMapper followMapper;

    @Override
    public int insertSelective(Follow record) {
        return followMapper.insertSelective(record);
    }

    @Override
    public List<Follow> selectByExample(FollowExample example) {
        return followMapper.selectByExample(example);
    }
}
