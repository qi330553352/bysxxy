package com.chinasofti.sxxy.util;

import lombok.Getter;

/**
 * 创 建  时 间： 2018/8/5 16:43
 * 版           本:  V1.0
 * 作           者:  qixin
 * Copyright (c) 2018, 中软国际.
 */
public enum StatusEnum {

    ACTIVE("运行中","active"),
    SHUTOFF("关机","shutoff");
    /** 含义 */
    @Getter
    private String meaning;
    /** 代码 */
    @Getter
    private String code;

    public static String getMeaning(String code){
        for (StatusEnum bean : StatusEnum.values()) {
            if (bean.getCode().equals(code)) {
                return bean.getMeaning();
            }
        }
        return null;
    }

    StatusEnum(String meaning, String code) {
        this.meaning = meaning;
        this.code = code;
    }
}
