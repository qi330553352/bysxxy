package com.chinasofti.sxxy.entity;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 创 建  时 间： 2018/8/4 14:55
 * 版           本:  V1.0
 * 作           者:  qixin
 * Copyright (c) 2018, 中软国际.
 */
@Data
public class CloudECSInfo implements Serializable {

    private static final long serialVersionUID = 1L;

    /** 云服务器id */
    private String id;
    /** 云服务器名称 */
    private String name;
    /** 状态 */
    private String status;
    /** 私有IP地址 */
    private String addr;
    private String macAddr;

    private String addrType;
    private Integer addrVersion;
    private Date createTime;
    private Date updateTime;
    /** 上次同步华为云主机数据时间*/
    private Date lastUpdateTime;
}
