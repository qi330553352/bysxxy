package com.chinasofti.sxxy.util;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * 创 建  时 间： 2018/8/4 19:30
 * 版           本:  V1.0
 * 作           者:  qixin
 * Copyright (c) 2018, 中软国际.
 */
@Data
public class QueryResult {

    /*  数据总条件 */
    private Integer number;
    private List<Map<String,Object>> data = new ArrayList<>();
}
