package com.chinasofti.sxxy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 创 建  时 间： 2018/11/12 14:58
 * 版           本:  V1.0
 * 作           者:  qixin
 * Copyright (c) 2018, 中软国际.
 */
@Controller
@RequestMapping("/org")
public class OrgController {

    @RequestMapping("/index")
    public ModelAndView index(){

        return new ModelAndView("org/index");
    }

    @RequestMapping("/educationManagement")
    public ModelAndView educationManagement(){

        return new ModelAndView("org/educationManagement");
    }

}
