package com.chinasofti.sxxy.util;

import com.chinasofti.sxxy.entity.SystemUser;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;

/**
 * 创 建  时 间： 2018/8/4 16:28
 * 版           本:  V1.0
 * 作           者:  qixin
 * Copyright (c) 2018, 中软国际.
 */
public class SecurityUtil {

    /**
     * 获得当前用户
     * @return 用户对象
     * @author qixin
     */
    public static SystemUser getCurrentUser(){
        Subject subject = SecurityUtils.getSubject();
        Session session = subject.getSession();
        Object obj = session.getAttribute(ConfigCommons.CURRENT_USER);
        return (obj==null?null:(SystemUser)obj);
    }
}
