package com.chinasofti.sxxy.service;

import com.chinasofti.sxxy.entity.CloudECSInfo;
import com.chinasofti.sxxy.util.QueryResult;

import java.util.List; /**
 * 创 建  时 间： 2018/8/4 18:58
 * 版           本:  V1.0
 * 作           者:  qixin
 * Copyright (c) 2018, 中软国际.
 */
public interface CloudECSInfoService {

    int batchInserts(List<CloudECSInfo> list);

    QueryResult findIndexData(String name, String addr,String status, Integer page, Integer rows);

    int batchUpdates(List<CloudECSInfo> list);
}
