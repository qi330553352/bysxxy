package com.chinasofti.sxxy.service.impl;

import com.chinasofti.sxxy.dao.SystemResourceDao;
import com.chinasofti.sxxy.service.SystemResourceServer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * 创 建  时 间： 2018/8/4 17:04
 * 版           本:  V1.0
 * 作           者:  qixin
 * Copyright (c) 2018, 中软国际.
 */
@Service
public class SystemResourceImpl implements SystemResourceServer{

    @Autowired
    private SystemResourceDao systemResourceDao;

    @Override
    public List<Map<String, Object>> findTopList() {

        return systemResourceDao.findTopList();
    }

    @Override
    public List<Map<String, Object>> findListByPid(Long pid) {

        return systemResourceDao.findListByPid(pid);
    }
}
