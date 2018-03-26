package com.graduation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 页面控制器
 */
@Controller
@RequestMapping("/view")
public class ViewController {

    @RequestMapping(value = "/index",method = RequestMethod.GET)
    public String index() {

        return "index";
    }
}
