package com.chinasofti.sxxy.entity;

import lombok.Data;

/**
 * 创 建  时 间： 2018/8/4 17:04
 * 版           本:  V1.0
 * 作           者:  qixin
 * Copyright (c) 2018, 中软国际.
 */
@Data
public class SystemResource {

    private Long id;
    private String resourceName;
    private String url;
    private Long pid;
    private String pids;

    private String permission;
    private Integer resourceType;
    private String icon;
    private Integer idx;
    private boolean enabled;

    private String httpMethod;
}
