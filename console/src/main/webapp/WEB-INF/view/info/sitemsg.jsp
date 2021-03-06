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
                <a href="/index/main" class="router-link-active">首页</a>&nbsp;&gt;&nbsp;
                <a href="/info/index" class="router-link-active">信息管理</a>&nbsp;&gt;&nbsp;
                <a href="javascript:void(0);">站内信息管理</a>
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
                            <!----><span>删除</span></button>
                    </div>
                    <div class="el-col el-col-2">
                        <button type="button" class="el-button el-button--default">
                            <!---->
                            <!----><span>新建</span></button>
                    </div>
                    <div class="el-col el-col-3">
                        <div class="el-select" style="width: 80%;">
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
                            <div class="el-select-dropdown el-popper" style="display: none; min-width: 122px;">
                                <div class="el-scrollbar" style="">
                                    <div class="el-select-dropdown__wrap el-scrollbar__wrap" style="margin-bottom: -17px; margin-right: -17px;">
                                        <ul class="el-scrollbar__view el-select-dropdown__list" style="position: relative;">
                                            <!---->
                                            <li class="el-select-dropdown__item selected"><span>全部</span></li>
                                            <li class="el-select-dropdown__item"><span>编辑中</span></li>
                                            <li class="el-select-dropdown__item"><span>待发送</span></li>
                                            <li class="el-select-dropdown__item"><span>已发送</span></li>
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
                                    <div style="width: 123px; height: 31px;"></div>
                                </div>
                                <div class="contract-trigger"></div>
                            </div>
                        </div>
                    </div>
                    <div class="el-col el-col-6">
                        <div class="title_search el-input el-input--suffix">
                            <!---->
                            <input autocomplete="off" placeholder="请输入标题进行搜索" type="text" rows="2" validateevent="true" class="el-input__inner" />
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
                            <div>
                                formatDateBeiJing
                            </div>
                            <div></div>
                            <div></div>
                        </div>
                        <div class="el-table__header-wrapper">
                            <table cellspacing="0" cellpadding="0" border="0" class="el-table__header" style="width: 1230px;">
                                <colgroup>
                                    <col name="el-table_11_column_67" width="50" />
                                    <col name="el-table_11_column_68" width="150" />
                                    <col name="el-table_11_column_69" width="400" />
                                    <col name="el-table_11_column_70" width="200" />
                                    <col name="el-table_11_column_71" width="200" />
                                    <col name="el-table_11_column_72" width="230" />
                                    <col name="gutter" width="0" />
                                </colgroup>
                                <thead class="has-gutter">
                                <tr class="">
                                    <th colspan="1" rowspan="1" class="el-table_11_column_67     is-leaf">
                                        <div class="cell"></div></th>
                                    <th colspan="1" rowspan="1" class="el-table_11_column_68     is-leaf">
                                        <div class="cell">
                                            状态
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_11_column_69     is-leaf">
                                        <div class="cell">
                                            标题
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_11_column_70     is-leaf">
                                        <div class="cell">
                                            发送时间
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_11_column_71     is-leaf">
                                        <div class="cell">
                                            编撰人
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_11_column_72     is-hidden is-leaf">
                                        <div class="cell">
                                            操作
                                        </div></th>
                                    <th class="gutter" style="width: 0px; display: none;"></th>
                                </tr>
                                </thead>
                            </table>
                        </div>
                        <div class="el-table__body-wrapper is-scrolling-none">
                            <table cellspacing="0" cellpadding="0" border="0" class="el-table__body" style="width: 1230px;">
                                <colgroup>
                                    <col name="el-table_11_column_67" width="50" />
                                    <col name="el-table_11_column_68" width="150" />
                                    <col name="el-table_11_column_69" width="400" />
                                    <col name="el-table_11_column_70" width="200" />
                                    <col name="el-table_11_column_71" width="200" />
                                    <col name="el-table_11_column_72" width="230" />
                                </colgroup>
                                <tbody>
                                <tr class="el-table__row">
                                    <td class="el-table_11_column_67  ">
                                        <div class="cell">
                                            <input type="checkbox" class="sx_input_b" value="5be43cc6f8f8380844cbef2e" />
                                        </div></td>
                                    <td class="el-table_11_column_68  ">
                                        <div class="cell">
                                            编辑中
                                        </div></td>
                                    <td class="el-table_11_column_69  ">
                                        <div class="cell">
                                            AUTOTEST-8356
                                        </div></td>
                                    <td class="el-table_11_column_70  ">
                                        <div class="cell">
                                            <span>2018-01-25 10:42:32</span>
                                        </div></td>
                                    <td class="el-table_11_column_71  ">
                                        <div class="cell">
                                            admin11
                                        </div></td>
                                    <td class="el-table_11_column_72   is-hidden">
                                        <div class="cell">
                                            <!---->
                                            <button type="button" class="el-button el-button--text el-button--small">
                                                <!---->
                                                <!----><span>编辑</span></button>
                                            <button type="button" class="el-button el-button--text el-button--small">
                                                <!---->
                                                <!----><span>发布</span></button>
                                            <button type="button" class="el-button el-button--text el-button--small">
                                                <!---->
                                                <!----><span>删除</span></button>
                                            <!---->
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_11_column_67  ">
                                        <div class="cell">
                                            <input type="checkbox" class="sx_input_b" value="5be43cc2f8f8380844cbef09" />
                                        </div></td>
                                    <td class="el-table_11_column_68  ">
                                        <div class="cell">
                                            待发送
                                        </div></td>
                                    <td class="el-table_11_column_69  ">
                                        <div class="cell">
                                            lqqjd1开始啦
                                        </div></td>
                                    <td class="el-table_11_column_70  ">
                                        <div class="cell">
                                            <span>2018-09-17 00:00:00</span>
                                        </div></td>
                                    <td class="el-table_11_column_71  ">
                                        <div class="cell">
                                            admin11
                                        </div></td>
                                    <td class="el-table_11_column_72   is-hidden">
                                        <div class="cell">
                                            <button type="button" class="el-button el-button--text el-button--small">
                                                <!---->
                                                <!----><span>查看</span></button>
                                            <!---->
                                            <!---->
                                            <button type="button" class="el-button el-button--text el-button--small">
                                                <!---->
                                                <!----><span>删除</span></button>
                                            <!---->
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_11_column_67  ">
                                        <div class="cell">
                                            <input type="checkbox" class="sx_input_b" value="5be43cc2f8f8380844cbef0a" />
                                        </div></td>
                                    <td class="el-table_11_column_68  ">
                                        <div class="cell">
                                            待发送
                                        </div></td>
                                    <td class="el-table_11_column_69  ">
                                        <div class="cell">
                                            lqqjd1开始啦
                                        </div></td>
                                    <td class="el-table_11_column_70  ">
                                        <div class="cell">
                                            <span>2018-09-17 00:00:00</span>
                                        </div></td>
                                    <td class="el-table_11_column_71  ">
                                        <div class="cell">
                                            admin11
                                        </div></td>
                                    <td class="el-table_11_column_72   is-hidden">
                                        <div class="cell">
                                            <button type="button" class="el-button el-button--text el-button--small">
                                                <!---->
                                                <!----><span>查看</span></button>
                                            <!---->
                                            <!---->
                                            <button type="button" class="el-button el-button--text el-button--small">
                                                <!---->
                                                <!----><span>删除</span></button>
                                            <!---->
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_11_column_67  ">
                                        <div class="cell">
                                            <input type="checkbox" class="sx_input_b" value="5be43cc2f8f8380844cbef0b" />
                                        </div></td>
                                    <td class="el-table_11_column_68  ">
                                        <div class="cell">
                                            待发送
                                        </div></td>
                                    <td class="el-table_11_column_69  ">
                                        <div class="cell">
                                            lqqjd1开始啦
                                        </div></td>
                                    <td class="el-table_11_column_70  ">
                                        <div class="cell">
                                            <span>2018-09-17 00:00:00</span>
                                        </div></td>
                                    <td class="el-table_11_column_71  ">
                                        <div class="cell">
                                            admin11
                                        </div></td>
                                    <td class="el-table_11_column_72   is-hidden">
                                        <div class="cell">
                                            <button type="button" class="el-button el-button--text el-button--small">
                                                <!---->
                                                <!----><span>查看</span></button>
                                            <!---->
                                            <!---->
                                            <button type="button" class="el-button el-button--text el-button--small">
                                                <!---->
                                                <!----><span>删除</span></button>
                                            <!---->
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_11_column_67  ">
                                        <div class="cell">
                                            <input type="checkbox" class="sx_input_b" value="5be43cc2f8f8380844cbef0c" />
                                        </div></td>
                                    <td class="el-table_11_column_68  ">
                                        <div class="cell">
                                            待发送
                                        </div></td>
                                    <td class="el-table_11_column_69  ">
                                        <div class="cell">
                                            lqqjd1开始啦
                                        </div></td>
                                    <td class="el-table_11_column_70  ">
                                        <div class="cell">
                                            <span>2018-09-17 00:00:00</span>
                                        </div></td>
                                    <td class="el-table_11_column_71  ">
                                        <div class="cell">
                                            admin11
                                        </div></td>
                                    <td class="el-table_11_column_72   is-hidden">
                                        <div class="cell">
                                            <button type="button" class="el-button el-button--text el-button--small">
                                                <!---->
                                                <!----><span>查看</span></button>
                                            <!---->
                                            <!---->
                                            <button type="button" class="el-button el-button--text el-button--small">
                                                <!---->
                                                <!----><span>删除</span></button>
                                            <!---->
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_11_column_67  ">
                                        <div class="cell">
                                            <input type="checkbox" class="sx_input_b" value="5be43cc2f8f8380844cbef0d" />
                                        </div></td>
                                    <td class="el-table_11_column_68  ">
                                        <div class="cell">
                                            待发送
                                        </div></td>
                                    <td class="el-table_11_column_69  ">
                                        <div class="cell">
                                            lqqjd1开始啦
                                        </div></td>
                                    <td class="el-table_11_column_70  ">
                                        <div class="cell">
                                            <span>2018-09-17 00:00:00</span>
                                        </div></td>
                                    <td class="el-table_11_column_71  ">
                                        <div class="cell">
                                            admin11
                                        </div></td>
                                    <td class="el-table_11_column_72   is-hidden">
                                        <div class="cell">
                                            <button type="button" class="el-button el-button--text el-button--small">
                                                <!---->
                                                <!----><span>查看</span></button>
                                            <!---->
                                            <!---->
                                            <button type="button" class="el-button el-button--text el-button--small">
                                                <!---->
                                                <!----><span>删除</span></button>
                                            <!---->
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_11_column_67  ">
                                        <div class="cell">
                                            <input type="checkbox" class="sx_input_b" value="5be43cc2f8f8380844cbef0e" />
                                        </div></td>
                                    <td class="el-table_11_column_68  ">
                                        <div class="cell">
                                            待发送
                                        </div></td>
                                    <td class="el-table_11_column_69  ">
                                        <div class="cell">
                                            lqqjd1开始啦
                                        </div></td>
                                    <td class="el-table_11_column_70  ">
                                        <div class="cell">
                                            <span>2018-09-17 00:00:00</span>
                                        </div></td>
                                    <td class="el-table_11_column_71  ">
                                        <div class="cell">
                                            admin11
                                        </div></td>
                                    <td class="el-table_11_column_72   is-hidden">
                                        <div class="cell">
                                            <button type="button" class="el-button el-button--text el-button--small">
                                                <!---->
                                                <!----><span>查看</span></button>
                                            <!---->
                                            <!---->
                                            <button type="button" class="el-button el-button--text el-button--small">
                                                <!---->
                                                <!----><span>删除</span></button>
                                            <!---->
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_11_column_67  ">
                                        <div class="cell">
                                            <input type="checkbox" class="sx_input_b" value="5be43cc2f8f8380844cbef0f" />
                                        </div></td>
                                    <td class="el-table_11_column_68  ">
                                        <div class="cell">
                                            待发送
                                        </div></td>
                                    <td class="el-table_11_column_69  ">
                                        <div class="cell">
                                            lqqjd1开始啦
                                        </div></td>
                                    <td class="el-table_11_column_70  ">
                                        <div class="cell">
                                            <span>2018-09-17 00:00:00</span>
                                        </div></td>
                                    <td class="el-table_11_column_71  ">
                                        <div class="cell">
                                            admin11
                                        </div></td>
                                    <td class="el-table_11_column_72   is-hidden">
                                        <div class="cell">
                                            <button type="button" class="el-button el-button--text el-button--small">
                                                <!---->
                                                <!----><span>查看</span></button>
                                            <!---->
                                            <!---->
                                            <button type="button" class="el-button el-button--text el-button--small">
                                                <!---->
                                                <!----><span>删除</span></button>
                                            <!---->
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_11_column_67  ">
                                        <div class="cell">
                                            <input type="checkbox" class="sx_input_b" value="5be43cc2f8f8380844cbef10" />
                                        </div></td>
                                    <td class="el-table_11_column_68  ">
                                        <div class="cell">
                                            待发送
                                        </div></td>
                                    <td class="el-table_11_column_69  ">
                                        <div class="cell">
                                            lqqjd1开始啦
                                        </div></td>
                                    <td class="el-table_11_column_70  ">
                                        <div class="cell">
                                            <span>2018-09-17 00:00:00</span>
                                        </div></td>
                                    <td class="el-table_11_column_71  ">
                                        <div class="cell">
                                            admin11
                                        </div></td>
                                    <td class="el-table_11_column_72   is-hidden">
                                        <div class="cell">
                                            <button type="button" class="el-button el-button--text el-button--small">
                                                <!---->
                                                <!----><span>查看</span></button>
                                            <!---->
                                            <!---->
                                            <button type="button" class="el-button el-button--text el-button--small">
                                                <!---->
                                                <!----><span>删除</span></button>
                                            <!---->
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_11_column_67  ">
                                        <div class="cell">
                                            <input type="checkbox" class="sx_input_b" value="5be43cc2f8f8380844cbef11" />
                                        </div></td>
                                    <td class="el-table_11_column_68  ">
                                        <div class="cell">
                                            待发送
                                        </div></td>
                                    <td class="el-table_11_column_69  ">
                                        <div class="cell">
                                            lqqjd1开始啦
                                        </div></td>
                                    <td class="el-table_11_column_70  ">
                                        <div class="cell">
                                            <span>2018-09-17 00:00:00</span>
                                        </div></td>
                                    <td class="el-table_11_column_71  ">
                                        <div class="cell">
                                            admin11
                                        </div></td>
                                    <td class="el-table_11_column_72   is-hidden">
                                        <div class="cell">
                                            <button type="button" class="el-button el-button--text el-button--small">
                                                <!---->
                                                <!----><span>查看</span></button>
                                            <!---->
                                            <!---->
                                            <button type="button" class="el-button el-button--text el-button--small">
                                                <!---->
                                                <!----><span>删除</span></button>
                                            <!---->
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
                        <div class="el-table__fixed-right" style="width: 230px; height: 478px;">
                            <div class="el-table__fixed-header-wrapper">
                                <table cellspacing="0" cellpadding="0" border="0" class="el-table__header" style="width: 230px;">
                                    <colgroup>
                                        <col name="el-table_11_column_67" width="50" />
                                        <col name="el-table_11_column_68" width="150" />
                                        <col name="el-table_11_column_69" width="400" />
                                        <col name="el-table_11_column_70" width="200" />
                                        <col name="el-table_11_column_71" width="200" />
                                        <col name="el-table_11_column_72" width="230" />
                                    </colgroup>
                                    <thead class="">
                                    <tr class="">
                                        <th colspan="1" rowspan="1" class="el-table_11_column_67     is-hidden is-leaf">
                                            <div class="cell"></div></th>
                                        <th colspan="1" rowspan="1" class="el-table_11_column_68     is-hidden is-leaf">
                                            <div class="cell">
                                                状态
                                            </div></th>
                                        <th colspan="1" rowspan="1" class="el-table_11_column_69     is-hidden is-leaf">
                                            <div class="cell">
                                                标题
                                            </div></th>
                                        <th colspan="1" rowspan="1" class="el-table_11_column_70     is-hidden is-leaf">
                                            <div class="cell">
                                                发送时间
                                            </div></th>
                                        <th colspan="1" rowspan="1" class="el-table_11_column_71     is-hidden is-leaf">
                                            <div class="cell">
                                                编撰人
                                            </div></th>
                                        <th colspan="1" rowspan="1" class="el-table_11_column_72     is-leaf">
                                            <div class="cell">
                                                操作
                                            </div></th>
                                    </tr>
                                    </thead>
                                </table>
                            </div>
                            <div class="el-table__fixed-body-wrapper" style="top: 48px;">
                                <table cellspacing="0" cellpadding="0" border="0" class="el-table__body" style="width: 230px;">
                                    <colgroup>
                                        <col name="el-table_11_column_67" width="50" />
                                        <col name="el-table_11_column_68" width="150" />
                                        <col name="el-table_11_column_69" width="400" />
                                        <col name="el-table_11_column_70" width="200" />
                                        <col name="el-table_11_column_71" width="200" />
                                        <col name="el-table_11_column_72" width="230" />
                                    </colgroup>
                                    <tbody>
                                    <tr class="el-table__row">
                                        <td class="el-table_11_column_67   is-hidden">
                                            <div class="cell">
                                                <input type="checkbox" class="sx_input_b" value="5be43cc6f8f8380844cbef2e" />
                                            </div></td>
                                        <td class="el-table_11_column_68   is-hidden">
                                            <div class="cell">
                                                编辑中
                                            </div></td>
                                        <td class="el-table_11_column_69   is-hidden">
                                            <div class="cell">
                                                AUTOTEST-8356
                                            </div></td>
                                        <td class="el-table_11_column_70   is-hidden">
                                            <div class="cell">
                                                <span>2018-01-25 10:42:32</span>
                                            </div></td>
                                        <td class="el-table_11_column_71   is-hidden">
                                            <div class="cell">
                                                admin11
                                            </div></td>
                                        <td class="el-table_11_column_72  ">
                                            <div class="cell">
                                                <!---->
                                                <button type="button" class="el-button el-button--text el-button--small">
                                                    <!---->
                                                    <!----><span>编辑</span></button>
                                                <button type="button" class="el-button el-button--text el-button--small">
                                                    <!---->
                                                    <!----><span>发布</span></button>
                                                <button type="button" class="el-button el-button--text el-button--small">
                                                    <!---->
                                                    <!----><span>删除</span></button>
                                                <!---->
                                            </div></td>
                                    </tr>
                                    <tr class="el-table__row">
                                        <td class="el-table_11_column_67   is-hidden">
                                            <div class="cell">
                                                <input type="checkbox" class="sx_input_b" value="5be43cc2f8f8380844cbef09" />
                                            </div></td>
                                        <td class="el-table_11_column_68   is-hidden">
                                            <div class="cell">
                                                待发送
                                            </div></td>
                                        <td class="el-table_11_column_69   is-hidden">
                                            <div class="cell">
                                                lqqjd1开始啦
                                            </div></td>
                                        <td class="el-table_11_column_70   is-hidden">
                                            <div class="cell">
                                                <span>2018-09-17 00:00:00</span>
                                            </div></td>
                                        <td class="el-table_11_column_71   is-hidden">
                                            <div class="cell">
                                                admin11
                                            </div></td>
                                        <td class="el-table_11_column_72  ">
                                            <div class="cell">
                                                <button type="button" class="el-button el-button--text el-button--small">
                                                    <!---->
                                                    <!----><span>查看</span></button>
                                                <!---->
                                                <!---->
                                                <button type="button" class="el-button el-button--text el-button--small">
                                                    <!---->
                                                    <!----><span>删除</span></button>
                                                <!---->
                                            </div></td>
                                    </tr>
                                    <tr class="el-table__row">
                                        <td class="el-table_11_column_67   is-hidden">
                                            <div class="cell">
                                                <input type="checkbox" class="sx_input_b" value="5be43cc2f8f8380844cbef0a" />
                                            </div></td>
                                        <td class="el-table_11_column_68   is-hidden">
                                            <div class="cell">
                                                待发送
                                            </div></td>
                                        <td class="el-table_11_column_69   is-hidden">
                                            <div class="cell">
                                                lqqjd1开始啦
                                            </div></td>
                                        <td class="el-table_11_column_70   is-hidden">
                                            <div class="cell">
                                                <span>2018-09-17 00:00:00</span>
                                            </div></td>
                                        <td class="el-table_11_column_71   is-hidden">
                                            <div class="cell">
                                                admin11
                                            </div></td>
                                        <td class="el-table_11_column_72  ">
                                            <div class="cell">
                                                <button type="button" class="el-button el-button--text el-button--small">
                                                    <!---->
                                                    <!----><span>查看</span></button>
                                                <!---->
                                                <!---->
                                                <button type="button" class="el-button el-button--text el-button--small">
                                                    <!---->
                                                    <!----><span>删除</span></button>
                                                <!---->
                                            </div></td>
                                    </tr>
                                    <tr class="el-table__row">
                                        <td class="el-table_11_column_67   is-hidden">
                                            <div class="cell">
                                                <input type="checkbox" class="sx_input_b" value="5be43cc2f8f8380844cbef0b" />
                                            </div></td>
                                        <td class="el-table_11_column_68   is-hidden">
                                            <div class="cell">
                                                待发送
                                            </div></td>
                                        <td class="el-table_11_column_69   is-hidden">
                                            <div class="cell">
                                                lqqjd1开始啦
                                            </div></td>
                                        <td class="el-table_11_column_70   is-hidden">
                                            <div class="cell">
                                                <span>2018-09-17 00:00:00</span>
                                            </div></td>
                                        <td class="el-table_11_column_71   is-hidden">
                                            <div class="cell">
                                                admin11
                                            </div></td>
                                        <td class="el-table_11_column_72  ">
                                            <div class="cell">
                                                <button type="button" class="el-button el-button--text el-button--small">
                                                    <!---->
                                                    <!----><span>查看</span></button>
                                                <!---->
                                                <!---->
                                                <button type="button" class="el-button el-button--text el-button--small">
                                                    <!---->
                                                    <!----><span>删除</span></button>
                                                <!---->
                                            </div></td>
                                    </tr>
                                    <tr class="el-table__row">
                                        <td class="el-table_11_column_67   is-hidden">
                                            <div class="cell">
                                                <input type="checkbox" class="sx_input_b" value="5be43cc2f8f8380844cbef0c" />
                                            </div></td>
                                        <td class="el-table_11_column_68   is-hidden">
                                            <div class="cell">
                                                待发送
                                            </div></td>
                                        <td class="el-table_11_column_69   is-hidden">
                                            <div class="cell">
                                                lqqjd1开始啦
                                            </div></td>
                                        <td class="el-table_11_column_70   is-hidden">
                                            <div class="cell">
                                                <span>2018-09-17 00:00:00</span>
                                            </div></td>
                                        <td class="el-table_11_column_71   is-hidden">
                                            <div class="cell">
                                                admin11
                                            </div></td>
                                        <td class="el-table_11_column_72  ">
                                            <div class="cell">
                                                <button type="button" class="el-button el-button--text el-button--small">
                                                    <!---->
                                                    <!----><span>查看</span></button>
                                                <!---->
                                                <!---->
                                                <button type="button" class="el-button el-button--text el-button--small">
                                                    <!---->
                                                    <!----><span>删除</span></button>
                                                <!---->
                                            </div></td>
                                    </tr>
                                    <tr class="el-table__row">
                                        <td class="el-table_11_column_67   is-hidden">
                                            <div class="cell">
                                                <input type="checkbox" class="sx_input_b" value="5be43cc2f8f8380844cbef0d" />
                                            </div></td>
                                        <td class="el-table_11_column_68   is-hidden">
                                            <div class="cell">
                                                待发送
                                            </div></td>
                                        <td class="el-table_11_column_69   is-hidden">
                                            <div class="cell">
                                                lqqjd1开始啦
                                            </div></td>
                                        <td class="el-table_11_column_70   is-hidden">
                                            <div class="cell">
                                                <span>2018-09-17 00:00:00</span>
                                            </div></td>
                                        <td class="el-table_11_column_71   is-hidden">
                                            <div class="cell">
                                                admin11
                                            </div></td>
                                        <td class="el-table_11_column_72  ">
                                            <div class="cell">
                                                <button type="button" class="el-button el-button--text el-button--small">
                                                    <!---->
                                                    <!----><span>查看</span></button>
                                                <!---->
                                                <!---->
                                                <button type="button" class="el-button el-button--text el-button--small">
                                                    <!---->
                                                    <!----><span>删除</span></button>
                                                <!---->
                                            </div></td>
                                    </tr>
                                    <tr class="el-table__row">
                                        <td class="el-table_11_column_67   is-hidden">
                                            <div class="cell">
                                                <input type="checkbox" class="sx_input_b" value="5be43cc2f8f8380844cbef0e" />
                                            </div></td>
                                        <td class="el-table_11_column_68   is-hidden">
                                            <div class="cell">
                                                待发送
                                            </div></td>
                                        <td class="el-table_11_column_69   is-hidden">
                                            <div class="cell">
                                                lqqjd1开始啦
                                            </div></td>
                                        <td class="el-table_11_column_70   is-hidden">
                                            <div class="cell">
                                                <span>2018-09-17 00:00:00</span>
                                            </div></td>
                                        <td class="el-table_11_column_71   is-hidden">
                                            <div class="cell">
                                                admin11
                                            </div></td>
                                        <td class="el-table_11_column_72  ">
                                            <div class="cell">
                                                <button type="button" class="el-button el-button--text el-button--small">
                                                    <!---->
                                                    <!----><span>查看</span></button>
                                                <!---->
                                                <!---->
                                                <button type="button" class="el-button el-button--text el-button--small">
                                                    <!---->
                                                    <!----><span>删除</span></button>
                                                <!---->
                                            </div></td>
                                    </tr>
                                    <tr class="el-table__row">
                                        <td class="el-table_11_column_67   is-hidden">
                                            <div class="cell">
                                                <input type="checkbox" class="sx_input_b" value="5be43cc2f8f8380844cbef0f" />
                                            </div></td>
                                        <td class="el-table_11_column_68   is-hidden">
                                            <div class="cell">
                                                待发送
                                            </div></td>
                                        <td class="el-table_11_column_69   is-hidden">
                                            <div class="cell">
                                                lqqjd1开始啦
                                            </div></td>
                                        <td class="el-table_11_column_70   is-hidden">
                                            <div class="cell">
                                                <span>2018-09-17 00:00:00</span>
                                            </div></td>
                                        <td class="el-table_11_column_71   is-hidden">
                                            <div class="cell">
                                                admin11
                                            </div></td>
                                        <td class="el-table_11_column_72  ">
                                            <div class="cell">
                                                <button type="button" class="el-button el-button--text el-button--small">
                                                    <!---->
                                                    <!----><span>查看</span></button>
                                                <!---->
                                                <!---->
                                                <button type="button" class="el-button el-button--text el-button--small">
                                                    <!---->
                                                    <!----><span>删除</span></button>
                                                <!---->
                                            </div></td>
                                    </tr>
                                    <tr class="el-table__row">
                                        <td class="el-table_11_column_67   is-hidden">
                                            <div class="cell">
                                                <input type="checkbox" class="sx_input_b" value="5be43cc2f8f8380844cbef10" />
                                            </div></td>
                                        <td class="el-table_11_column_68   is-hidden">
                                            <div class="cell">
                                                待发送
                                            </div></td>
                                        <td class="el-table_11_column_69   is-hidden">
                                            <div class="cell">
                                                lqqjd1开始啦
                                            </div></td>
                                        <td class="el-table_11_column_70   is-hidden">
                                            <div class="cell">
                                                <span>2018-09-17 00:00:00</span>
                                            </div></td>
                                        <td class="el-table_11_column_71   is-hidden">
                                            <div class="cell">
                                                admin11
                                            </div></td>
                                        <td class="el-table_11_column_72  ">
                                            <div class="cell">
                                                <button type="button" class="el-button el-button--text el-button--small">
                                                    <!---->
                                                    <!----><span>查看</span></button>
                                                <!---->
                                                <!---->
                                                <button type="button" class="el-button el-button--text el-button--small">
                                                    <!---->
                                                    <!----><span>删除</span></button>
                                                <!---->
                                            </div></td>
                                    </tr>
                                    <tr class="el-table__row">
                                        <td class="el-table_11_column_67   is-hidden">
                                            <div class="cell">
                                                <input type="checkbox" class="sx_input_b" value="5be43cc2f8f8380844cbef11" />
                                            </div></td>
                                        <td class="el-table_11_column_68   is-hidden">
                                            <div class="cell">
                                                待发送
                                            </div></td>
                                        <td class="el-table_11_column_69   is-hidden">
                                            <div class="cell">
                                                lqqjd1开始啦
                                            </div></td>
                                        <td class="el-table_11_column_70   is-hidden">
                                            <div class="cell">
                                                <span>2018-09-17 00:00:00</span>
                                            </div></td>
                                        <td class="el-table_11_column_71   is-hidden">
                                            <div class="cell">
                                                admin11
                                            </div></td>
                                        <td class="el-table_11_column_72  ">
                                            <div class="cell">
                                                <button type="button" class="el-button el-button--text el-button--small">
                                                    <!---->
                                                    <!----><span>查看</span></button>
                                                <!---->
                                                <!---->
                                                <button type="button" class="el-button el-button--text el-button--small">
                                                    <!---->
                                                    <!----><span>删除</span></button>
                                                <!---->
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
                <div class="page_pagination">
                    <div class="el-pagination">
                        <span class="el-pagination__total">共 26372 条</span>
                        <button type="button" class="btn-prev disabled"><i class="el-icon el-icon-arrow-left"></i></button>
                        <ul class="el-pager">
                            <li class="number active">1</li>
                            <!---->
                            <li class="number">2</li>
                            <li class="number">3</li>
                            <li class="number">4</li>
                            <li class="number">5</li>
                            <li class="number">6</li>
                            <li class="el-icon more btn-quicknext el-icon-more"></li>
                            <li class="number">2638</li>
                        </ul>
                        <button type="button" class="btn-next"><i class="el-icon el-icon-arrow-right"></i></button>
                        <span class="el-pagination__jump">前往
         <div class="el-input el-pagination__editor is-in-pagination">
          <!---->
          <input autocomplete="off" type="number" rows="2" max="2638" min="1" validateevent="true" class="el-input__inner" />
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
            <div class="el-dialog" style="width: 30%; margin-top: 15vh;">
                <div class="el-dialog__header">
                    <span class="el-dialog__title">提示</span>
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
        <div class="el-dialog__wrapper" style="display: none;">
            <div class="el-dialog" style="width: 30%; margin-top: 15vh;">
                <div class="el-dialog__header">
                    <span class="el-dialog__title">提示</span>
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
        <div class="el-dialog__wrapper" style="display: none;">
            <div class="el-dialog" style="width: 30%; margin-top: 15vh;">
                <div class="el-dialog__header">
                    <span class="el-dialog__title">提示</span>
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
        <div class="el-dialog__wrapper" style="display: none;">
            <div class="el-dialog" style="margin-top: 15vh;">
                <div class="el-dialog__header">
                    <span class="el-dialog__title">新建编辑消息</span>
                    <button type="button" aria-label="Close" class="el-dialog__headerbtn"><i class="el-dialog__close el-icon el-icon-close"></i></button>
                </div>
                <!---->
                <div class="el-dialog__footer">
                    <div class="dialog-footer">
                        <button type="button" class="el-button el-button--default">
                            <!---->
                            <!----><span>取 消</span></button>
                        <button type="button" class="el-button el-button--primary">
                            <!---->
                            <!----><span>确 定</span></button>
                    </div>
                </div>
            </div>
        </div>
        <div class="el-dialog__wrapper" style="display: none;">
            <div class="el-dialog" style="margin-top: 15vh;">
                <div class="el-dialog__header">
                    <span class="el-dialog__title">消息详情</span>
                    <button type="button" aria-label="Close" class="el-dialog__headerbtn"><i class="el-dialog__close el-icon el-icon-close"></i></button>
                </div>
                <!---->
                <div class="el-dialog__footer">
                    <div class="dialog-footer">
                        <button type="button" class="el-button el-button--primary">
                            <!---->
                            <!----><span>确 定</span></button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="/backend/static/js/manifest.c14e77f4d85201197bc4.js"></script>
<script type="text/javascript" src="/backend/static/js/vendor.77db51a60fc55cf48c45.js"></script>
</body>
</html>