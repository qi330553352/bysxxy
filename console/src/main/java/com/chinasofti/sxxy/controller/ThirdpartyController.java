package com.chinasofti.sxxy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 创 建  时 间： 2018/11/13 16:42
 * 版           本:  V1.0
 * 作           者:  qixin
 * Copyright (c) 2018, 中软国际.
 */
@Controller
@RequestMapping("/thirdparty")
public class ThirdpartyController {

    @RequestMapping("/index")
    public ModelAndView index(){

        return new ModelAndView("thirdparty/index");
    }

    @RequestMapping("/openapilist")
    public ModelAndView openapilist(){

        return new ModelAndView("thirdparty/openapilist");
    }

    @RequestMapping("/applicationlist")
    public ModelAndView applicationlist(){

        return new ModelAndView("thirdparty/applicationlist");
    }

}
