package com.chinasofti.sxxy.controller;

import com.chinasofti.sxxy.entity.SystemUser;
import com.chinasofti.sxxy.util.ConfigCommons;
import com.chinasofti.sxxy.util.CryptographyUtil;
import com.chinasofti.sxxy.util.ReturnDataMap;
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

        return new ModelAndView("layouts/main");
    }

    @RequestMapping("/login")
    public String login(SystemUser user, HttpServletRequest request){
        Subject subject= SecurityUtils.getSubject();
        String simple = CryptographyUtil.md5("qixin123", ConfigCommons.salt);
        UsernamePasswordToken token = new UsernamePasswordToken("qixin001", simple);
        try{
            subject.login(token); // 登录验证
            return "redirect:/index/mainUI";
        }catch(AuthenticationException e){
            request.setAttribute("user", user);
            request.setAttribute("errorInfo", "用户名或密码错误！");
            return "layouts/login";
        }
    }

    @RequestMapping(value = "/logout",method = RequestMethod.GET)
    public String logout(HttpServletRequest request){
        Subject subject= SecurityUtils.getSubject();
        subject.logout();
        return "layouts/login";
    }

    @ResponseBody
    @RequestMapping("isLogin")
    public Map<String,Object> isLogin(){
        Subject currentUser = SecurityUtils.getSubject();
        return new ReturnDataMap(currentUser.isAuthenticated(),"");
    }
}
