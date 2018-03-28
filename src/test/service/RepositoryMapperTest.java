package service;

import com.alibaba.fastjson.JSONObject;
import com.graduation.dao.RepositoryMapper;
import com.graduation.model.Repository;
import com.graduation.util.JSONParse;
import com.graduation.util.URLBuilder;
import com.graduation.util.URLRequest;
import org.apache.ibatis.session.SqlSession;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

import static org.junit.Assert.*;

public class RepositoryMapperTest {
    @Autowired
    private RepositoryMapper repositoryMapper;

    @Autowired
    private SqlSession sqlSession;

    @Before
    public void setUp() throws Exception {
    }

    @Test
    public void insertBatch() throws Exception {
        repositoryMapper = sqlSession.getMapper(RepositoryMapper.class);
        String param = "language:java&sort=stars&order=desc";
        String url = URLBuilder.urlSearchBuilder(0,param);
        //获取网页返回的字符串
        String str = URLRequest.sendGet(url);
        //字符串转json
        List<JSONObject> list = JSONParse.stringToJson(str);
        //把JSON数据封装到实体类List
        List<Repository> repositoryList = JSONParse.listJSONObjectToListRepositorySearch(list);
        repositoryMapper.insertBatch(repositoryList);
    }

}