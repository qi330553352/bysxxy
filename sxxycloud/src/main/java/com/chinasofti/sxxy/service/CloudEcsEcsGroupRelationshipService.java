package com.chinasofti.sxxy.service;

import com.chinasofti.sxxy.entity.CloudEcsEcsGroupRelationship;

import java.util.List;
import java.util.Map;

/**
 * 创 建  时 间： 2018/8/5 14:01
 * 版           本:  V1.0
 * 作           者:  qixin
 * Copyright (c) 2018, 中软国际.
 */
public interface CloudEcsEcsGroupRelationshipService {

    List<String> findEcsIdByEcsGroupId(Long groupId);

    int batchInserts(List<CloudEcsEcsGroupRelationship> list);

    List<Map<String,Object>> findlistDataChild(Long id);
}
