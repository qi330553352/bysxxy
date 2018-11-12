package com.chinasofti.sxxy.service.impl;

import com.chinasofti.sxxy.dao.EcsGroupInfoDao;
import com.chinasofti.sxxy.service.EcsGroupInfoService;
import com.chinasofti.sxxy.util.QueryResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * 创 建  时 间： 2018/8/5 11:04
 * 版           本:  V1.0
 * 作           者:  qixin
 * Copyright (c) 2018, 中软国际.
 */
@Service
public class EcsGroupInfoServiceImpl implements EcsGroupInfoService {

    @Autowired
    private EcsGroupInfoDao ecsGroupInfoDao;

    @Override
    public QueryResult findIndexData(Integer offset, Integer rows) {
        List<Map<String,Object>> data = ecsGroupInfoDao.findDatas(offset,rows);
        Integer total = ecsGroupInfoDao.findTotal();
        QueryResult result = new QueryResult();
        result.setNumber(total);
        result.setData(data);
        return result;
    }

    @Override
    public List<Map<String, Object>> findGroupsInfo() {

        return ecsGroupInfoDao.findGroupsInfo();
    }

    @Override
    public int updateStatusById(String status, Long groupId) {

        return ecsGroupInfoDao.updateStatusById(status,groupId);
    }

    @Override
    public int deleteById(Long groupId) {

        return ecsGroupInfoDao.deleteById(groupId);
    }
}
