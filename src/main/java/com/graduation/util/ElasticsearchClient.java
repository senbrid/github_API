package com.graduation.util;

import com.alibaba.fastjson.JSON;
import org.elasticsearch.action.get.GetResponse;
import org.elasticsearch.client.transport.TransportClient;
import org.elasticsearch.cluster.node.DiscoveryNode;
import org.elasticsearch.common.settings.Setting;
import org.elasticsearch.common.settings.Settings;
import org.elasticsearch.common.transport.InetSocketTransportAddress;
import org.elasticsearch.transport.client.PreBuiltTransportClient;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.net.InetAddress;
import java.util.List;

/**
 * Elasticsearch 5.5.1 的client 和 ElasticsearchTemplate的初始化
 * 作为一个外部访问者，请求ES的集群，对于集群而言，它是一个外部因素。
 * Created by http://quanke.name on 2017/11/10.
 */
public class ElasticsearchClient {

    private Logger logger = LoggerFactory.getLogger(ElasticsearchClient.class);

    protected TransportClient client;

    public void setUp() throws Exception {

        /**
         * 1:通过 setting对象来指定集群配置信息
         */
        Settings settings = Settings.builder()
                .put("client.transport.sniff", true)
                .put("cluster.name","elasticsearch")
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

    public void tearDown() throws Exception {
        if (client != null) {
            client.close();
            logger.info("ElasticsearchClient已关闭");
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
        GetResponse getResponse = client.prepareGet("test_developer_index", "test_developer_type", "9919").get();
        logger.info("索引库的数据:" + getResponse.getSourceAsString());
    }

    public static void main(String args[]) throws Exception {
        ElasticsearchClient elasticClient = new ElasticsearchClient();
        elasticClient.setUp();
        elasticClient.getData();
        elasticClient.tearDown();
    }
}
