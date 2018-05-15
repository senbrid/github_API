package com.graduation.service.serviceImp;

import com.graduation.dao.BranchMapper;
import com.graduation.model.Branch;
import com.graduation.service.BranchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BranchServiceImp implements BranchService {

    @Autowired
    private BranchMapper branchMapper;

    @Override
    public int insertSelective(Branch record) {
        return branchMapper.insertSelective(record);
    }
}
