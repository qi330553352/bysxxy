package com.chinasofti.sxxy.service;

import java.util.List;
import java.util.Map;

/**
 * 创 建  时 间： 2018/8/4 17:04
 * 版           本:  V1.0
 * 作           者:  qixin
 * Copyright (c) 2018, 中软国际.
 */
public interface SystemResourceServer {

    List<Map<String,Object>> findTopList();

    List<Map<String,Object>> findListByPid(Long pid);
}
