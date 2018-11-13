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
    <div class="wrapper bg b-new-wrapper goods-list-wrapper">
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
                    <span class="el-breadcrumb__item"><span role="link" class="el-breadcrumb__inner">首页</span><i class="el-breadcrumb__separator el-icon-arrow-right"></i></span>
                    <span class="el-breadcrumb__item"><span role="link" class="el-breadcrumb__inner">图书管理主页</span><i class="el-breadcrumb__separator el-icon-arrow-right"></i></span>
                    <span class="el-breadcrumb__item" aria-current="page"><span role="link" class="el-breadcrumb__inner">阅读书单管理</span><i class="el-breadcrumb__separator el-icon-arrow-right"></i></span>
                </div>
            </div>
            <div class="b-page-container">
                <div class="container-head clearfix">
                    <div class="el-row" span="24">
                        <div class="el-col el-col-1">
                            <label><input type="checkbox" class="container-checkbox" /> <span class="label-span">全选</span></label>
                        </div>
                        <div class="el-col el-col-2" style="margin-left: 20px;">
                            <span class="new-primary-button">删除</span>
                        </div>
                        <div class="el-col el-col-2">
                            <a href="#/readListEdit" class=""><span class="new-primary-button">添加</span></a>
                        </div>
                        <div class="right el-col el-col-8">
                            <div class="el-col el-col-8">
                                <div class="el-select">
                                    <!---->
                                    <div class="el-input el-input--suffix">
                                        <!---->
                                        <input autocomplete="off" placeholder="选择搜索类型" size="" readonly="readonly" type="text" rows="2" class="el-input__inner" />
                                        <!---->
                                        <span class="el-input__suffix"><span class="el-input__suffix-inner"><i class="el-select__caret el-input__icon el-icon-arrow-up"></i>
                                            <!----></span>
                                            <!----></span>
                                        <!---->
                                    </div>
                                    <div class="el-select-dropdown el-popper" style="display: none; min-width: 135.547px;">
                                        <div class="el-scrollbar" style="">
                                            <div class="el-select-dropdown__wrap el-scrollbar__wrap" style="margin-bottom: -17px; margin-right: -17px;">
                                                <ul class="el-scrollbar__view el-select-dropdown__list" style="position: relative;">
                                                    <!---->
                                                    <li class="el-select-dropdown__item selected"><span>书单名称</span></li>
                                                    <li class="el-select-dropdown__item"><span>归属机构</span></li>
                                                    <li class="el-select-dropdown__item"><span>书单发布者</span></li>
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
                                            <div style="width: 137px; height: 61px;"></div>
                                        </div>
                                        <div class="contract-trigger"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="el-col el-col-14">
                                <div class="el-input el-input--suffix">
                                    <!---->
                                    <input autocomplete="off" placeholder="请输入关键字搜索" type="text" rows="2" validateevent="true" class="el-input__inner" />
                                    <!---->
                                    <span class="el-input__suffix"><span class="el-input__suffix-inner"><i class="el-input__icon el-icon-search"></i>
                                        <!----></span>
                                        <!----></span>
                                    <!---->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="b-container-table read-tb">
                    <div class="el-table el-table--fit el-table--enable-row-hover el-table--enable-row-transition" style="width: 100%;">
                        <div class="hidden-columns">
                            <div></div>
                            <div></div>
                            <div></div>
                            <div></div>
                            <div></div>
                            <div></div>
                            <div></div>
                            <div style="text-align: center;"></div>
                            <div class="icon-cell"></div>
                        </div>
                        <div class="el-table__header-wrapper">
                            <table cellspacing="0" cellpadding="0" border="0" class="el-table__header" style="width: 1240px;">
                                <colgroup>
                                    <col name="el-table_24_column_159" width="50" />
                                    <col name="el-table_24_column_160" width="180" />
                                    <col name="el-table_24_column_161" width="120" />
                                    <col name="el-table_24_column_162" width="180" />
                                    <col name="el-table_24_column_163" width="100" />
                                    <col name="el-table_24_column_164" width="160" />
                                    <col name="el-table_24_column_165" width="140" />
                                    <col name="el-table_24_column_166" width="190" />
                                    <col name="el-table_24_column_167" width="120" />
                                    <col name="gutter" width="0" />
                                </colgroup>
                                <thead class="has-gutter">
                                <tr class="">
                                    <th colspan="1" rowspan="1" class="el-table_24_column_159     is-leaf">
                                        <div class="cell"></div></th>
                                    <th colspan="1" rowspan="1" class="el-table_24_column_160     is-leaf">
                                        <div class="cell">
                                            书单名称
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_24_column_161     is-leaf">
                                        <div class="cell">
                                            书单图书数量
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_24_column_162     is-leaf">
                                        <div class="cell">
                                            阅读截止时间
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_24_column_163     is-leaf">
                                        <div class="cell">
                                            状态
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_24_column_164     is-leaf">
                                        <div class="cell">
                                            归属机构
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_24_column_165     is-leaf">
                                        <div class="cell">
                                            书单发布者
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_24_column_166     is-leaf">
                                        <div class="cell">
                                            发布时间
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_24_column_167     is-leaf">
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
                                    <col name="el-table_24_column_159" width="50" />
                                    <col name="el-table_24_column_160" width="180" />
                                    <col name="el-table_24_column_161" width="120" />
                                    <col name="el-table_24_column_162" width="180" />
                                    <col name="el-table_24_column_163" width="100" />
                                    <col name="el-table_24_column_164" width="160" />
                                    <col name="el-table_24_column_165" width="140" />
                                    <col name="el-table_24_column_166" width="190" />
                                    <col name="el-table_24_column_167" width="120" />
                                </colgroup>
                                <tbody>
                                <tr class="el-table__row">
                                    <td class="el-table_24_column_159  ">
                                        <div class="cell">
                                            <ipnut type="checkbox" value="5be43cffca31e5069194b2a7" disabled="disabled" class="container-checkbox"></ipnut>
                                        </div></td>
                                    <td class="el-table_24_column_160  ">
                                        <div class="cell">
                                            有效书单7592
                                        </div></td>
                                    <td class="el-table_24_column_161  ">
                                        <div class="cell">
                                            4
                                        </div></td>
                                    <td class="el-table_24_column_162  ">
                                        <div class="cell">
                                            <span>2019-10-04 23:59:59</span>
                                        </div></td>
                                    <td class="el-table_24_column_163  ">
                                        <div class="cell">
                                            <div>
                                                发布
                                            </div>
                                        </div></td>
                                    <td class="el-table_24_column_164  ">
                                        <div class="cell">
                                            范大学附属龙岗中学
                                        </div></td>
                                    <td class="el-table_24_column_165  ">
                                        <div class="cell">
                                            服务3540
                                        </div></td>
                                    <td class="el-table_24_column_166  ">
                                        <div class="cell">
                                            <span>2018-11-08 21:41:16</span>
                                        </div></td>
                                    <td class="el-table_24_column_167  ">
                                        <div class="cell">
                                            <span class="goods-operation-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-602" tabindex="0"></span>
                                            <span class="goods-operation-icon i-opened el-tooltip scope.row" aria-describedby="el-tooltip-5666" tabindex="0"></span>
                                            <!---->
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_24_column_159  ">
                                        <div class="cell">
                                            <ipnut type="checkbox" value="5be43cfdca31e5069194b2a4" disabled="disabled" class="container-checkbox"></ipnut>
                                        </div></td>
                                    <td class="el-table_24_column_160  ">
                                        <div class="cell">
                                            TEST书单4118
                                        </div></td>
                                    <td class="el-table_24_column_161  ">
                                        <div class="cell">
                                            1
                                        </div></td>
                                    <td class="el-table_24_column_162  ">
                                        <div class="cell">
                                            <span>2020-10-01 00:00:00</span>
                                        </div></td>
                                    <td class="el-table_24_column_163  ">
                                        <div class="cell">
                                            <div>
                                                发布
                                            </div>
                                        </div></td>
                                    <td class="el-table_24_column_164  ">
                                        <div class="cell">
                                            坂田街道坂田小学
                                        </div></td>
                                    <td class="el-table_24_column_165  ">
                                        <div class="cell">
                                            admin11
                                        </div></td>
                                    <td class="el-table_24_column_166  ">
                                        <div class="cell">
                                            <span>2018-11-08 21:41:15</span>
                                        </div></td>
                                    <td class="el-table_24_column_167  ">
                                        <div class="cell">
                                            <span class="goods-operation-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-5921" tabindex="0"></span>
                                            <span class="goods-operation-icon i-opened el-tooltip scope.row" aria-describedby="el-tooltip-5427" tabindex="0"></span>
                                            <a href="#/readRules?id=5be43cfdca31e5069194b2a4" class="el-tooltip scope.row" aria-describedby="el-tooltip-1571" tabindex="0"><span class="i-rules"></span></a>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_24_column_159  ">
                                        <div class="cell">
                                            <input type="checkbox" class="container-checkbox" value="5be43cffca31e5069194b2a6" />
                                        </div></td>
                                    <td class="el-table_24_column_160  ">
                                        <div class="cell">
                                            过期书单3540
                                        </div></td>
                                    <td class="el-table_24_column_161  ">
                                        <div class="cell">
                                            4
                                        </div></td>
                                    <td class="el-table_24_column_162  ">
                                        <div class="cell">
                                            <span>2018-09-04 23:59:59</span>
                                        </div></td>
                                    <td class="el-table_24_column_163  ">
                                        <div class="cell">
                                            <div>
                                                驳回
                                            </div>
                                        </div></td>
                                    <td class="el-table_24_column_164  ">
                                        <div class="cell">
                                            范大学附属龙岗中学
                                        </div></td>
                                    <td class="el-table_24_column_165  ">
                                        <div class="cell">
                                            服务3540
                                        </div></td>
                                    <td class="el-table_24_column_166  ">
                                        <div class="cell">
                                            <span>--</span>
                                        </div></td>
                                    <td class="el-table_24_column_167  ">
                                        <div class="cell">
                                            <span class="goods-operation-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-8807" tabindex="0"></span>
                                            <span class="goods-operation-icon i-approve el-tooltip scope.row" aria-describedby="el-tooltip-122" tabindex="0"></span>
                                            <!---->
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_24_column_159  ">
                                        <div class="cell">
                                            <input type="checkbox" class="container-checkbox" value="5be43cfeca31e5069194b2a5" />
                                        </div></td>
                                    <td class="el-table_24_column_160  ">
                                        <div class="cell">
                                            TEST7592
                                        </div></td>
                                    <td class="el-table_24_column_161  ">
                                        <div class="cell">
                                            4
                                        </div></td>
                                    <td class="el-table_24_column_162  ">
                                        <div class="cell">
                                            <span>2019-10-04 23:59:59</span>
                                        </div></td>
                                    <td class="el-table_24_column_163  ">
                                        <div class="cell">
                                            <div>
                                                关闭
                                            </div>
                                        </div></td>
                                    <td class="el-table_24_column_164  ">
                                        <div class="cell">
                                            范大学附属龙岗中学
                                        </div></td>
                                    <td class="el-table_24_column_165  ">
                                        <div class="cell">
                                            服务3540
                                        </div></td>
                                    <td class="el-table_24_column_166  ">
                                        <div class="cell">
                                            <span>2018-11-08 21:41:16</span>
                                        </div></td>
                                    <td class="el-table_24_column_167  ">
                                        <div class="cell">
                                            <span class="goods-operation-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-2264" tabindex="0"></span>
                                            <!---->
                                            <!---->
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_24_column_159  ">
                                        <div class="cell">
                                            <ipnut type="checkbox" value="5be399adca31e5069194b29e" disabled="disabled" class="container-checkbox"></ipnut>
                                        </div></td>
                                    <td class="el-table_24_column_160  ">
                                        <div class="cell">
                                            人工智能简史（导师）
                                        </div></td>
                                    <td class="el-table_24_column_161  ">
                                        <div class="cell">
                                            1
                                        </div></td>
                                    <td class="el-table_24_column_162  ">
                                        <div class="cell">
                                            <span>2018-11-22 23:59:59</span>
                                        </div></td>
                                    <td class="el-table_24_column_163  ">
                                        <div class="cell">
                                            <div>
                                                发布
                                            </div>
                                        </div></td>
                                    <td class="el-table_24_column_164  ">
                                        <div class="cell">
                                            深圳市福田区荔园外国语小学
                                        </div></td>
                                    <td class="el-table_24_column_165  ">
                                        <div class="cell">
                                            阿布都沙拉木凯泽斯劳
                                        </div></td>
                                    <td class="el-table_24_column_166  ">
                                        <div class="cell">
                                            <span>2018-11-08 10:04:59</span>
                                        </div></td>
                                    <td class="el-table_24_column_167  ">
                                        <div class="cell">
                                            <span class="goods-operation-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-9088" tabindex="0"></span>
                                            <span class="goods-operation-icon i-opened el-tooltip scope.row" aria-describedby="el-tooltip-5485" tabindex="0"></span>
                                            <!---->
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_24_column_159  ">
                                        <div class="cell">
                                            <ipnut type="checkbox" value="5be3949fca31e5069194b29d" disabled="disabled" class="container-checkbox"></ipnut>
                                        </div></td>
                                    <td class="el-table_24_column_160  ">
                                        <div class="cell">
                                            人工智能简史
                                        </div></td>
                                    <td class="el-table_24_column_161  ">
                                        <div class="cell">
                                            1
                                        </div></td>
                                    <td class="el-table_24_column_162  ">
                                        <div class="cell">
                                            <span>2018-11-30 00:00:00</span>
                                        </div></td>
                                    <td class="el-table_24_column_163  ">
                                        <div class="cell">
                                            <div>
                                                发布
                                            </div>
                                        </div></td>
                                    <td class="el-table_24_column_164  ">
                                        <div class="cell">
                                            坂田街道坂田小学
                                        </div></td>
                                    <td class="el-table_24_column_165  ">
                                        <div class="cell">
                                            admin11
                                        </div></td>
                                    <td class="el-table_24_column_166  ">
                                        <div class="cell">
                                            <span>2018-11-08 09:45:23</span>
                                        </div></td>
                                    <td class="el-table_24_column_167  ">
                                        <div class="cell">
                                            <span class="goods-operation-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-5409" tabindex="0"></span>
                                            <span class="goods-operation-icon i-opened el-tooltip scope.row" aria-describedby="el-tooltip-9219" tabindex="0"></span>
                                            <a href="#/readRules?id=5be3949fca31e5069194b29d" class="el-tooltip scope.row" aria-describedby="el-tooltip-81" tabindex="0"><span class="i-rules"></span></a>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_24_column_159  ">
                                        <div class="cell">
                                            <ipnut type="checkbox" value="5be2eb7aca31e5069194b29c" disabled="disabled" class="container-checkbox"></ipnut>
                                        </div></td>
                                    <td class="el-table_24_column_160  ">
                                        <div class="cell">
                                            有效书单5148
                                        </div></td>
                                    <td class="el-table_24_column_161  ">
                                        <div class="cell">
                                            4
                                        </div></td>
                                    <td class="el-table_24_column_162  ">
                                        <div class="cell">
                                            <span>2019-10-04 23:59:59</span>
                                        </div></td>
                                    <td class="el-table_24_column_163  ">
                                        <div class="cell">
                                            <div>
                                                发布
                                            </div>
                                        </div></td>
                                    <td class="el-table_24_column_164  ">
                                        <div class="cell">
                                            颖星幼儿园
                                        </div></td>
                                    <td class="el-table_24_column_165  ">
                                        <div class="cell">
                                            测试1968
                                        </div></td>
                                    <td class="el-table_24_column_166  ">
                                        <div class="cell">
                                            <span>2018-11-07 21:41:13</span>
                                        </div></td>
                                    <td class="el-table_24_column_167  ">
                                        <div class="cell">
                                            <span class="goods-operation-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-730" tabindex="0"></span>
                                            <span class="goods-operation-icon i-opened el-tooltip scope.row" aria-describedby="el-tooltip-9585" tabindex="0"></span>
                                            <!---->
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_24_column_159  ">
                                        <div class="cell">
                                            <input type="checkbox" class="container-checkbox" value="5be2eb7aca31e5069194b29b" />
                                        </div></td>
                                    <td class="el-table_24_column_160  ">
                                        <div class="cell">
                                            过期书单1968
                                        </div></td>
                                    <td class="el-table_24_column_161  ">
                                        <div class="cell">
                                            4
                                        </div></td>
                                    <td class="el-table_24_column_162  ">
                                        <div class="cell">
                                            <span>2018-09-04 23:59:59</span>
                                        </div></td>
                                    <td class="el-table_24_column_163  ">
                                        <div class="cell">
                                            <div>
                                                驳回
                                            </div>
                                        </div></td>
                                    <td class="el-table_24_column_164  ">
                                        <div class="cell">
                                            颖星幼儿园
                                        </div></td>
                                    <td class="el-table_24_column_165  ">
                                        <div class="cell">
                                            测试1968
                                        </div></td>
                                    <td class="el-table_24_column_166  ">
                                        <div class="cell">
                                            <span>--</span>
                                        </div></td>
                                    <td class="el-table_24_column_167  ">
                                        <div class="cell">
                                            <span class="goods-operation-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-4764" tabindex="0"></span>
                                            <span class="goods-operation-icon i-approve el-tooltip scope.row" aria-describedby="el-tooltip-951" tabindex="0"></span>
                                            <!---->
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_24_column_159  ">
                                        <div class="cell">
                                            <input type="checkbox" class="container-checkbox" value="5be2eb7aca31e5069194b29a" />
                                        </div></td>
                                    <td class="el-table_24_column_160  ">
                                        <div class="cell">
                                            TEST5148
                                        </div></td>
                                    <td class="el-table_24_column_161  ">
                                        <div class="cell">
                                            4
                                        </div></td>
                                    <td class="el-table_24_column_162  ">
                                        <div class="cell">
                                            <span>2019-10-04 23:59:59</span>
                                        </div></td>
                                    <td class="el-table_24_column_163  ">
                                        <div class="cell">
                                            <div>
                                                关闭
                                            </div>
                                        </div></td>
                                    <td class="el-table_24_column_164  ">
                                        <div class="cell">
                                            颖星幼儿园
                                        </div></td>
                                    <td class="el-table_24_column_165  ">
                                        <div class="cell">
                                            测试1968
                                        </div></td>
                                    <td class="el-table_24_column_166  ">
                                        <div class="cell">
                                            <span>2018-11-07 21:41:13</span>
                                        </div></td>
                                    <td class="el-table_24_column_167  ">
                                        <div class="cell">
                                            <span class="goods-operation-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-8826" tabindex="0"></span>
                                            <!---->
                                            <!---->
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_24_column_159  ">
                                        <div class="cell">
                                            <ipnut type="checkbox" value="5be2eb79ca31e5069194b299" disabled="disabled" class="container-checkbox"></ipnut>
                                        </div></td>
                                    <td class="el-table_24_column_160  ">
                                        <div class="cell">
                                            TEST书单7084
                                        </div></td>
                                    <td class="el-table_24_column_161  ">
                                        <div class="cell">
                                            1
                                        </div></td>
                                    <td class="el-table_24_column_162  ">
                                        <div class="cell">
                                            <span>2020-10-01 00:00:00</span>
                                        </div></td>
                                    <td class="el-table_24_column_163  ">
                                        <div class="cell">
                                            <div>
                                                发布
                                            </div>
                                        </div></td>
                                    <td class="el-table_24_column_164  ">
                                        <div class="cell">
                                            坂田街道坂田小学
                                        </div></td>
                                    <td class="el-table_24_column_165  ">
                                        <div class="cell">
                                            admin11
                                        </div></td>
                                    <td class="el-table_24_column_166  ">
                                        <div class="cell">
                                            <span>2018-11-07 21:41:11</span>
                                        </div></td>
                                    <td class="el-table_24_column_167  ">
                                        <div class="cell">
                                            <span class="goods-operation-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-3918" tabindex="0"></span>
                                            <span class="goods-operation-icon i-opened el-tooltip scope.row" aria-describedby="el-tooltip-8456" tabindex="0"></span>
                                            <a href="#/readRules?id=5be2eb79ca31e5069194b299" class="el-tooltip scope.row" aria-describedby="el-tooltip-7080" tabindex="0"><span class="i-rules"></span></a>
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
                                <div style="width: 1241px; height: 566px;"></div>
                            </div>
                            <div class="contract-trigger"></div>
                        </div>
                    </div>
                    <div>
                        <div class="el-pagination" style="text-align: right;">
                            <span class="el-pagination__total">共 441 条</span>
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
                                <li class="number">45</li>
                            </ul>
                            <button type="button" class="btn-next"><i class="el-icon el-icon-arrow-right"></i></button>
                            <span class="el-pagination__jump">前往
          <div class="el-input el-pagination__editor is-in-pagination">
           <!---->
           <input autocomplete="off" type="number" rows="2" max="45" min="1" validateevent="true" class="el-input__inner" />
              <!---->
              <!---->
              <!---->
          </div>页</span>
                        </div>
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
        <div class="el-dialog__wrapper ap-popup" style="display: none;">
            <div class="el-dialog" style="margin-top: 15vh;">
                <div class="el-dialog__header">
                    <span class="el-dialog__title">审批</span>
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
    </div>
</div>
<script type="text/javascript" src="/backend/static/js/manifest.c14e77f4d85201197bc4.js"></script>
<script type="text/javascript" src="/backend/static/js/vendor.77db51a60fc55cf48c45.js"></script>
</body>
</html>
