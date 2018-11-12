package com.chinasofti.sxxy.entity;

import lombok.Data;

/** 云主机与云主机组关系表
 * 创 建  时 间： 2018/8/4 20:50
 * 版           本:  V1.0
 * 作           者:  qixin
 * Copyright (c) 2018, 中软国际.
 */
@Data
public class CloudEcsEcsGroupRelationship {

    private Long id;
    private String cloudecsId;
    private Long ecsGroupId;
}
