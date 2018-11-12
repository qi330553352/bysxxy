package com.chinasofti.sxxy.service;

import com.chinasofti.sxxy.entity.WorkInstance;
import com.chinasofti.sxxy.util.QueryResult;

/**
 * 创  建   时  间： 2018/10/12 18:08
 * 版           本: V1.0
 * 作           者: qixin
 * 版  权   所  有: 版权所有(C)2016-2026
 */
public interface WorkInstanceService {

    QueryResult findIndexData(Integer offset, Integer rows);

    int save(WorkInstance bean);
}
