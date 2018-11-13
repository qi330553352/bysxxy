package com.chinasofti.sxxy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 创 建  时 间： 2018/11/13 9:32
 * 版           本:  V1.0
 * 作           者:  qixin
 * Copyright (c) 2018, 中软国际.
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @RequestMapping("/index")
    public ModelAndView index(){

        return new ModelAndView("user/index");
    }

    @RequestMapping("/userlist")
    public ModelAndView userlist(){

        return new ModelAndView("user/userlist");
    }

    @RequestMapping("/rolelist")
    public ModelAndView rolelist(){

        return new ModelAndView("user/rolelist");
    }

    @RequestMapping("/usergrouplist")
    public ModelAndView usergrouplist(){

        return new ModelAndView("user/usergrouplist");
    }

    @RequestMapping("/authorityManagement")
    public ModelAndView authorityManagement(){

        return new ModelAndView("user/authorityManagement");
    }

    @RequestMapping("/weekList")
    public ModelAndView weekList(){

        return new ModelAndView("user/weekList");
    }
}
