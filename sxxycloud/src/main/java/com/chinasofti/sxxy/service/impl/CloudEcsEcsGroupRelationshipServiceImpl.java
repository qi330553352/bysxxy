package com.chinasofti.sxxy.service.impl;

import com.chinasofti.sxxy.dao.CloudEcsEcsGroupRelationshipDao;
import com.chinasofti.sxxy.entity.CloudEcsEcsGroupRelationship;
import com.chinasofti.sxxy.service.CloudEcsEcsGroupRelationshipService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 创 建  时 间： 2018/8/5 14:01
 * 版           本:  V1.0
 * 作           者:  qixin
 * Copyright (c) 2018, 中软国际.
 */
@Service
public class CloudEcsEcsGroupRelationshipServiceImpl implements CloudEcsEcsGroupRelationshipService {

    @Autowired
    private CloudEcsEcsGroupRelationshipDao relationshipDao;

    @Override
    public List<String> findEcsIdByEcsGroupId(Long groupId) {

        return relationshipDao.findEcsIdByEcsGroupId(groupId);
    }

    @Override
    public int batchInserts(List<CloudEcsEcsGroupRelationship> list) {

        return relationshipDao.batchInserts(list);
    }

    @Override
    public List<Map<String, Object>> findlistDataChild(Long id) {
        List<Map<String,Object>> list = new ArrayList<>();
        List<Map<String,Object>> listMap = relationshipDao.findlistDataChild(id);
        int num = 0;
        for(Map<String,Object> m : listMap){
            ++num;
            List<Object> cell = new ArrayList<>();
            cell.add(String.valueOf(num));
            cell.add(m.get("name"));
            cell.add(m.get("addr"));
            cell.add(m.get("status"));
//            cell.add(m.get("id"));
//            cell.add(m.get("updateTime"));
//            cell.add(m.get("lastUpdateTime"));
            Map<String,Object> map = new HashMap<>();
            map.put("cell",cell);
            list.add(map);
        }
        return list;
    }
}
