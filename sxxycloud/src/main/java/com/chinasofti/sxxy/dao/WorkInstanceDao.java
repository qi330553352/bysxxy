package com.chinasofti.sxxy.dao;

import com.chinasofti.sxxy.entity.WorkInstance;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * 创  建   时  间： 2018/10/12 18:08
 * 版           本: V1.0
 * 作           者: qixin
 * 版  权   所  有: 版权所有(C)2016-2026
 */
public interface WorkInstanceDao {

    List<Map<String,Object>> findDatas(@Param("page")Integer page, @Param("rows") Integer rows);

    Integer findTotal();

    int save(WorkInstance bean);
}
