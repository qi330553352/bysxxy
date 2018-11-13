package com.chinasofti.sxxy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 创 建  时 间： 2018/11/13 15:05
 * 版           本:  V1.0
 * 作           者:  qixin
 * Copyright (c) 2018, 中软国际.
 */
@Controller
@RequestMapping("/order")
public class OrderController {

    @RequestMapping("/index")
    public ModelAndView index(){

        return new ModelAndView("order/index");
    }
}
