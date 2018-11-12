package com.chinasofti.sxxy.filter;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.web.filter.PathMatchingFilter;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

/**
 * 创 建 时 间: 2018/11/8
 * 版       本: V1.0
 * 作       者: qixin
 * 版 权 所 有: 版权所有(C)2016-2026
 */
public class SystemUserFilter extends PathMatchingFilter {

    @Override
    protected boolean onPreHandle(ServletRequest request, ServletResponse response, Object mappedValue) throws Exception {
        String username = (String) SecurityUtils.getSubject().getPrincipal();

        return true;
    }
}
