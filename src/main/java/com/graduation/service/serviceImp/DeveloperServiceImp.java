package com.graduation.service.serviceImp;

import com.graduation.dao.DeveloperMapper;
import com.graduation.model.Developer;
import com.graduation.service.DeveloperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DeveloperServiceImp implements DeveloperService {

    @Autowired
    private DeveloperMapper developerMapper;
    /**
     * 添加开发者数据
     *
     * @param developerList
     * @author Joke
     * Date 2018年3月21日15:36:35
     */
    public int addDeveloperByListPO(List<Developer> developerList) {
        int count = 0;
        for(Developer developer : developerList){
            count += developerMapper.insert(developer);
        }
        return count;
    }
}
