package com.graduation.controller;

import com.alibaba.fastjson.JSON;
import com.graduation.listener.MyThread;
import com.graduation.model.Seed;
import com.graduation.service.SeedService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class AdminController {

    @Autowired
    SeedService seedService;

    @RequestMapping("/admin")
    public String admin(ModelMap map){

        map.put("flag",MyThread.flag);
        return "admin";
    }

    @RequestMapping("/admin/setStop")
    @ResponseBody
    public String setStop(ModelMap map){

        if(MyThread.flag){
            MyThread.flag = false;
        }else {
            MyThread.flag = true;
        }
        map.put("flag",MyThread.flag);
        return JSON.toJSONString(map);
    }

    @RequestMapping("/admin/test")
    @ResponseBody
    public String test(ModelMap map){

        Seed seed = seedService.selectById(63121);
        map.put("seed",seed);

        return JSON.toJSONString(map);
    }
}
