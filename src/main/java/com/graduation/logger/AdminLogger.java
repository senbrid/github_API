package com.graduation.logger;

import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.SerializerFeature;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StopWatch;
import org.springframework.validation.BeanPropertyBindingResult;
import org.springframework.validation.support.BindingAwareModelMap;
import org.springframework.web.multipart.support.DefaultMultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequestWrapper;

/**
 *
 * 日志切面
 *
 * @author bo.mo
 * @date: 2016年10月27日 下午4:46:38
 * @version 1.0
 * @since JDK 1.8
 */
@Aspect
public class AdminLogger {

    private Integer threshold = 50;

    @Autowired
    private LoggerService loggerService;

    /**
     *
     * 切点为ResponseBody和RequestMapping注解
     *
     * @author bo.mo
     * @date: 2016年10月27日 下午4:46:49
     * @version 1.0
     *
     */
    @Pointcut("@annotation(org.springframework.web.bind.annotation.ResponseBody)&& @annotation(org.springframework.web.bind.annotation.RequestMapping)")
    public void controllerCall() {
    }

    @Around("controllerCall()")
    public Object monitor(JoinPoint joinPoint) throws Throwable {
        StopWatch stopWatch = new StopWatch(joinPoint.getTarget().getClass().getName());
        stopWatch.start();
        String method = joinPoint.getSignature().getName();
        Object obj = null;
        try {
            obj = ((ProceedingJoinPoint) joinPoint).proceed();
            Object[] args = joinPoint.getArgs();
            StringBuffer buffer = new StringBuffer("参数值[");
            if (null != args) {
                for (int i = 0, size = args.length; i < size; i++) {

                    if (args[i] != null) {
                        if (args[i] instanceof DefaultMultipartHttpServletRequest
                                || args[i] instanceof BindingAwareModelMap || args[i] instanceof HttpServletRequestWrapper
                                || args[i] instanceof BeanPropertyBindingResult) {
                            continue;
                        }

                    }

                    buffer.append(JSONObject.toJSONString(args[i], SerializerFeature.WriteEnumUsingToString,
                            SerializerFeature.WriteNullStringAsEmpty, SerializerFeature.WriteDateUseDateFormat,
                            SerializerFeature.WriteMapNullValue));
                    if (i != size - 1) {
                        buffer.append(",");
                    }
                }
            }
            buffer.append("]");
            loggerService.log("调用方法{},{}", method, buffer.toString());
        } catch (Exception ex) {
            loggerService.log("调用方法{}方法异常:", ex.getMessage());
            throw ex;
        } finally {
            stopWatch.stop();
            if (stopWatch.getTotalTimeMillis() > threshold) {
                loggerService.log("调用[{}]方法执行时间:{}ms", method, stopWatch.getTotalTimeMillis());
            }
        }
        loggerService.log("调用结果:{}", obj);
        return obj;
    }

}
