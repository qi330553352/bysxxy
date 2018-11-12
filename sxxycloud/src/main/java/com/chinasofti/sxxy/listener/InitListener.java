package com.chinasofti.sxxy.listener;

import com.chinasofti.sxxy.service.SystemResourceServer;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.util.List;
import java.util.Map;

/**
 * 创 建  时 间： 2018/8/4 17:03
 * 版           本:  V1.0
 * 作           者:  qixin
 * Copyright (c) 2018, 中软国际.
 */
public class InitListener implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        System.out.println("------------> 已准备数据allPrivilegeUrls <------------");
        ApplicationContext ac = WebApplicationContextUtils.getWebApplicationContext(sce.getServletContext());
        SystemResourceServer service = ac.getBean(SystemResourceServer.class);
        List<Map<String,Object>> topPrivilegeList = service.findTopList();    //第一层
        for(Map<String,Object> map : topPrivilegeList){                                       //第二层
            Long pid = Long.valueOf(String.valueOf(map.get("id")));
            List<Map<String,Object>> secondList = service.findListByPid(pid);
            map.put("secondList",secondList);
        }
        sce.getServletContext().setAttribute("topPrivilegeList", topPrivilegeList);
        System.out.println("------------> 已准备数据topPrivilegeList <------------");
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {

    }
}
