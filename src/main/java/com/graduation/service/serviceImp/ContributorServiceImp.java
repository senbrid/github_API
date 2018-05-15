package com.graduation.service.serviceImp;

import com.graduation.dao.ContributorMapper;
import com.graduation.model.Contributor;
import com.graduation.service.ContributorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ContributorServiceImp implements ContributorService {

    @Autowired
    private ContributorMapper contributorMapper;

    @Override
    public int insertSelective(Contributor record) {
        return contributorMapper.insertSelective(record);
    }
}
