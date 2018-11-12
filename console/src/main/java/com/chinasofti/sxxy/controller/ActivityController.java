package com.chinasofti.sxxy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 创 建 时 间: 2018/11/9
 * 版       本: V1.0
 * 作       者: qixin
 * 版 权 所 有: 版权所有(C)2016-2026
 */
@Controller
@RequestMapping("/activity")
public class ActivityController {

    @RequestMapping("/index")
    public ModelAndView index(){

        return new ModelAndView("activity/index");
    }

    @RequestMapping("/activeList")
    public ModelAndView activeList(){

        return new ModelAndView("activity/activeList");
    }

    @RequestMapping("/actplList")
    public ModelAndView actplList(){

        return new ModelAndView("activity/actplList");
    }
}
