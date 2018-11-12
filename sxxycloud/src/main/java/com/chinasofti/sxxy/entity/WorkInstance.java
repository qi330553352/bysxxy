package com.chinasofti.sxxy.entity;

import lombok.Data;

import java.util.Date;

/**
 * 创  建   时  间： 2018/10/12 12:20
 * 版           本: V1.0
 * 作           者: qixin
 * 版  权   所  有: 版权所有(C)2016-2026
 */
@Data
public class WorkInstance {

    private Long id;
    /* 提出人 */
    private String introducer;
    /* 工单提出时间 */
    private Date createTime;
    /* 工单类型 */
    private String workType;
    /* 诉求描述 */
    private String describes;
}
