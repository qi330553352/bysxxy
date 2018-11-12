package com.chinasofti.sxxy.dao;

import com.chinasofti.sxxy.entity.CloudECSInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * 创 建  时 间： 2018/8/4 19:07
 * 版           本:  V1.0
 * 作           者:  qixin
 * Copyright (c) 2018, 中软国际.
 */
public interface CloudECSInfoDao {

    int batchInserts(List<CloudECSInfo> list);

    List<Map<String,Object>> findDatas(@Param("name")String name, @Param("addr")String addr,@Param("status")String status, @Param("page")Integer page,@Param("rows") Integer rows);

    Integer findTotal(@Param("name")String name, @Param("addr")String addr,@Param("status")String status);

    int batchUpdates(List<CloudECSInfo> list);
}
