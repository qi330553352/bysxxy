package com.chinasofti.sxxy.entity;

import lombok.Data;

/**
 * 创 建  时 间： 2018/8/4 15:41
 * 版           本:  V1.0
 * 作           者:  qixin
 * Copyright (c) 2018, 中软国际.
 */
@Data
public class SystemUser {

    private String loginName;
    private String password;
    private String ip;
}
