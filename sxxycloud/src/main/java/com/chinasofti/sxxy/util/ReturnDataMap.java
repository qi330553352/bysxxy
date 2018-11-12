package com.chinasofti.sxxy.util;

import lombok.Data;

import java.util.HashMap;

/**
 * 创 建  时 间： 2018/8/4 15:49
 * 版           本:  V1.0
 * 作           者:  qixin
 * Copyright (c) 2018, 中软国际.
 */
@Data
public class ReturnDataMap extends HashMap<String,Object> {

    public ReturnDataMap(){
        this.put("success",true);
        this.put("msg","");
    }

    public ReturnDataMap(boolean success,String msg){
        this.put("success",success);
        this.put("msg",msg);
    }

    /**
     * 初始化自定义 HashMap 对象
     * @param success 返回结果
     * @param msg 返回消息
     * @param key 参数名称
     * @param value 参数值
     * @author qixin
     */
    public ReturnDataMap(boolean success,String msg,String key,boolean value){
        this.put("success",success);
        this.put("msg",msg);
        this.put(key,value);
    }

}
