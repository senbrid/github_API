package com.graduation.service.serviceImp;

import com.graduation.dao.LanguageMapper;
import com.graduation.model.Language;
import com.graduation.service.LanguageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LanguageServiceImp implements LanguageService {

    @Autowired
    private LanguageMapper languageMapper;

    @Override
    public int insertSelective(Language record) {
        return languageMapper.insertSelective(record);
    }
}
