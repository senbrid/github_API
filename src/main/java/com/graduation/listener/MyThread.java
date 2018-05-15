package com.graduation.listener;

import com.graduation.model.Seed;
import com.graduation.util.Operation;
import org.apache.log4j.Logger;

/**
 * 自定义一个 Class 线程类继承自线程类，重写 run() 方法，用于从后台获取并处理数据
 *
 * @author chu.liu
 */

public class MyThread extends Thread {

    private static Logger logger = Logger.getLogger(MyThread.class);

    public static boolean flag = true;

    public void run() {
        Operation operation = new Operation();
        while (true) {
            if (flag) {
                Seed seed = operation.getSeed();
                if (seed == null) {
                    logger.info("种子为空,请添加种子后重试,5分钟后继续执行代码");
                    try {
                        Thread.sleep(1000 * 60 * 5);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                } else {
                    operation.addRepository(seed.getSeedlogin());
                    logger.info("--------------------Line--------------------");
                }
            }
        }
    }
}
