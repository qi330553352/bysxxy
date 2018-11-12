package com.chinasofti.sxxy.service.impl;

import com.chinasofti.sxxy.dao.WorkInstanceDao;
import com.chinasofti.sxxy.entity.WorkInstance;
import com.chinasofti.sxxy.service.WorkInstanceService;
import com.chinasofti.sxxy.util.QueryResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * 创  建   时  间： 2018/10/12 18:09
 * 版           本: V1.0
 * 作           者: qixin
 * 版  权   所  有: 版权所有(C)2016-2026
 */
@Service
public class WorkInstanceServiceImpl implements WorkInstanceService {

    @Autowired
    private WorkInstanceDao workInstanceDao;

    @Override
    public QueryResult findIndexData(Integer offset, Integer rows) {
        List<Map<String,Object>> data = workInstanceDao.findDatas(offset,rows);
        Integer total = workInstanceDao.findTotal();
        QueryResult result = new QueryResult();
        result.setNumber(total);
        result.setData(data);
        return result;
    }

    @Override
    public int save(WorkInstance bean) {

        return workInstanceDao.save(bean);
    }
}
