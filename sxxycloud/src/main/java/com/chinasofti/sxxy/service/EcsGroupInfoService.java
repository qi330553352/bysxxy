package com.chinasofti.sxxy.service;

import com.chinasofti.sxxy.util.QueryResult;

import java.util.List;
import java.util.Map;

/**
 * 创 建  时 间： 2018/8/5 11:03
 * 版           本:  V1.0
 * 作           者:  qixin
 * Copyright (c) 2018, 中软国际.
 */
public interface EcsGroupInfoService {

    QueryResult findIndexData(Integer offset, Integer rows);

    List<Map<String,Object>> findGroupsInfo();

    int updateStatusById(String status, Long groupId);

    int deleteById(Long groupId);
}
