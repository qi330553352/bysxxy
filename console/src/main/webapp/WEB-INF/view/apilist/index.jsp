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
<body class="" style="">
<div id="app">
    <div class="wrapper bg">
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
        <div id="container_1" class="container mgb0">
            <div class="menu_bar">
                <a href="#/" class="router-link-active">首页</a>&nbsp;&gt;&nbsp;
                <a href="javascript:void(0);">服务管理</a>
                <hr />
            </div>
            <div class="page_container">
                <div class="page_search">
                    <div class="el-col el-col-2">
                        <div class="check_all_item">
                            <input type="checkbox" class="check_box_all" />
                            <span>全选</span>
                        </div>
                    </div>
                    <div class="el-col el-col-2">
                        <button type="button" class="el-button el-button--default">
                            <!---->
                            <!----><span>删除服务</span></button>
                    </div>
                    <div class="el-col el-col-2">
                        <button type="button" class="el-button el-button--default">
                            <!---->
                            <!----><span>新建服务</span></button>
                    </div>
                    <div class="el-col el-col-2">
                        <div class="el-select search_type">
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
                            <div class="el-select-dropdown el-popper" style="display: none; min-width: 101.656px;">
                                <div class="el-scrollbar" style="">
                                    <div class="el-select-dropdown__wrap el-scrollbar__wrap" style="margin-bottom: -17px; margin-right: -17px;">
                                        <ul class="el-scrollbar__view el-select-dropdown__list" style="position: relative;">
                                            <!---->
                                            <li class="el-select-dropdown__item selected"><span>服务名</span></li>
                                            <li class="el-select-dropdown__item"><span>映射名</span></li>
                                            <li class="el-select-dropdown__item"><span>服务ID</span></li>
                                            <div class="resize-triggers">
                                                <div class="expand-trigger">
                                                    <div style="width: 1px; height: 1px;"></div>
                                                </div>
                                                <div class="contract-trigger"></div>
                                            </div>
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
                                    <div style="width: 103px; height: 31px;"></div>
                                </div>
                                <div class="contract-trigger"></div>
                            </div>
                        </div>
                    </div>
                    <div class="el-col el-col-4">
                        <div class="title_search el-input el-input--suffix">
                            <!---->
                            <input autocomplete="off" placeholder="请输入关键字" type="text" rows="2" validateevent="true" class="el-input__inner" />
                            <!---->
                            <span class="el-input__suffix"><span class="el-input__suffix-inner"><i class="el-input__icon el-icon-search"></i>
                                <!----></span>
                                <!----></span>
                            <!---->
                        </div>
                    </div>
                </div>
                <div class="page_content">
                    <div class="el-table el-table--fit el-table--border el-table--enable-row-transition" style="width: 100%;">
                        <div class="hidden-columns">
                            <div></div>
                            <div></div>
                            <div></div>
                            <div></div>
                            <div></div>
                            <div></div>
                        </div>
                        <div class="el-table__header-wrapper">
                            <table cellspacing="0" cellpadding="0" border="0" class="el-table__header" style="width: 1205px;">
                                <colgroup>
                                    <col name="el-table_18_column_111" width="50" />
                                    <col name="el-table_18_column_112" width="210" />
                                    <col name="el-table_18_column_113" width="320" />
                                    <col name="el-table_18_column_114" width="285" />
                                    <col name="el-table_18_column_115" width="170" />
                                    <col name="el-table_18_column_116" width="170" />
                                    <col name="gutter" width="0" />
                                </colgroup>
                                <thead class="has-gutter">
                                <tr class="">
                                    <th colspan="1" rowspan="1" class="el-table_18_column_111     is-leaf">
                                        <div class="cell"></div></th>
                                    <th colspan="1" rowspan="1" class="el-table_18_column_112     is-leaf">
                                        <div class="cell">
                                            服务ID
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_18_column_113     is-leaf">
                                        <div class="cell">
                                            服务名
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_18_column_114     is-leaf">
                                        <div class="cell">
                                            映射名
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_18_column_115     is-leaf">
                                        <div class="cell">
                                            创建时间
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_18_column_116     is-hidden is-leaf">
                                        <div class="cell">
                                            操作
                                        </div></th>
                                    <th class="gutter" style="width: 0px; display: none;"></th>
                                </tr>
                                </thead>
                            </table>
                        </div>
                        <div class="el-table__body-wrapper is-scrolling-none">
                            <table cellspacing="0" cellpadding="0" border="0" class="el-table__body" style="width: 1205px;">
                                <colgroup>
                                    <col name="el-table_18_column_111" width="50" />
                                    <col name="el-table_18_column_112" width="210" />
                                    <col name="el-table_18_column_113" width="320" />
                                    <col name="el-table_18_column_114" width="285" />
                                    <col name="el-table_18_column_115" width="170" />
                                    <col name="el-table_18_column_116" width="170" />
                                </colgroup>
                                <tbody>
                                <tr class="el-table__row">
                                    <td class="el-table_18_column_111  ">
                                        <div class="cell">
                                            <input type="checkbox" value="5be43cd3b2b0f9085b0b12bc" />
                                        </div></td>
                                    <td class="el-table_18_column_112  ">
                                        <div class="cell">
                                            5be43cd3b2b0f9085b0b12bc
                                        </div></td>
                                    <td class="el-table_18_column_113  ">
                                        <div class="cell">
                                            Service-2295
                                        </div></td>
                                    <td class="el-table_18_column_114  ">
                                        <div class="cell">
                                            Service-2295
                                        </div></td>
                                    <td class="el-table_18_column_115  ">
                                        <div class="cell">
                                            <span>2018-11-08 21:40:35</span>
                                        </div></td>
                                    <td class="el-table_18_column_116   is-hidden">
                                        <div class="cell">
                                            <button type="button" class="el-button el-button--text el-button--small">
                                                <!---->
                                                <!----><span>查看</span></button>
                                            <button type="button" class="el-button el-button--text el-button--small">
                                                <!---->
                                                <!----><span>编辑</span></button>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_18_column_111  ">
                                        <div class="cell">
                                            <input type="checkbox" value="5bdc53c6b2b0f90858fb5796" />
                                        </div></td>
                                    <td class="el-table_18_column_112  ">
                                        <div class="cell">
                                            5bdc53c6b2b0f90858fb5796
                                        </div></td>
                                    <td class="el-table_18_column_113  ">
                                        <div class="cell">
                                            Service-2770
                                        </div></td>
                                    <td class="el-table_18_column_114  ">
                                        <div class="cell">
                                            Service-2770
                                        </div></td>
                                    <td class="el-table_18_column_115  ">
                                        <div class="cell">
                                            <span>2018-11-02 21:40:22</span>
                                        </div></td>
                                    <td class="el-table_18_column_116   is-hidden">
                                        <div class="cell">
                                            <button type="button" class="el-button el-button--text el-button--small">
                                                <!---->
                                                <!----><span>查看</span></button>
                                            <button type="button" class="el-button el-button--text el-button--small">
                                                <!---->
                                                <!----><span>编辑</span></button>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_18_column_111  ">
                                        <div class="cell">
                                            <input type="checkbox" value="5bdbc11ab2b0f90858fb5750" />
                                        </div></td>
                                    <td class="el-table_18_column_112  ">
                                        <div class="cell">
                                            5bdbc11ab2b0f90858fb5750
                                        </div></td>
                                    <td class="el-table_18_column_113  ">
                                        <div class="cell">
                                            TEST-7008
                                        </div></td>
                                    <td class="el-table_18_column_114  ">
                                        <div class="cell">
                                            TEST-7008
                                        </div></td>
                                    <td class="el-table_18_column_115  ">
                                        <div class="cell">
                                            <span>2018-11-02 11:14:34</span>
                                        </div></td>
                                    <td class="el-table_18_column_116   is-hidden">
                                        <div class="cell">
                                            <button type="button" class="el-button el-button--text el-button--small">
                                                <!---->
                                                <!----><span>查看</span></button>
                                            <button type="button" class="el-button el-button--text el-button--small">
                                                <!---->
                                                <!----><span>编辑</span></button>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_18_column_111  ">
                                        <div class="cell">
                                            <input type="checkbox" value="5bdbb959b2b0f90858fb5739" />
                                        </div></td>
                                    <td class="el-table_18_column_112  ">
                                        <div class="cell">
                                            5bdbb959b2b0f90858fb5739
                                        </div></td>
                                    <td class="el-table_18_column_113  ">
                                        <div class="cell">
                                            TEST-6337
                                        </div></td>
                                    <td class="el-table_18_column_114  ">
                                        <div class="cell">
                                            TEST-6337
                                        </div></td>
                                    <td class="el-table_18_column_115  ">
                                        <div class="cell">
                                            <span>2018-11-02 10:41:28</span>
                                        </div></td>
                                    <td class="el-table_18_column_116   is-hidden">
                                        <div class="cell">
                                            <button type="button" class="el-button el-button--text el-button--small">
                                                <!---->
                                                <!----><span>查看</span></button>
                                            <button type="button" class="el-button el-button--text el-button--small">
                                                <!---->
                                                <!----><span>编辑</span></button>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_18_column_111  ">
                                        <div class="cell">
                                            <input type="checkbox" value="5bbd5fd7b2b0f90869a132d0" />
                                        </div></td>
                                    <td class="el-table_18_column_112  ">
                                        <div class="cell">
                                            5bbd5fd7b2b0f90869a132d0
                                        </div></td>
                                    <td class="el-table_18_column_113  ">
                                        <div class="cell">
                                            服务-8700
                                        </div></td>
                                    <td class="el-table_18_column_114  ">
                                        <div class="cell">
                                            服务-8700
                                        </div></td>
                                    <td class="el-table_18_column_115  ">
                                        <div class="cell">
                                            <span>2018-11-01 16:25:27</span>
                                        </div></td>
                                    <td class="el-table_18_column_116   is-hidden">
                                        <div class="cell">
                                            <button type="button" class="el-button el-button--text el-button--small">
                                                <!---->
                                                <!----><span>查看</span></button>
                                            <button type="button" class="el-button el-button--text el-button--small">
                                                <!---->
                                                <!----><span>编辑</span></button>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_18_column_111  ">
                                        <div class="cell">
                                            <input type="checkbox" value="5bdab877b2b0f9082c7699d0" />
                                        </div></td>
                                    <td class="el-table_18_column_112  ">
                                        <div class="cell">
                                            5bdab877b2b0f9082c7699d0
                                        </div></td>
                                    <td class="el-table_18_column_113  ">
                                        <div class="cell">
                                            TEST-6077
                                        </div></td>
                                    <td class="el-table_18_column_114  ">
                                        <div class="cell">
                                            TEST-6077
                                        </div></td>
                                    <td class="el-table_18_column_115  ">
                                        <div class="cell">
                                            <span>2018-11-01 16:25:27</span>
                                        </div></td>
                                    <td class="el-table_18_column_116   is-hidden">
                                        <div class="cell">
                                            <button type="button" class="el-button el-button--text el-button--small">
                                                <!---->
                                                <!----><span>查看</span></button>
                                            <button type="button" class="el-button el-button--text el-button--small">
                                                <!---->
                                                <!----><span>编辑</span></button>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_18_column_111  ">
                                        <div class="cell">
                                            <input type="checkbox" value="5bc6ffcbb2b0f9085e4fddd7" />
                                        </div></td>
                                    <td class="el-table_18_column_112  ">
                                        <div class="cell">
                                            5bc6ffcbb2b0f9085e4fddd7
                                        </div></td>
                                    <td class="el-table_18_column_113  ">
                                        <div class="cell">
                                            填答卷管理
                                        </div></td>
                                    <td class="el-table_18_column_114  ">
                                        <div class="cell">
                                            填答卷管理
                                        </div></td>
                                    <td class="el-table_18_column_115  ">
                                        <div class="cell">
                                            <span>2018-10-17 17:24:27</span>
                                        </div></td>
                                    <td class="el-table_18_column_116   is-hidden">
                                        <div class="cell">
                                            <button type="button" class="el-button el-button--text el-button--small">
                                                <!---->
                                                <!----><span>查看</span></button>
                                            <button type="button" class="el-button el-button--text el-button--small">
                                                <!---->
                                                <!----><span>编辑</span></button>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_18_column_111  ">
                                        <div class="cell">
                                            <input type="checkbox" value="5bc6e26db2b0f9085e4fddcc" />
                                        </div></td>
                                    <td class="el-table_18_column_112  ">
                                        <div class="cell">
                                            5bc6e26db2b0f9085e4fddcc
                                        </div></td>
                                    <td class="el-table_18_column_113  ">
                                        <div class="cell">
                                            密密麻麻
                                        </div></td>
                                    <td class="el-table_18_column_114  ">
                                        <div class="cell">
                                            么么么么么么
                                        </div></td>
                                    <td class="el-table_18_column_115  ">
                                        <div class="cell">
                                            <span>2018-10-17 15:19:09</span>
                                        </div></td>
                                    <td class="el-table_18_column_116   is-hidden">
                                        <div class="cell">
                                            <button type="button" class="el-button el-button--text el-button--small">
                                                <!---->
                                                <!----><span>查看</span></button>
                                            <button type="button" class="el-button el-button--text el-button--small">
                                                <!---->
                                                <!----><span>编辑</span></button>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_18_column_111  ">
                                        <div class="cell">
                                            <input type="checkbox" value="5bc5acadb2b0f9086ef80a16" />
                                        </div></td>
                                    <td class="el-table_18_column_112  ">
                                        <div class="cell">
                                            5bc5acadb2b0f9086ef80a16
                                        </div></td>
                                    <td class="el-table_18_column_113  ">
                                        <div class="cell">
                                            活动管理
                                        </div></td>
                                    <td class="el-table_18_column_114  ">
                                        <div class="cell">
                                            活动管理
                                        </div></td>
                                    <td class="el-table_18_column_115  ">
                                        <div class="cell">
                                            <span>2018-10-16 17:17:33</span>
                                        </div></td>
                                    <td class="el-table_18_column_116   is-hidden">
                                        <div class="cell">
                                            <button type="button" class="el-button el-button--text el-button--small">
                                                <!---->
                                                <!----><span>查看</span></button>
                                            <button type="button" class="el-button el-button--text el-button--small">
                                                <!---->
                                                <!----><span>编辑</span></button>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_18_column_111  ">
                                        <div class="cell">
                                            <input type="checkbox" value="5bbd6166b2b0f90869a132d5" />
                                        </div></td>
                                    <td class="el-table_18_column_112  ">
                                        <div class="cell">
                                            5bbd6166b2b0f90869a132d5
                                        </div></td>
                                    <td class="el-table_18_column_113  ">
                                        <div class="cell">
                                            第三方应用管理
                                        </div></td>
                                    <td class="el-table_18_column_114  ">
                                        <div class="cell">
                                            第三方应用管理
                                        </div></td>
                                    <td class="el-table_18_column_115  ">
                                        <div class="cell">
                                            <span>2018-10-10 10:18:15</span>
                                        </div></td>
                                    <td class="el-table_18_column_116   is-hidden">
                                        <div class="cell">
                                            <button type="button" class="el-button el-button--text el-button--small">
                                                <!---->
                                                <!----><span>查看</span></button>
                                            <button type="button" class="el-button el-button--text el-button--small">
                                                <!---->
                                                <!----><span>编辑</span></button>
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
                        <div class="el-table__fixed-right" style="width: 170px; height: 478px;">
                            <div class="el-table__fixed-header-wrapper">
                                <table cellspacing="0" cellpadding="0" border="0" class="el-table__header" style="width: 170px;">
                                    <colgroup>
                                        <col name="el-table_18_column_111" width="50" />
                                        <col name="el-table_18_column_112" width="210" />
                                        <col name="el-table_18_column_113" width="320" />
                                        <col name="el-table_18_column_114" width="285" />
                                        <col name="el-table_18_column_115" width="170" />
                                        <col name="el-table_18_column_116" width="170" />
                                    </colgroup>
                                    <thead class="">
                                    <tr class="">
                                        <th colspan="1" rowspan="1" class="el-table_18_column_111     is-hidden is-leaf">
                                            <div class="cell"></div></th>
                                        <th colspan="1" rowspan="1" class="el-table_18_column_112     is-hidden is-leaf">
                                            <div class="cell">
                                                服务ID
                                            </div></th>
                                        <th colspan="1" rowspan="1" class="el-table_18_column_113     is-hidden is-leaf">
                                            <div class="cell">
                                                服务名
                                            </div></th>
                                        <th colspan="1" rowspan="1" class="el-table_18_column_114     is-hidden is-leaf">
                                            <div class="cell">
                                                映射名
                                            </div></th>
                                        <th colspan="1" rowspan="1" class="el-table_18_column_115     is-hidden is-leaf">
                                            <div class="cell">
                                                创建时间
                                            </div></th>
                                        <th colspan="1" rowspan="1" class="el-table_18_column_116     is-leaf">
                                            <div class="cell">
                                                操作
                                            </div></th>
                                    </tr>
                                    </thead>
                                </table>
                            </div>
                            <div class="el-table__fixed-body-wrapper" style="top: 48px;">
                                <table cellspacing="0" cellpadding="0" border="0" class="el-table__body" style="width: 170px;">
                                    <colgroup>
                                        <col name="el-table_18_column_111" width="50" />
                                        <col name="el-table_18_column_112" width="210" />
                                        <col name="el-table_18_column_113" width="320" />
                                        <col name="el-table_18_column_114" width="285" />
                                        <col name="el-table_18_column_115" width="170" />
                                        <col name="el-table_18_column_116" width="170" />
                                    </colgroup>
                                    <tbody>
                                    <tr class="el-table__row">
                                        <td class="el-table_18_column_111   is-hidden">
                                            <div class="cell">
                                                <input type="checkbox" value="5be43cd3b2b0f9085b0b12bc" />
                                            </div></td>
                                        <td class="el-table_18_column_112   is-hidden">
                                            <div class="cell">
                                                5be43cd3b2b0f9085b0b12bc
                                            </div></td>
                                        <td class="el-table_18_column_113   is-hidden">
                                            <div class="cell">
                                                Service-2295
                                            </div></td>
                                        <td class="el-table_18_column_114   is-hidden">
                                            <div class="cell">
                                                Service-2295
                                            </div></td>
                                        <td class="el-table_18_column_115   is-hidden">
                                            <div class="cell">
                                                <span>2018-11-08 21:40:35</span>
                                            </div></td>
                                        <td class="el-table_18_column_116  ">
                                            <div class="cell">
                                                <button type="button" class="el-button el-button--text el-button--small">
                                                    <!---->
                                                    <!----><span>查看</span></button>
                                                <button type="button" class="el-button el-button--text el-button--small">
                                                    <!---->
                                                    <!----><span>编辑</span></button>
                                            </div></td>
                                    </tr>
                                    <tr class="el-table__row">
                                        <td class="el-table_18_column_111   is-hidden">
                                            <div class="cell">
                                                <input type="checkbox" value="5bdc53c6b2b0f90858fb5796" />
                                            </div></td>
                                        <td class="el-table_18_column_112   is-hidden">
                                            <div class="cell">
                                                5bdc53c6b2b0f90858fb5796
                                            </div></td>
                                        <td class="el-table_18_column_113   is-hidden">
                                            <div class="cell">
                                                Service-2770
                                            </div></td>
                                        <td class="el-table_18_column_114   is-hidden">
                                            <div class="cell">
                                                Service-2770
                                            </div></td>
                                        <td class="el-table_18_column_115   is-hidden">
                                            <div class="cell">
                                                <span>2018-11-02 21:40:22</span>
                                            </div></td>
                                        <td class="el-table_18_column_116  ">
                                            <div class="cell">
                                                <button type="button" class="el-button el-button--text el-button--small">
                                                    <!---->
                                                    <!----><span>查看</span></button>
                                                <button type="button" class="el-button el-button--text el-button--small">
                                                    <!---->
                                                    <!----><span>编辑</span></button>
                                            </div></td>
                                    </tr>
                                    <tr class="el-table__row">
                                        <td class="el-table_18_column_111   is-hidden">
                                            <div class="cell">
                                                <input type="checkbox" value="5bdbc11ab2b0f90858fb5750" />
                                            </div></td>
                                        <td class="el-table_18_column_112   is-hidden">
                                            <div class="cell">
                                                5bdbc11ab2b0f90858fb5750
                                            </div></td>
                                        <td class="el-table_18_column_113   is-hidden">
                                            <div class="cell">
                                                TEST-7008
                                            </div></td>
                                        <td class="el-table_18_column_114   is-hidden">
                                            <div class="cell">
                                                TEST-7008
                                            </div></td>
                                        <td class="el-table_18_column_115   is-hidden">
                                            <div class="cell">
                                                <span>2018-11-02 11:14:34</span>
                                            </div></td>
                                        <td class="el-table_18_column_116  ">
                                            <div class="cell">
                                                <button type="button" class="el-button el-button--text el-button--small">
                                                    <!---->
                                                    <!----><span>查看</span></button>
                                                <button type="button" class="el-button el-button--text el-button--small">
                                                    <!---->
                                                    <!----><span>编辑</span></button>
                                            </div></td>
                                    </tr>
                                    <tr class="el-table__row">
                                        <td class="el-table_18_column_111   is-hidden">
                                            <div class="cell">
                                                <input type="checkbox" value="5bdbb959b2b0f90858fb5739" />
                                            </div></td>
                                        <td class="el-table_18_column_112   is-hidden">
                                            <div class="cell">
                                                5bdbb959b2b0f90858fb5739
                                            </div></td>
                                        <td class="el-table_18_column_113   is-hidden">
                                            <div class="cell">
                                                TEST-6337
                                            </div></td>
                                        <td class="el-table_18_column_114   is-hidden">
                                            <div class="cell">
                                                TEST-6337
                                            </div></td>
                                        <td class="el-table_18_column_115   is-hidden">
                                            <div class="cell">
                                                <span>2018-11-02 10:41:28</span>
                                            </div></td>
                                        <td class="el-table_18_column_116  ">
                                            <div class="cell">
                                                <button type="button" class="el-button el-button--text el-button--small">
                                                    <!---->
                                                    <!----><span>查看</span></button>
                                                <button type="button" class="el-button el-button--text el-button--small">
                                                    <!---->
                                                    <!----><span>编辑</span></button>
                                            </div></td>
                                    </tr>
                                    <tr class="el-table__row">
                                        <td class="el-table_18_column_111   is-hidden">
                                            <div class="cell">
                                                <input type="checkbox" value="5bbd5fd7b2b0f90869a132d0" />
                                            </div></td>
                                        <td class="el-table_18_column_112   is-hidden">
                                            <div class="cell">
                                                5bbd5fd7b2b0f90869a132d0
                                            </div></td>
                                        <td class="el-table_18_column_113   is-hidden">
                                            <div class="cell">
                                                服务-8700
                                            </div></td>
                                        <td class="el-table_18_column_114   is-hidden">
                                            <div class="cell">
                                                服务-8700
                                            </div></td>
                                        <td class="el-table_18_column_115   is-hidden">
                                            <div class="cell">
                                                <span>2018-11-01 16:25:27</span>
                                            </div></td>
                                        <td class="el-table_18_column_116  ">
                                            <div class="cell">
                                                <button type="button" class="el-button el-button--text el-button--small">
                                                    <!---->
                                                    <!----><span>查看</span></button>
                                                <button type="button" class="el-button el-button--text el-button--small">
                                                    <!---->
                                                    <!----><span>编辑</span></button>
                                            </div></td>
                                    </tr>
                                    <tr class="el-table__row">
                                        <td class="el-table_18_column_111   is-hidden">
                                            <div class="cell">
                                                <input type="checkbox" value="5bdab877b2b0f9082c7699d0" />
                                            </div></td>
                                        <td class="el-table_18_column_112   is-hidden">
                                            <div class="cell">
                                                5bdab877b2b0f9082c7699d0
                                            </div></td>
                                        <td class="el-table_18_column_113   is-hidden">
                                            <div class="cell">
                                                TEST-6077
                                            </div></td>
                                        <td class="el-table_18_column_114   is-hidden">
                                            <div class="cell">
                                                TEST-6077
                                            </div></td>
                                        <td class="el-table_18_column_115   is-hidden">
                                            <div class="cell">
                                                <span>2018-11-01 16:25:27</span>
                                            </div></td>
                                        <td class="el-table_18_column_116  ">
                                            <div class="cell">
                                                <button type="button" class="el-button el-button--text el-button--small">
                                                    <!---->
                                                    <!----><span>查看</span></button>
                                                <button type="button" class="el-button el-button--text el-button--small">
                                                    <!---->
                                                    <!----><span>编辑</span></button>
                                            </div></td>
                                    </tr>
                                    <tr class="el-table__row">
                                        <td class="el-table_18_column_111   is-hidden">
                                            <div class="cell">
                                                <input type="checkbox" value="5bc6ffcbb2b0f9085e4fddd7" />
                                            </div></td>
                                        <td class="el-table_18_column_112   is-hidden">
                                            <div class="cell">
                                                5bc6ffcbb2b0f9085e4fddd7
                                            </div></td>
                                        <td class="el-table_18_column_113   is-hidden">
                                            <div class="cell">
                                                填答卷管理
                                            </div></td>
                                        <td class="el-table_18_column_114   is-hidden">
                                            <div class="cell">
                                                填答卷管理
                                            </div></td>
                                        <td class="el-table_18_column_115   is-hidden">
                                            <div class="cell">
                                                <span>2018-10-17 17:24:27</span>
                                            </div></td>
                                        <td class="el-table_18_column_116  ">
                                            <div class="cell">
                                                <button type="button" class="el-button el-button--text el-button--small">
                                                    <!---->
                                                    <!----><span>查看</span></button>
                                                <button type="button" class="el-button el-button--text el-button--small">
                                                    <!---->
                                                    <!----><span>编辑</span></button>
                                            </div></td>
                                    </tr>
                                    <tr class="el-table__row">
                                        <td class="el-table_18_column_111   is-hidden">
                                            <div class="cell">
                                                <input type="checkbox" value="5bc6e26db2b0f9085e4fddcc" />
                                            </div></td>
                                        <td class="el-table_18_column_112   is-hidden">
                                            <div class="cell">
                                                5bc6e26db2b0f9085e4fddcc
                                            </div></td>
                                        <td class="el-table_18_column_113   is-hidden">
                                            <div class="cell">
                                                密密麻麻
                                            </div></td>
                                        <td class="el-table_18_column_114   is-hidden">
                                            <div class="cell">
                                                么么么么么么
                                            </div></td>
                                        <td class="el-table_18_column_115   is-hidden">
                                            <div class="cell">
                                                <span>2018-10-17 15:19:09</span>
                                            </div></td>
                                        <td class="el-table_18_column_116  ">
                                            <div class="cell">
                                                <button type="button" class="el-button el-button--text el-button--small">
                                                    <!---->
                                                    <!----><span>查看</span></button>
                                                <button type="button" class="el-button el-button--text el-button--small">
                                                    <!---->
                                                    <!----><span>编辑</span></button>
                                            </div></td>
                                    </tr>
                                    <tr class="el-table__row">
                                        <td class="el-table_18_column_111   is-hidden">
                                            <div class="cell">
                                                <input type="checkbox" value="5bc5acadb2b0f9086ef80a16" />
                                            </div></td>
                                        <td class="el-table_18_column_112   is-hidden">
                                            <div class="cell">
                                                5bc5acadb2b0f9086ef80a16
                                            </div></td>
                                        <td class="el-table_18_column_113   is-hidden">
                                            <div class="cell">
                                                活动管理
                                            </div></td>
                                        <td class="el-table_18_column_114   is-hidden">
                                            <div class="cell">
                                                活动管理
                                            </div></td>
                                        <td class="el-table_18_column_115   is-hidden">
                                            <div class="cell">
                                                <span>2018-10-16 17:17:33</span>
                                            </div></td>
                                        <td class="el-table_18_column_116  ">
                                            <div class="cell">
                                                <button type="button" class="el-button el-button--text el-button--small">
                                                    <!---->
                                                    <!----><span>查看</span></button>
                                                <button type="button" class="el-button el-button--text el-button--small">
                                                    <!---->
                                                    <!----><span>编辑</span></button>
                                            </div></td>
                                    </tr>
                                    <tr class="el-table__row">
                                        <td class="el-table_18_column_111   is-hidden">
                                            <div class="cell">
                                                <input type="checkbox" value="5bbd6166b2b0f90869a132d5" />
                                            </div></td>
                                        <td class="el-table_18_column_112   is-hidden">
                                            <div class="cell">
                                                5bbd6166b2b0f90869a132d5
                                            </div></td>
                                        <td class="el-table_18_column_113   is-hidden">
                                            <div class="cell">
                                                第三方应用管理
                                            </div></td>
                                        <td class="el-table_18_column_114   is-hidden">
                                            <div class="cell">
                                                第三方应用管理
                                            </div></td>
                                        <td class="el-table_18_column_115   is-hidden">
                                            <div class="cell">
                                                <span>2018-10-10 10:18:15</span>
                                            </div></td>
                                        <td class="el-table_18_column_116  ">
                                            <div class="cell">
                                                <button type="button" class="el-button el-button--text el-button--small">
                                                    <!---->
                                                    <!----><span>查看</span></button>
                                                <button type="button" class="el-button el-button--text el-button--small">
                                                    <!---->
                                                    <!----><span>编辑</span></button>
                                            </div></td>
                                    </tr>
                                    <!---->
                                    </tbody>
                                </table>
                            </div>
                            <!---->
                        </div>
                        <div class="el-table__fixed-right-patch" style="width: 0px; height: 48px;"></div>
                        <div class="el-table__column-resize-proxy" style="display: none;"></div>
                        <div class="resize-triggers">
                            <div class="expand-trigger">
                                <div style="width: 1240px; height: 479px;"></div>
                            </div>
                            <div class="contract-trigger"></div>
                        </div>
                    </div>
                </div>
                <div class="page_pagination" style="">
                    <div class="el-pagination">
                        <span class="el-pagination__total">共 22 条</span>
                        <button type="button" class="btn-prev disabled"><i class="el-icon el-icon-arrow-left"></i></button>
                        <ul class="el-pager">
                            <li class="number active">1</li>
                            <!---->
                            <li class="number">2</li>
                            <!---->
                            <li class="number">3</li>
                        </ul>
                        <button type="button" class="btn-next"><i class="el-icon el-icon-arrow-right"></i></button>
                        <span class="el-pagination__jump">前往
         <div class="el-input el-pagination__editor is-in-pagination">
          <!---->
          <input autocomplete="off" type="number" rows="2" max="3" min="1" validateevent="true" class="el-input__inner" />
             <!---->
             <!---->
             <!---->
         </div>页</span>
                    </div>
                </div>
                <div class="clearfix"></div>
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
        <div class="el-dialog__wrapper" style="display: none;">
            <div class="el-dialog" style="margin-top: 15vh;">
                <div class="el-dialog__header">
                    <span class="el-dialog__title">新建服务</span>
                    <button type="button" aria-label="Close" class="el-dialog__headerbtn"><i class="el-dialog__close el-icon el-icon-close"></i></button>
                </div>
                <!---->
                <div class="el-dialog__footer">
       <span class="dialog-footer"><button type="button" class="el-button el-button--default">
         <!---->
           <!----><span>取 消</span></button> <button type="button" class="el-button el-button--primary">
         <!---->
           <!----><span>确 定</span></button></span>
                </div>
            </div>
        </div>
        <div class="el-dialog__wrapper service_dialog" style="display: none;">
            <div class="el-dialog" style="margin-top: 15vh;">
                <div class="el-dialog__header">
                    <span class="el-dialog__title">服务详情</span>
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
