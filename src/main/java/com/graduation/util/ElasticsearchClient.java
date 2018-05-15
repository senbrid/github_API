package com.graduation.util;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.graduation.model.Developer;
import org.elasticsearch.action.get.GetResponse;
import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.client.transport.TransportClient;
import org.elasticsearch.cluster.node.DiscoveryNode;
import org.elasticsearch.common.settings.Settings;
import org.elasticsearch.common.transport.InetSocketTransportAddress;
import org.elasticsearch.index.query.BoolQueryBuilder;
import org.elasticsearch.index.query.QueryBuilders;
import org.elasticsearch.index.query.TermQueryBuilder;
import org.elasticsearch.index.query.WildcardQueryBuilder;
import org.elasticsearch.search.SearchHits;
import org.elasticsearch.search.fetch.subphase.highlight.HighlightBuilder;
import org.elasticsearch.transport.client.PreBuiltTransportClient;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Elasticsearch 5.5.1 的client的初始化
 */
public class ElasticsearchClient {

    private static Logger logger = LoggerFactory.getLogger(ElasticsearchClient.class);

    private TransportClient client;
    private final String INDEX = "github";

    public ElasticsearchClient(String clusterName,String  ipAddress,int port){
        /**
         * 1:通过 setting对象来指定集群配置信息
         */
        Settings settings = Settings.builder()
                //.put("client.transport.sniff", true)
                //.put("client.transport.ping_timeout","10s")
                .put("cluster.name",clusterName)
                //.put("node.name","node1")
                .build();
        /**
         * 2：创建客户端
         * 通过setting来创建，若不指定则默认链接的集群名为elasticsearch
         * 链接使用tcp协议即9300
         */
        try {
            client = new PreBuiltTransportClient(settings).addTransportAddress(new InetSocketTransportAddress(InetAddress.getByName(ipAddress), port));
        } catch (UnknownHostException e) {
            e.printStackTrace();
        }

    }

    public void setUp() throws Exception {
        /**
         * 1:通过 setting对象来指定集群配置信息
         */
        Settings settings = Settings.builder()
                //.put("client.transport.sniff", true)
                //.put("client.transport.ping_timeout","10s")
                .put("cluster.name","cluster1")
                //.put("node.name","node1")
                .build();
        /**
         * 2：创建客户端
         * 通过setting来创建，若不指定则默认链接的集群名为elasticsearch
         * 链接使用tcp协议即9300
         */
        client = new PreBuiltTransportClient(settings).addTransportAddress(new InetSocketTransportAddress(InetAddress.getByName("47.106.122.83"), 9300));
        /**
         * 3：查看集群信息
         * 注意我的集群结构是：
         *   131的elasticsearch.yml中指定为主节点不能存储数据，
         *   128的elasticsearch.yml中指定不为主节点只能存储数据。
         * 所有控制台只打印了192.168.79.128,只能获取数据节点
         *
         */
        List<DiscoveryNode> connectedNodes = client.connectedNodes();
        for(DiscoveryNode node : connectedNodes)
        {
            logger.info("节点:" + node.getHostAddress());
        }
    }

    public void close() {
        if (client != null) {
            client.close();
            logger.info("ElasticsearchClient are closed");
        }
    }
    /**
     * 从索引库获取数据
     * @Title: getData
     * @author jokechu
     * @date 2017年11月23日
     * @return void
     */
    public void getData() {
        GetResponse getResponse = client.prepareGet("github", "developer", "2").get();
        logger.info("索引库的数据:" + getResponse.getSourceAsString());
        List<JSONObject> jsonObjectList = JSONParse.stringToJson(getResponse.getSourceAsString());
        List<Developer> developerList = JSONParse.listJSONObjectToListDeveloper(jsonObjectList);
        logger.info("转换后的数据："+ JSON.toJSONString(developerList));
    }

