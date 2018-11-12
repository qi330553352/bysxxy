package com.chinasofti.sxxy.util;

import org.apache.shiro.crypto.hash.Md5Hash;

/**
 * 创 建  时 间： 2018/8/4 15:42
 * 版           本:  V1.0
 * 作           者:  qixin
 * Copyright (c) 2018, 中软国际.
 */
public class CryptographyUtil {


    /**
     * Md5加密
     * @param str 要加密的字符串
     * @param salt 盐值
     * @return 加密后的字符串
     * @author qixin
     */
    public static String md5(String str, String salt) {

        return new Md5Hash(str,salt).toString();
    }

    public static void main(String[] args) {
        String password="qixin123";
        System.out.println("Md5加密："+CryptographyUtil.md5(password, ConfigCommons.salt));
    }
}
