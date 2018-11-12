package com.chinasofti.sxxy.dao;

import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * 创 建  时 间： 2018/8/5 11:06
 * 版           本:  V1.0
 * 作           者:  qixin
 * Copyright (c) 2018, 中软国际.
 */
public interface EcsGroupInfoDao {

    List<Map<String,Object>> findDatas(@Param("page")Integer page, @Param("rows") Integer rows);

    Integer findTotal();

    List<Map<String,Object>> findGroupsInfo();

    int updateStatusById(@Param("status")String status,@Param("id") Long id);

    int deleteById(Long id);
}
