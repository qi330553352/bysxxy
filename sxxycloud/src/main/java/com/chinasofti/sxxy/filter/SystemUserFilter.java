package com.chinasofti.sxxy.filter;

import com.chinasofti.sxxy.entity.SystemUser;
import com.chinasofti.sxxy.util.ConfigCommons;
import com.chinasofti.sxxy.util.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.web.filter.PathMatchingFilter;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

/**
 * 创 建  时 间： 2018/8/4 16:09
 * 版           本:  V1.0
 * 作           者:  qixin
 * Copyright (c) 2018, 中软国际.
 */
public class SystemUserFilter extends PathMatchingFilter {

    @Override
    protected boolean onPreHandle(ServletRequest request, ServletResponse response, Object mappedValue) throws Exception {
        String username = (String) SecurityUtils.getSubject().getPrincipal();
        SystemUser user = new SystemUser();
        user.setLoginName(username);
        if(request instanceof HttpServletRequest){
            HttpServletRequest req = (HttpServletRequest)request;
            String ip = StringUtils.getIpAddr(req);
            user.setIp(ip);
        }
        request.setAttribute(ConfigCommons.CURRENT_USER, user);
        return true;
    }
}
