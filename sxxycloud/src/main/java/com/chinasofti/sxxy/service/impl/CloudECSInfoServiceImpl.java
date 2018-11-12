package com.chinasofti.sxxy.service.impl;

import com.chinasofti.sxxy.dao.CloudECSInfoDao;
import com.chinasofti.sxxy.entity.CloudECSInfo;
import com.chinasofti.sxxy.service.CloudECSInfoService;
import com.chinasofti.sxxy.util.QueryResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * 创 建  时 间： 2018/8/4 18:58
 * 版           本:  V1.0
 * 作           者:  qixin
 * Copyright (c) 2018, 中软国际.
 */
@Service
public class CloudECSInfoServiceImpl implements CloudECSInfoService {

    @Autowired
    private CloudECSInfoDao cloudECSInfoDao;

    @Override
    public int batchInserts(List<CloudECSInfo> list) {

        return cloudECSInfoDao.batchInserts(list);
    }

    @Override
    public QueryResult findIndexData(String name, String addr, String status,Integer page, Integer rows) {
        List<Map<String,Object>> data = cloudECSInfoDao.findDatas(name,addr,status,page,rows);
        Integer number = cloudECSInfoDao.findTotal(name,addr,status);
        QueryResult result = new QueryResult();
        result.setData(data);
        result.setNumber(number);
        return result;
    }

    @Override
    public int batchUpdates(List<CloudECSInfo> list) {

        return cloudECSInfoDao.batchUpdates(list);
    }
}
