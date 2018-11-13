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
        <div id="container_1" class="container">
            <div class="menu_bar">
                <a href="#/" class="router-link-active">首页</a>&nbsp;&gt;&nbsp;
                <a href="javascript:void(0);">订单管理</a>
                <hr />
            </div>
            <div class="page_container">
                <div class="page_search user_search">
                    <div class="el-row">
                        <div class="el-col el-col-1.5" style="line-height: 30px;">
                            <span>付款时间</span>
                        </div>
                        <div class="el-col el-col-9.5">
                            <div class="seach_date_picker" style="width: 470px; display: inline-block;">
                                <div style="display: inline-block;">
                                    <div class="el-date-editor el-input el-input--prefix el-input--suffix el-date-editor--datetime">
                                        <!---->
                                        <input autocomplete="off" placeholder="开始时间" size="" name="" id="" type="text" rows="2" class="el-input__inner" />
                                        <span class="el-input__prefix"><i class="el-input__icon el-icon-time"></i>
                                            <!----></span>
                                        <span class="el-input__suffix"><span class="el-input__suffix-inner"><i class="el-input__icon"></i>
                                            <!----></span>
                                            <!----></span>
                                        <!---->
                                    </div>
                                </div>
                                <span class="demonstration">至</span>
                                <div style="display: inline-block;">
                                    <div class="el-date-editor el-input el-input--prefix el-input--suffix el-date-editor--datetime">
                                        <!---->
                                        <input autocomplete="off" placeholder="结束时间" size="" name="" id="" type="text" rows="2" class="el-input__inner" />
                                        <span class="el-input__prefix"><i class="el-input__icon el-icon-time"></i>
                                            <!----></span>
                                        <span class="el-input__suffix"><span class="el-input__suffix-inner"><i class="el-input__icon"></i>
                                            <!----></span>
                                            <!----></span>
                                        <!---->
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="el-col el-col-1.5" style="line-height: 30px;">
                            <span>付款状态</span>
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
                                                <li class="el-select-dropdown__item"><span>待支付</span></li>
                                                <li class="el-select-dropdown__item"><span>已失效</span></li>
                                                <li class="el-select-dropdown__item"><span>已支付</span></li>
                                                <li class="el-select-dropdown__item"><span>已取消</span></li>
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
                                                <li class="el-select-dropdown__item selected"><span>用户名</span></li>
                                                <li class="el-select-dropdown__item"><span>手机号</span></li>
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
                        <div class="el-col el-col-3">
                            <div class="title_search el-input el-input--suffix">
                                <!---->
                                <input autocomplete="off" placeholder="请输入内容" type="text" rows="2" validateevent="true" class="el-input__inner" />
                                <!---->
                                <span class="el-input__suffix"><span class="el-input__suffix-inner"><i class="el-input__icon el-icon-search"></i>
                                    <!----></span>
                                    <!----></span>
                                <!---->
                            </div>
                        </div>
                    </div>
                </div>
                <div class="page_content">
                    <div class="el-table el-table--fit el-table--enable-row-hover el-table--enable-row-transition" style="width: 100%;">
                        <div class="hidden-columns">
                            <div></div>
                            <div></div>
                            <div></div>
                            <div></div>
                            <div></div>
                            <div></div>
                            <div></div>
                        </div>
                        <div class="el-table__header-wrapper">
                            <table cellspacing="0" cellpadding="0" border="0" class="el-table__header" style="width: 1238px;">
                                <colgroup>
                                    <col name="el-table_22_column_143" width="50" />
                                    <col name="el-table_22_column_144" width="180" />
                                    <col name="el-table_22_column_145" width="288" />
                                    <col name="el-table_22_column_146" width="200" />
                                    <col name="el-table_22_column_147" width="220" />
                                    <col name="el-table_22_column_148" width="180" />
                                    <col name="el-table_22_column_149" width="120" />
                                    <col name="gutter" width="0" />
                                </colgroup>
                                <thead class="has-gutter">
                                <tr class="">
                                    <th colspan="1" rowspan="1" class="el-table_22_column_143     is-leaf">
                                        <div class="cell"></div></th>
                                    <th colspan="1" rowspan="1" class="el-table_22_column_144     is-leaf">
                                        <div class="cell">
                                            订单编号
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_22_column_145     is-leaf">
                                        <div class="cell">
                                            商品名
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_22_column_146     is-leaf">
                                        <div class="cell">
                                            收货信息
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_22_column_147     is-leaf">
                                        <div class="cell">
                                            款项
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_22_column_148     is-leaf">
                                        <div class="cell">
                                            付款时间
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_22_column_149     is-leaf">
                                        <div class="cell">
                                            操作
                                        </div></th>
                                    <th class="gutter" style="width: 0px; display: none;"></th>
                                </tr>
                                </thead>
                            </table>
                        </div>
                        <div class="el-table__body-wrapper is-scrolling-none">
                            <table cellspacing="0" cellpadding="0" border="0" class="el-table__body" style="width: 1238px;">
                                <colgroup>
                                    <col name="el-table_22_column_143" width="50" />
                                    <col name="el-table_22_column_144" width="180" />
                                    <col name="el-table_22_column_145" width="288" />
                                    <col name="el-table_22_column_146" width="200" />
                                    <col name="el-table_22_column_147" width="220" />
                                    <col name="el-table_22_column_148" width="180" />
                                    <col name="el-table_22_column_149" width="120" />
                                </colgroup>
                                <tbody>
                                <tr class="el-table__row">
                                    <td class="el-table_22_column_143  ">
                                        <div class="cell">
                                            <input type="checkbox" value="5bd91bf3ca31e5067225ffeb" />
                                        </div></td>
                                    <td class="el-table_22_column_144  ">
                                        <div class="cell">
                                            45590876092633088
                                        </div></td>
                                    <td class="el-table_22_column_145  ">
                                        <div class="cell">
                                            测试造数据
                                        </div></td>
                                    <td class="el-table_22_column_146  ">
                                        <div class="cell">
                                            李白（学生） 13565444444
                                        </div></td>
                                    <td class="el-table_22_column_147  ">
                                        <div class="cell">
                                            1234 微信 待支付
                                        </div></td>
                                    <td class="el-table_22_column_148  ">
                                        <div class="cell"></div></td>
                                    <td class="el-table_22_column_149  ">
                                        <div class="cell">
                                            <span class="el-icon-view el-tooltip item" aria-describedby="el-tooltip-6536" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_22_column_143  ">
                                        <div class="cell">
                                            <input type="checkbox" value="5bd80168ca31e5067225ffea" />
                                        </div></td>
                                    <td class="el-table_22_column_144  ">
                                        <div class="cell">
                                            45287510225457152
                                        </div></td>
                                    <td class="el-table_22_column_145  ">
                                        <div class="cell">
                                            红楼梦
                                        </div></td>
                                    <td class="el-table_22_column_146  ">
                                        <div class="cell">
                                            李白（学生） 13565444444
                                        </div></td>
                                    <td class="el-table_22_column_147  ">
                                        <div class="cell">
                                            1.98 微信 待支付
                                        </div></td>
                                    <td class="el-table_22_column_148  ">
                                        <div class="cell"></div></td>
                                    <td class="el-table_22_column_149  ">
                                        <div class="cell">
                                            <span class="el-icon-view el-tooltip item" aria-describedby="el-tooltip-4590" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_22_column_143  ">
                                        <div class="cell">
                                            <input type="checkbox" value="5bd80156ca31e5067225ffe9" />
                                        </div></td>
                                    <td class="el-table_22_column_144  ">
                                        <div class="cell">
                                            45287433687797760
                                        </div></td>
                                    <td class="el-table_22_column_145  ">
                                        <div class="cell">
                                            红楼梦
                                        </div></td>
                                    <td class="el-table_22_column_146  ">
                                        <div class="cell">
                                            李白（学生） 13565444444
                                        </div></td>
                                    <td class="el-table_22_column_147  ">
                                        <div class="cell">
                                            1.98 微信 待支付
                                        </div></td>
                                    <td class="el-table_22_column_148  ">
                                        <div class="cell"></div></td>
                                    <td class="el-table_22_column_149  ">
                                        <div class="cell">
                                            <span class="el-icon-view el-tooltip item" aria-describedby="el-tooltip-1165" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_22_column_143  ">
                                        <div class="cell">
                                            <input type="checkbox" value="5bd80109ca31e5067225ffe8" />
                                        </div></td>
                                    <td class="el-table_22_column_144  ">
                                        <div class="cell">
                                            45287114337685504
                                        </div></td>
                                    <td class="el-table_22_column_145  ">
                                        <div class="cell">
                                            测试8076
                                        </div></td>
                                    <td class="el-table_22_column_146  ">
                                        <div class="cell">
                                            学校lqq 13323443235
                                        </div></td>
                                    <td class="el-table_22_column_147  ">
                                        <div class="cell">
                                            954 微信 待支付
                                        </div></td>
                                    <td class="el-table_22_column_148  ">
                                        <div class="cell"></div></td>
                                    <td class="el-table_22_column_149  ">
                                        <div class="cell">
                                            <span class="el-icon-view el-tooltip item" aria-describedby="el-tooltip-686" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_22_column_143  ">
                                        <div class="cell">
                                            <input type="checkbox" value="5bd800d7ca31e5067225ffe7" />
                                        </div></td>
                                    <td class="el-table_22_column_144  ">
                                        <div class="cell">
                                            45286900663062528
                                        </div></td>
                                    <td class="el-table_22_column_145  ">
                                        <div class="cell">
                                            评测服务
                                        </div></td>
                                    <td class="el-table_22_column_146  ">
                                        <div class="cell">
                                            学校lqq 13323443235
                                        </div></td>
                                    <td class="el-table_22_column_147  ">
                                        <div class="cell">
                                            0.01 微信 待支付
                                        </div></td>
                                    <td class="el-table_22_column_148  ">
                                        <div class="cell"></div></td>
                                    <td class="el-table_22_column_149  ">
                                        <div class="cell">
                                            <span class="el-icon-view el-tooltip item" aria-describedby="el-tooltip-1872" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_22_column_143  ">
                                        <div class="cell">
                                            <input type="checkbox" value="5bbdad8bca31e5067dbfb8e7" />
                                        </div></td>
                                    <td class="el-table_22_column_144  ">
                                        <div class="cell">
                                            38050638818447360
                                        </div></td>
                                    <td class="el-table_22_column_145  ">
                                        <div class="cell">
                                            评测服务
                                        </div></td>
                                    <td class="el-table_22_column_146  ">
                                        <div class="cell">
                                            老师 13323443234
                                        </div></td>
                                    <td class="el-table_22_column_147  ">
                                        <div class="cell">
                                            0.01 微信 待支付
                                        </div></td>
                                    <td class="el-table_22_column_148  ">
                                        <div class="cell"></div></td>
                                    <td class="el-table_22_column_149  ">
                                        <div class="cell">
                                            <span class="el-icon-view el-tooltip item" aria-describedby="el-tooltip-3139" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_22_column_143  ">
                                        <div class="cell">
                                            <input type="checkbox" value="5b96256dca31e56b434bf41d" />
                                        </div></td>
                                    <td class="el-table_22_column_144  ">
                                        <div class="cell">
                                            27184115430199296
                                        </div></td>
                                    <td class="el-table_22_column_145  ">
                                        <div class="cell">
                                            测试3860
                                        </div></td>
                                    <td class="el-table_22_column_146  ">
                                        <div class="cell">
                                            学生 13565444444
                                        </div></td>
                                    <td class="el-table_22_column_147  ">
                                        <div class="cell">
                                            697 微信 已失效
                                        </div></td>
                                    <td class="el-table_22_column_148  ">
                                        <div class="cell"></div></td>
                                    <td class="el-table_22_column_149  ">
                                        <div class="cell">
                                            <span class="el-icon-view el-tooltip item" aria-describedby="el-tooltip-9602" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_22_column_143  ">
                                        <div class="cell">
                                            <input type="checkbox" value="5b866ffcca31e5064ff364d3" />
                                        </div></td>
                                    <td class="el-table_22_column_144  ">
                                        <div class="cell">
                                            22866245804101632
                                        </div></td>
                                    <td class="el-table_22_column_145  ">
                                        <div class="cell">
                                            评测服务
                                        </div></td>
                                    <td class="el-table_22_column_146  ">
                                        <div class="cell">
                                            李胜 15220203806
                                        </div></td>
                                    <td class="el-table_22_column_147  ">
                                        <div class="cell">
                                            0.01 微信 待支付
                                        </div></td>
                                    <td class="el-table_22_column_148  ">
                                        <div class="cell"></div></td>
                                    <td class="el-table_22_column_149  ">
                                        <div class="cell">
                                            <span class="el-icon-view el-tooltip item" aria-describedby="el-tooltip-1946" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_22_column_143  ">
                                        <div class="cell">
                                            <input type="checkbox" value="5b866f9dca31e5064ff364d2" />
                                        </div></td>
                                    <td class="el-table_22_column_144  ">
                                        <div class="cell">
                                            22865837987729408
                                        </div></td>
                                    <td class="el-table_22_column_145  ">
                                        <div class="cell">
                                            test
                                        </div></td>
                                    <td class="el-table_22_column_146  ">
                                        <div class="cell">
                                            李胜 15220203806
                                        </div></td>
                                    <td class="el-table_22_column_147  ">
                                        <div class="cell">
                                            0.01 微信 已支付
                                        </div></td>
                                    <td class="el-table_22_column_148  ">
                                        <div class="cell">
                                            2018-08-29 18:05:04
                                        </div></td>
                                    <td class="el-table_22_column_149  ">
                                        <div class="cell">
                                            <span class="el-icon-view el-tooltip item" aria-describedby="el-tooltip-9538" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_22_column_143  ">
                                        <div class="cell">
                                            <input type="checkbox" value="5b83550dca31e5066cbaa4b8" />
                                        </div></td>
                                    <td class="el-table_22_column_144  ">
                                        <div class="cell">
                                            22012704055103488
                                        </div></td>
                                    <td class="el-table_22_column_145  ">
                                        <div class="cell">
                                            测试3860
                                        </div></td>
                                    <td class="el-table_22_column_146  ">
                                        <div class="cell">
                                            老师 13456666666
                                        </div></td>
                                    <td class="el-table_22_column_147  ">
                                        <div class="cell">
                                            697 微信 已失效
                                        </div></td>
                                    <td class="el-table_22_column_148  ">
                                        <div class="cell"></div></td>
                                    <td class="el-table_22_column_149  ">
                                        <div class="cell">
                                            <span class="el-icon-view el-tooltip item" aria-describedby="el-tooltip-8818" tabindex="0"></span>
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
                                <div style="width: 1241px; height: 829px;"></div>
                            </div>
                            <div class="contract-trigger"></div>
                        </div>
                    </div>
                </div>
                <div class="page_pagination">
                    <div class="el-pagination">
                        <span class="el-pagination__total">共 621 条</span>
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
                            <li class="number">63</li>
                        </ul>
                        <button type="button" class="btn-next"><i class="el-icon el-icon-arrow-right"></i></button>
                        <span class="el-pagination__jump">前往
         <div class="el-input el-pagination__editor is-in-pagination">
          <!---->
          <input autocomplete="off" type="number" rows="2" max="63" min="1" validateevent="true" class="el-input__inner" />
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
            <div class="el-dialog" style="width: 700px; margin-top: 15vh;">
                <div class="el-dialog__header">
                    <span class="el-dialog__title">订单详情</span>
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