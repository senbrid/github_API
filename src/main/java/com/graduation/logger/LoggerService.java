package com.graduation.logger;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.scheduling.annotation.Async;

public class LoggerService {

    protected Logger logger = LoggerFactory.getLogger(LoggerService.class);

    @Async
    public void log(String var1, Object... var2) {
        logger.info(var1, var2);
    }
}
