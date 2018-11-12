package com.chinasofti.sxxy.realm;

import com.chinasofti.sxxy.entity.SystemUser;
import com.chinasofti.sxxy.util.ConfigCommons;
import com.chinasofti.sxxy.util.CryptographyUtil;
import org.apache.commons.lang.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;

import java.util.HashSet;
import java.util.Set;

/**
 * 创 建  时 间： 2018/8/4 15:55
 * 版           本:  V1.0
 * 作           者:  qixin
 * Copyright (c) 2018, 中软国际.
 */
public class WebAuthorizingRealm extends AuthorizingRealm {

    //为当前登录的用户授予角色和权限
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        String loginName = (String)principals.getPrimaryPrincipal();
        SimpleAuthorizationInfo authorizationInfo = new SimpleAuthorizationInfo();
        Set<String> roles = new HashSet<>();
        roles.add("超级管理员");
        authorizationInfo.setRoles(roles);

        Set<String> permissions = new HashSet<>();
        authorizationInfo.setStringPermissions(permissions);
        return authorizationInfo;
    }

    /**
     * 验证当前登录的用户
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        String loginName=(String)token.getPrincipal();
        Object obj = token.getCredentials();
        if(StringUtils.isEmpty(loginName) || !ConfigCommons.loginName.equals(loginName))
            throw new UnknownAccountException("用户名不存在");
        if(obj==null) throw new UnknownAccountException("请输入密码");
        SystemUser user = new SystemUser();
        user.setLoginName(loginName);
        if(obj instanceof char[]){
            char[] strs = (char[])obj;
            user.setPassword(String.valueOf(strs));
        }
        if(!ConfigCommons.password.equals(user.getPassword())) throw new UnknownAccountException("密码错误");
        SecurityUtils.getSubject().getSession().setAttribute(ConfigCommons.CURRENT_USER, user); // 当前用户信息存到session中
        return new SimpleAuthenticationInfo(user.getLoginName(),user.getPassword(), ConfigCommons.salt);
    }
}
