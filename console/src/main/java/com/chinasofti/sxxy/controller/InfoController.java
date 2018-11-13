package com.chinasofti.sxxy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 创 建  时 间： 2018/11/13 10:04
 * 版           本:  V1.0
 * 作           者:  qixin
 * Copyright (c) 2018, 中软国际.
 */
@Controller
@RequestMapping("/info")
public class InfoController {

    @RequestMapping("/index")
    public ModelAndView index(){

        return new ModelAndView("info/index");
    }
    @RequestMapping("/sitemsg")
    public ModelAndView sitemsg(){

        return new ModelAndView("info/sitemsg");
    }
    @RequestMapping("/noticeList")
    public ModelAndView noticeList(){

        return new ModelAndView("info/noticeList");
    }
    @RequestMapping("/addActivityInfo")
    public ModelAndView addActivityInfo(){

        return new ModelAndView("info/addActivityInfo");
    }
    @RequestMapping("/policy")
    public ModelAndView policy(){

        return new ModelAndView("info/policy");
    }
    @RequestMapping("/newsList")
    public ModelAndView newsList(){

        return new ModelAndView("info/newsList");
    }


}
