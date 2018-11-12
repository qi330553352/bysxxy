package com.chinasofti.sxxy.entity;

import lombok.Data;

import java.util.Date;

/** 云组机组管理
 * 创 建  时 间： 2018/8/4 20:42
 * 版           本:  V1.0
 * 作           者:  qixin
 * Copyright (c) 2018, 中软国际.
 */
@Data
public class EcsGroupInfo {

    private Long id;
    private String groupName;
    /** 云主机组运行状态*/
    private String status;
    /** 备注说明*/
    private String remarks;
    private Date createTime;
}
