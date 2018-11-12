package com.chinasofti.sxxy.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/**
 * 创 建  时 间： 2018/8/4 15:12
 * 版           本:  V1.0
 * 作           者:  qixin
 * Copyright (c) 2018, 中软国际.
 */
@Controller
@RequestMapping("/index")
public class IndexController {

    @RequestMapping("/loginUI")
    public ModelAndView loginUI(){

        return new ModelAndView("layouts/login");
    }

    @RequestMapping("/mainUI")
    public ModelAndView mainUI(){

        return new ModelAndView("layouts/login");
    }

    @RequestMapping("/main")
    public ModelAndView main(){

        return new ModelAndView("layouts/main");
    }


}
