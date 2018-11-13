<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>书香校园B端</title>
    <script src="//cdn.bootcss.com/babel-polyfill/6.26.0/polyfill.min.js"></script>
    <link href="//cdn.bootcss.com/quill/1.3.6/quill.snow.min.css" rel="stylesheet" />
    <link href="//cdn.bootcss.com/quill/1.3.6/quill.bubble.min.css" rel="stylesheet" />
    <script src="//cdn.bootcss.com/vue/2.5.2/vue.min.js"></script>
    <script src="//cdn.bootcss.com/vuex/3.0.1/vuex.min.js"></script>
    <script src="//cdn.bootcss.com/axios/0.18.0/axios.min.js"></script>
    <script src="//cdn.bootcss.com/moment.js/2.22.1/moment.min.js"></script>
    <link href="//cdn.bootcss.com/element-ui/2.2.1/theme-chalk/index.css" rel="stylesheet" />
    <script src="//cdn.bootcss.com/element-ui/2.2.1/index.js"></script>
    <script src="//cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <link href="/backend/static/css/app.6aebe42b42dca43bd6930f565ab3a5af.css" rel="stylesheet" />
    <style type="text/css">@keyframes resizeanim { from { opacity: 0; } to { opacity: 0; } }
    .resize-triggers { animation: 1ms resizeanim; visibility: hidden; opacity: 0; }
    .resize-triggers, .resize-triggers > div, .contract-trigger:before { content: " "; display: block; position: absolute; top: 0; left: 0; height: 100%; width: 100%; overflow: hidden; z-index: -1 }
    .resize-triggers > div { background: #eee; overflow: auto; }
    .contract-trigger:before { width: 200%; height: 200%; }</style>
</head>
<body class="">
<div id="app">
    <div class="wrapper bg b-new-wrapper">
        <header id="header">
            <div class="hd">
                <div class="logo">
                    <a href="#/" class="router-link-active"><img src="/backend/static/img/logo.530c385.png" /></a>
                </div>
                <div class="right_header">
                    <div class="notice fl">
                        <span class="notice_img"></span>
                        <p class="notice_txt">
                            <marquee loop="loop" height="100">
                                公告测试3627
                            </marquee></p>
                    </div>
                </div>
                <div class="fr">
                    <a href="javacript:void(0);" class="msg fl"></a>
                    <div class="line fl"></div>
                    <div class="user_group fl">
                        <div class="user_img fl">
                            <img src="/backend/static/img/user.5daf539.jpeg" alt="用户头像" />
                        </div>
                        <div class="user_btn fl pos_rl">
                            <span>admin</span>
                            <samp></samp>
                            <ul class="user_manager">
                                <li class="no_border">退出</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
                <div class="place"></div>
            </div>
        </header>
        <div class="container mb30">
            <div class="b-page-breadcrumb-wrap">
                <div aria-label="Breadcrumb" role="navigation" class="el-breadcrumb">
                    <span class="el-breadcrumb__item"><a href="/index/main" class="el-breadcrumb__inner">首页</a><i class="el-breadcrumb__separator el-icon-arrow-right"></i></span>
                    <span class="el-breadcrumb__item"><a href="/user/index" class="el-breadcrumb__inner">用户管理</a><i class="el-breadcrumb__separator el-icon-arrow-right"></i></span>
                    <span class="el-breadcrumb__item" aria-current="page"><span role="link" class="el-breadcrumb__inner">权限管理</span><i class="el-breadcrumb__separator el-icon-arrow-right"></i></span>
                </div>
            </div>
            <div class="b-page-container authority-wrap">
                <div class="container-head clearfix">
                    <div class="left">
                        <label><input type="checkbox" class="container-checkbox" /> <span class="label-span">全选</span></label>
                        <button type="button" class="el-button el-button--primary el-button--default el-button--small">
                            <!---->
                            <!----><span>删除</span></button>
                        <button type="button" class="el-button el-button--primary el-button--default el-button--small">
                            <!---->
                            <!----><span>新建</span></button>
                    </div>
                    <div class="right">
                        <div class="el-select">
                            <!---->
                            <div class="el-input el-input--suffix">
                                <!---->
                                <input autocomplete="off" placeholder="请选择" size="" readonly="readonly" type="text" rows="2" class="el-input__inner" />
                                <!---->
                                <span class="el-input__suffix"><span class="el-input__suffix-inner"><i class="el-select__caret el-input__icon el-icon-arrow-up"></i>
                                    <!----></span>
                                    <!----></span>
                                <!---->
                            </div>
                            <div class="el-select-dropdown el-popper" style="display: none; min-width: 217px;">
                                <div class="el-scrollbar" style="">
                                    <div class="el-select-dropdown__wrap el-scrollbar__wrap" style="margin-bottom: -17px; margin-right: -17px;">
                                        <ul class="el-scrollbar__view el-select-dropdown__list" style="position: relative;">
                                            <div class="resize-triggers">
                                                <div class="expand-trigger">
                                                    <div style="width: 1px; height: 1px;"></div>
                                                </div>
                                                <div class="contract-trigger"></div>
                                            </div>
                                            <!---->
                                            <li class="el-select-dropdown__item"><span>活动管理服务</span></li>
                                            <li class="el-select-dropdown__item"><span>填答卷管理服务</span></li>
                                            <li class="el-select-dropdown__item"><span>机构管理服务</span></li>
                                            <li class="el-select-dropdown__item"><span>用户管理服务</span></li>
                                            <li class="el-select-dropdown__item"><span>信息管理服务</span></li>
                                            <li class="el-select-dropdown__item"><span>数据统计管理服务</span></li>
                                            <li class="el-select-dropdown__item"><span>系统管理服务</span></li>
                                            <li class="el-select-dropdown__item"><span>服务管理服务</span></li>
                                            <li class="el-select-dropdown__item"><span>服务-8700</span></li>
                                            <li class="el-select-dropdown__item"><span>订单管理服务</span></li>
                                            <li class="el-select-dropdown__item"><span>图书管理服务</span></li>
                                            <li class="el-select-dropdown__item"><span>测评管理服务</span></li>
                                            <li class="el-select-dropdown__item"><span>试题管理服务</span></li>
                                            <li class="el-select-dropdown__item"><span>第三方应用管理</span></li>
                                            <li class="el-select-dropdown__item"><span>活动管理</span></li>
                                            <li class="el-select-dropdown__item"><span>密密麻麻</span></li>
                                            <li class="el-select-dropdown__item"><span>填答卷管理</span></li>
                                            <li class="el-select-dropdown__item"><span>TEST-6077</span></li>
                                            <li class="el-select-dropdown__item"><span>TEST-6337</span></li>
                                            <li class="el-select-dropdown__item"><span>TEST-7008</span></li>
                                            <li class="el-select-dropdown__item"><span>Service-2770</span></li>
                                            <li class="el-select-dropdown__item"><span>Service-2295</span></li>
                                        </ul>
                                    </div>
                                    <div class="el-scrollbar__bar is-horizontal">
                                        <div class="el-scrollbar__thumb" style="transform: translateX(0%);"></div>
                                    </div>
                                    <div class="el-scrollbar__bar is-vertical">
                                        <div class="el-scrollbar__thumb" style="transform: translateY(0%);"></div>
                                    </div>
                                </div>
                                <!---->
                            </div>
                            <div class="resize-triggers">
                                <div class="expand-trigger">
                                    <div style="width: 218px; height: 61px;"></div>
                                </div>
                                <div class="contract-trigger"></div>
                            </div>
                        </div>
                        <div class="search-input el-input el-input-group el-input-group--append">
                            <!---->
                            <input autocomplete="off" placeholder="请输入权限名" type="text" rows="2" validateevent="true" class="el-input__inner" />
                            <!---->
                            <!---->
                            <div class="el-input-group__append">
                                <button type="button" class="el-button el-button--default">
                                    <!----><i class="el-icon-search"></i>
                                    <!----></button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="b-container-table">
                    <div class="el-table el-table--fit el-table--enable-row-hover el-table--enable-row-transition" style="width: 100%;">
                        <div class="hidden-columns">
                            <div></div>
                            <div></div>
                            <div></div>
                            <div></div>
                            <div></div>
                            <div></div>
                            <div></div>
                            <div></div>
                        </div>
                        <div class="el-table__header-wrapper">
                            <table cellspacing="0" cellpadding="0" border="0" class="el-table__header" style="width: 1240px;">
                                <colgroup>
                                    <col name="el-table_4_column_20" width="50" />
                                    <col name="el-table_4_column_21" width="120" />
                                    <col name="el-table_4_column_22" width="120" />
                                    <col name="el-table_4_column_23" width="190" />
                                    <col name="el-table_4_column_24" width="190" />
                                    <col name="el-table_4_column_25" width="190" />
                                    <col name="el-table_4_column_26" width="190" />
                                    <col name="el-table_4_column_27" width="190" />
                                    <col name="gutter" width="0" />
                                </colgroup>
                                <thead class="has-gutter">
                                <tr class="">
                                    <th colspan="1" rowspan="1" class="el-table_4_column_20     is-leaf">
                                        <div class="cell"></div></th>
                                    <th colspan="1" rowspan="1" class="el-table_4_column_21     is-leaf">
                                        <div class="cell">
                                            权限ID
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_4_column_22     is-leaf">
                                        <div class="cell">
                                            权限名
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_4_column_23     is-leaf">
                                        <div class="cell">
                                            权限类型
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_4_column_24     is-leaf">
                                        <div class="cell">
                                            URL
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_4_column_25     is-leaf">
                                        <div class="cell">
                                            创建时间
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_4_column_26     is-leaf">
                                        <div class="cell">
                                            所属服务
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_4_column_27     is-leaf">
                                        <div class="cell">
                                            操作
                                        </div></th>
                                    <th class="gutter" style="width: 0px; display: none;"></th>
                                </tr>
                                </thead>
                            </table>
                        </div>
                        <div class="el-table__body-wrapper is-scrolling-none">
                            <table cellspacing="0" cellpadding="0" border="0" class="el-table__body" style="width: 1240px;">
                                <colgroup>
                                    <col name="el-table_4_column_20" width="50" />
                                    <col name="el-table_4_column_21" width="120" />
                                    <col name="el-table_4_column_22" width="120" />
                                    <col name="el-table_4_column_23" width="190" />
                                    <col name="el-table_4_column_24" width="190" />
                                    <col name="el-table_4_column_25" width="190" />
                                    <col name="el-table_4_column_26" width="190" />
                                    <col name="el-table_4_column_27" width="190" />
                                </colgroup>
                                <tbody>
                                <tr class="el-table__row">
                                    <td class="el-table_4_column_20  ">
                                        <div class="cell">
                                            <input type="checkbox" class="checkbox" value="5be43cc6b2b0f9085b0b12bb" />
                                        </div></td>
                                    <td class="el-table_4_column_21  ">
                                        <div class="cell">
                                            5be43cc6b2b0f9085b0b12bb
                                        </div></td>
                                    <td class="el-table_4_column_22  ">
                                        <div class="cell">
                                            测试9440
                                        </div></td>
                                    <td class="el-table_4_column_23  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            <div>
                                                操作权限
                                            </div>
                                        </div></td>
                                    <td class="el-table_4_column_24  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            没有检测63499055
                                        </div></td>
                                    <td class="el-table_4_column_25  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            <div>
                                                2018-11-08 01:23:40
                                            </div>
                                        </div></td>
                                    <td class="el-table_4_column_26  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            【服务管理】服务
                                        </div></td>
                                    <td class="el-table_4_column_27  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            <i class="el-icon-view"></i>
                                            <i class="el-icon-edit-outline"></i>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_4_column_20  ">
                                        <div class="cell">
                                            <input type="checkbox" class="checkbox" value="5bdbb94bb2b0f90858fb5738" />
                                        </div></td>
                                    <td class="el-table_4_column_21  ">
                                        <div class="cell">
                                            5bdbb94bb2b0f90858fb5738
                                        </div></td>
                                    <td class="el-table_4_column_22  ">
                                        <div class="cell">
                                            测试5406
                                        </div></td>
                                    <td class="el-table_4_column_23  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            <div>
                                                操作权限
                                            </div>
                                        </div></td>
                                    <td class="el-table_4_column_24  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            没有检测26339278
                                        </div></td>
                                    <td class="el-table_4_column_25  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            <div>
                                                2018-11-02 02:14:41
                                            </div>
                                        </div></td>
                                    <td class="el-table_4_column_26  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            【服务管理】服务
                                        </div></td>
                                    <td class="el-table_4_column_27  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            <i class="el-icon-view"></i>
                                            <i class="el-icon-edit-outline"></i>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_4_column_20  ">
                                        <div class="cell">
                                            <input type="checkbox" class="checkbox" value="5bdab868b2b0f9082c7699cf" />
                                        </div></td>
                                    <td class="el-table_4_column_21  ">
                                        <div class="cell">
                                            5bdab868b2b0f9082c7699cf
                                        </div></td>
                                    <td class="el-table_4_column_22  ">
                                        <div class="cell">
                                            测试1766
                                        </div></td>
                                    <td class="el-table_4_column_23  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            <div>
                                                操作权限
                                            </div>
                                        </div></td>
                                    <td class="el-table_4_column_24  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            没有检测87974804
                                        </div></td>
                                    <td class="el-table_4_column_25  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            <div>
                                                2018-11-01 08:12:25
                                            </div>
                                        </div></td>
                                    <td class="el-table_4_column_26  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            【服务管理】服务
                                        </div></td>
                                    <td class="el-table_4_column_27  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            <i class="el-icon-view"></i>
                                            <i class="el-icon-edit-outline"></i>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_4_column_20  ">
                                        <div class="cell">
                                            <input type="checkbox" class="checkbox" value="5bc6e29cb2b0f9085e4fddcd" />
                                        </div></td>
                                    <td class="el-table_4_column_21  ">
                                        <div class="cell">
                                            5bc6e29cb2b0f9085e4fddcd
                                        </div></td>
                                    <td class="el-table_4_column_22  ">
                                        <div class="cell">
                                            密密麻麻密密麻麻木木木木
                                        </div></td>
                                    <td class="el-table_4_column_23  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            <div>
                                                操作权限
                                            </div>
                                        </div></td>
                                    <td class="el-table_4_column_24  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            密密麻麻
                                        </div></td>
                                    <td class="el-table_4_column_25  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            <div>
                                                2018-10-17 07:56:19
                                            </div>
                                        </div></td>
                                    <td class="el-table_4_column_26  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            密密麻麻
                                        </div></td>
                                    <td class="el-table_4_column_27  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            <i class="el-icon-view"></i>
                                            <i class="el-icon-edit-outline"></i>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_4_column_20  ">
                                        <div class="cell">
                                            <input type="checkbox" class="checkbox" value="5bbd6f9db2b0f90869a13305" />
                                        </div></td>
                                    <td class="el-table_4_column_21  ">
                                        <div class="cell">
                                            5bbd6f9db2b0f90869a13305
                                        </div></td>
                                    <td class="el-table_4_column_22  ">
                                        <div class="cell">
                                            调用管理页面权限
                                        </div></td>
                                    <td class="el-table_4_column_23  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            <div>
                                                显示权限
                                            </div>
                                        </div></td>
                                    <td class="el-table_4_column_24  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            dsfyygl.dygl
                                        </div></td>
                                    <td class="el-table_4_column_25  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            <div>
                                                2018-10-10 03:53:18
                                            </div>
                                        </div></td>
                                    <td class="el-table_4_column_26  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            第三方应用管理
                                        </div></td>
                                    <td class="el-table_4_column_27  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            <i class="el-icon-view"></i>
                                            <i class="el-icon-edit-outline"></i>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_4_column_20  ">
                                        <div class="cell">
                                            <input type="checkbox" class="checkbox" value="5bbd6e45b2b0f90869a132fa" />
                                        </div></td>
                                    <td class="el-table_4_column_21  ">
                                        <div class="cell">
                                            5bbd6e45b2b0f90869a132fa
                                        </div></td>
                                    <td class="el-table_4_column_22  ">
                                        <div class="cell">
                                            标签管理页面权限
                                        </div></td>
                                    <td class="el-table_4_column_23  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            <div>
                                                显示权限
                                            </div>
                                        </div></td>
                                    <td class="el-table_4_column_24  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            stgl.bqgl
                                        </div></td>
                                    <td class="el-table_4_column_25  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            <div>
                                                2018-10-10 03:09:13
                                            </div>
                                        </div></td>
                                    <td class="el-table_4_column_26  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            试题管理服务
                                        </div></td>
                                    <td class="el-table_4_column_27  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            <i class="el-icon-view"></i>
                                            <i class="el-icon-edit-outline"></i>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_4_column_20  ">
                                        <div class="cell">
                                            <input type="checkbox" class="checkbox" value="5bbd6e01b2b0f90869a132f9" />
                                        </div></td>
                                    <td class="el-table_4_column_21  ">
                                        <div class="cell">
                                            5bbd6e01b2b0f90869a132f9
                                        </div></td>
                                    <td class="el-table_4_column_22  ">
                                        <div class="cell">
                                            试题管理二级页面试题管理页面权限
                                        </div></td>
                                    <td class="el-table_4_column_23  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            <div>
                                                显示权限
                                            </div>
                                        </div></td>
                                    <td class="el-table_4_column_24  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            stgl.stgl
                                        </div></td>
                                    <td class="el-table_4_column_25  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            <div>
                                                2018-10-10 03:02:12
                                            </div>
                                        </div></td>
                                    <td class="el-table_4_column_26  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            试题管理服务
                                        </div></td>
                                    <td class="el-table_4_column_27  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            <i class="el-icon-view"></i>
                                            <i class="el-icon-edit-outline"></i>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_4_column_20  ">
                                        <div class="cell">
                                            <input type="checkbox" class="checkbox" value="5bbd6d3eb2b0f90869a132f8" />
                                        </div></td>
                                    <td class="el-table_4_column_21  ">
                                        <div class="cell">
                                            5bbd6d3eb2b0f90869a132f8
                                        </div></td>
                                    <td class="el-table_4_column_22  ">
                                        <div class="cell">
                                            试题管理页面权限
                                        </div></td>
                                    <td class="el-table_4_column_23  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            <div>
                                                显示权限
                                            </div>
                                        </div></td>
                                    <td class="el-table_4_column_24  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            stgl
                                        </div></td>
                                    <td class="el-table_4_column_25  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            <div>
                                                2018-10-10 03:46:08
                                            </div>
                                        </div></td>
                                    <td class="el-table_4_column_26  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            试题管理服务
                                        </div></td>
                                    <td class="el-table_4_column_27  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            <i class="el-icon-view"></i>
                                            <i class="el-icon-edit-outline"></i>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_4_column_20  ">
                                        <div class="cell">
                                            <input type="checkbox" class="checkbox" value="5bbd6cb4b2b0f90869a132f6" />
                                        </div></td>
                                    <td class="el-table_4_column_21  ">
                                        <div class="cell">
                                            5bbd6cb4b2b0f90869a132f6
                                        </div></td>
                                    <td class="el-table_4_column_22  ">
                                        <div class="cell">
                                            测评模板管理页面权限
                                        </div></td>
                                    <td class="el-table_4_column_23  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            <div>
                                                操作权限
                                            </div>
                                        </div></td>
                                    <td class="el-table_4_column_24  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            cpgl.cpmbgl
                                        </div></td>
                                    <td class="el-table_4_column_25  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            <div>
                                                2018-10-10 03:29:06
                                            </div>
                                        </div></td>
                                    <td class="el-table_4_column_26  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            测评管理服务
                                        </div></td>
                                    <td class="el-table_4_column_27  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            <i class="el-icon-view"></i>
                                            <i class="el-icon-edit-outline"></i>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_4_column_20  ">
                                        <div class="cell">
                                            <input type="checkbox" class="checkbox" value="5bbd6c55b2b0f90869a132f5" />
                                        </div></td>
                                    <td class="el-table_4_column_21  ">
                                        <div class="cell">
                                            5bbd6c55b2b0f90869a132f5
                                        </div></td>
                                    <td class="el-table_4_column_22  ">
                                        <div class="cell">
                                            测评规则管理页面权限
                                        </div></td>
                                    <td class="el-table_4_column_23  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            <div>
                                                显示权限
                                            </div>
                                        </div></td>
                                    <td class="el-table_4_column_24  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            cpgl.cpgzgl
                                        </div></td>
                                    <td class="el-table_4_column_25  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            <div>
                                                2018-10-10 03:54:04
                                            </div>
                                        </div></td>
                                    <td class="el-table_4_column_26  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            测评管理服务
                                        </div></td>
                                    <td class="el-table_4_column_27  ">
                                        <div class="cell el-tooltip" style="width: 189px;">
                                            <i class="el-icon-view"></i>
                                            <i class="el-icon-edit-outline"></i>
                                        </div></td>
                                </tr>
                                <!---->
                                </tbody>
                            </table>
                            <!---->
                            <!---->
                        </div>
                        <!---->
                        <!---->
                        <!---->
                        <!---->
                        <div class="el-table__column-resize-proxy" style="display: none;"></div>
                        <div class="resize-triggers">
                            <div class="expand-trigger">
                                <div style="width: 1241px; height: 782px;"></div>
                            </div>
                            <div class="contract-trigger"></div>
                        </div>
                    </div>
                    <div class="new-pagination el-pagination" style="text-align: right;">
                        <span class="el-pagination__total">共 45 条</span>
                        <button type="button" class="btn-prev disabled"><i class="el-icon el-icon-arrow-left"></i></button>
                        <ul class="el-pager">
                            <li class="number active">1</li>
                            <!---->
                            <li class="number">2</li>
                            <li class="number">3</li>
                            <li class="number">4</li>
                            <!---->
                            <li class="number">5</li>
                        </ul>
                        <button type="button" class="btn-next"><i class="el-icon el-icon-arrow-right"></i></button>
                        <span class="el-pagination__jump">前往
         <div class="el-input el-pagination__editor is-in-pagination">
          <!---->
          <input autocomplete="off" type="number" rows="2" max="5" min="1" validateevent="true" class="el-input__inner" />
             <!---->
             <!---->
             <!---->
         </div>页</span>
                    </div>
                </div>
            </div>
        </div>
        <footer data-v-16cfdc27="" id="footer">
            <div data-v-16cfdc27="" class="footer_box">
                <div data-v-16cfdc27="" class="fl copyright">
                    <img data-v-16cfdc27="" src="/backend/static/img/wechat.5825195.jpg" alt="wechat" width="70" height="70" class="copyright-wechat fl" />
                    <div data-v-16cfdc27="" class="copyright-text-box">
                        <p data-v-16cfdc27="" class="copyright-text">关注“书香校园在线”公众号 了解更多阅读资讯</p>
                        <p data-v-16cfdc27="" class="copyright-text">博雅优创（深圳）有限公司</p>
                        <p data-v-16cfdc27="" class="copyright-text">粤ICP备17004251号</p>
                    </div>
                </div>
                <div data-v-16cfdc27="" class="fr statement">
                    <a data-v-16cfdc27="" href="#/bDisclaimer" class=""></a>
                    <a data-v-16cfdc27="" href="javascript:;">免责声明</a>
                    <span data-v-16cfdc27=""></span>
                    <a data-v-16cfdc27="" href="#/bPrivacy" class=""></a>
                    <a data-v-16cfdc27="" href="javascript:;">用户隐私保护声明</a>
                    <span data-v-16cfdc27=""></span>
                    <a data-v-16cfdc27="" href="#/bService" class=""></a>
                    <a data-v-16cfdc27="" href="javascript:;">用户服务协议</a>
                </div>
            </div>
        </footer>
        <div class="el-dialog__wrapper user-org-dialog" style="display: none;">
            <div class="el-dialog el-dialog--center" style="width: 760px; margin-top: 15vh;">
                <div class="el-dialog__header">
                    <div>
                        <p>新建权限</p>
                    </div>
                    <button type="button" aria-label="Close" class="el-dialog__headerbtn"><i class="el-dialog__close el-icon el-icon-close"></i></button>
                </div>
                <!---->
                <div class="el-dialog__footer">
       <span class="dialog-footer"><button type="button" class="el-button el-button--default is-plain">
         <!---->
           <!----><span>取 消</span></button> <button type="button" class="el-button el-button--primary">
         <!---->
           <!----><span>确 定</span></button></span>
                </div>
            </div>
        </div>
        <div class="el-dialog__wrapper preview-org-dialog" style="display: none;">
            <div class="el-dialog el-dialog--center" style="width: 550px; margin-top: 15vh;">
                <div class="el-dialog__header">
                    <span class="el-dialog__title">查看权限</span>
                    <button type="button" aria-label="Close" class="el-dialog__headerbtn"><i class="el-dialog__close el-icon el-icon-close"></i></button>
                </div>
                <!---->
                <!---->
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="/backend/static/js/manifest.c14e77f4d85201197bc4.js"></script>
<script type="text/javascript" src="/backend/static/js/vendor.77db51a60fc55cf48c45.js"></script>
</body>
</html>