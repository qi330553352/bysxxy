package com.chinasofti.sxxy.realm;

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
 * 创 建 时 间: 2018/11/8
 * 版       本: V1.0
 * 作       者: qixin
 * 版 权 所 有: 版权所有(C)2016-2026
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

        return new SimpleAuthenticationInfo();
    }

}