    public static void main(String args[]) {
        ElasticsearchClient elasticClient = new ElasticsearchClient("cluster1","47.106.122.83",9300);
        List list = elasticClient.getDataByillegible("repository","description","java");
        logger.info("size:"+list.size());
        for (Object object: list) {
            logger.info(JSON.toJSONString(object));
        }
    }

    /**
     * 根据文档名、字段名、字段值查询某一条记录的详细信息；query查询
     * @param type  文档名，相当于oracle中的表名，例如：ql_xz；
     * @param key 字段名，例如：bdcqzh
     * @param value  字段值，如：“”
     * @return  List
     * @author Lixin
     */
    public List getQueryDataBySingleField(String type,String key,String value){
        TermQueryBuilder qb = QueryBuilders.termQuery(key, value);
        SearchResponse response = client.prepareSearch(INDEX).setTypes(type)
                .setQuery(qb)
                .setFrom(0).setSize(10000).setExplain(true)
                .execute()
                .actionGet();
        return responseToList(response);
    }


    /**
     * 多条件  文档名、字段名、字段值，查询某一条记录的详细信息
     * @param type 文档名，相当于oracle中的表名，例如：ql_xz
     * @param map 字段名：字段值 的map
     * @return List
     * @author Lixin
     */
    public List getBoolDataByMuchField(String type,Map<String,String> map){
        BoolQueryBuilder boolQueryBuilder = QueryBuilders.boolQuery();
        for (String in : map.keySet()) {
            //map.keySet()返回的是所有key的值
            String str = map.get(in);//得到每个key多对用value的值
            boolQueryBuilder.must(QueryBuilders.termQuery(in,str));
        }
        SearchResponse response = client.prepareSearch(INDEX).setTypes(type)
                .setQuery(boolQueryBuilder)
                .setFrom(0).setSize(10000).setExplain(true)
                .execute()
                .actionGet();
        return responseToList(response);
    }


    /**
     * 单条件 模糊查询
     * @param type 文档名，相当于oracle中的表名，例如：ql_xz
     * @param key 字段名，例如：bdcqzh
     * @param value 字段名模糊值：如 *123* ;?123*;?123?;*123?;
     * @return List
     * @author Lixin
     */
    public List getDataByillegible(String type,String key,String value){
        WildcardQueryBuilder wBuilder = QueryBuilders.wildcardQuery(key, value);
        HighlightBuilder highlightBuilder = new HighlightBuilder().field(value);
        highlightBuilder.preTags("<em>");
        highlightBuilder.postTags("</em>");
        SearchResponse response = client.prepareSearch(INDEX).setTypes(type)
                .setQuery(wBuilder)
                .highlighter(highlightBuilder)
                .setFrom(0).setSize(10000).setExplain(true)
                .execute()
                .actionGet();
        return responseToList(response);
    }

    /**
     * 多条件 模糊查询
     * @param type  type 文档名，相当于oracle中的表名，例如：ql_xz
     * @param map   包含key:value 模糊值键值对
     * @return List
     * @author Lixin
     */
    public List getDataByMuchillegible(String type,Map<String,String> map){
        BoolQueryBuilder boolQueryBuilder = QueryBuilders.boolQuery();
        for (String in : map.keySet()) {
            //map.keySet()返回的是所有key的值
            String str = map.get(in);//得到每个key多对用value的值
            boolQueryBuilder.must(QueryBuilders.wildcardQuery(in,str));
        }
        SearchResponse response = client.prepareSearch(INDEX)
                .setFrom(0).setSize(10000).setExplain(true)
                .execute()
                .actionGet();

        return responseToList(response);
    }


    /**
     * 将查询后获得的response转成list
     * @param response
     * @return
     */
    public List responseToList(SearchResponse response){
        SearchHits hits = response.getHits();
        List<Map<String, Object>> list = new ArrayList<Map<String,Object>>();
        for (int i = 0; i < hits.getHits().length; i++) {
            Map<String, Object> map = hits.getAt(i).getSource();
            list.add(map);
        }
        client.close();
        return list;
    }
}
