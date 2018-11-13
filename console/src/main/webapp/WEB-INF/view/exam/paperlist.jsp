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
                <a href="../index/main" class="router-link-active">首页</a>&nbsp;&gt;&nbsp;
                <a href="/exam/index" class="">问答卷管理</a>&nbsp;&gt;&nbsp;
                <a href="javascript:void(0);"> 答卷管理</a>
                <hr />
            </div>
            <div class="page_container paperlist">
                <div class="page_search user_search">
                    <div class="el-row">
                        <div class="el-col el-col-3 el-col-offset-17">
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
                                                <li class="el-select-dropdown__item"><span>活动ID</span></li>
                                                <li class="el-select-dropdown__item selected"><span>活动名称</span></li>
                                                <li class="el-select-dropdown__item"><span>活动卷名称</span></li>
                                                <li class="el-select-dropdown__item"><span>活动节点</span></li>
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
                        <div class="el-col el-col-4">
                            <div class="title_search el-input el-input--suffix">
                                <!---->
                                <input autocomplete="off" placeholder="请输入关键词" type="text" rows="2" validateevent="true" class="el-input__inner" />
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
                            <table cellspacing="0" cellpadding="0" border="0" class="el-table__header" style="width: 1230px;">
                                <colgroup>
                                    <col name="el-table_2_column_9" width="200" />
                                    <col name="el-table_2_column_10" width="300" />
                                    <col name="el-table_2_column_11" width="200" />
                                    <col name="el-table_2_column_12" width="160" />
                                    <col name="el-table_2_column_13" width="250" />
                                    <col name="el-table_2_column_14" width="120" />
                                    <col name="gutter" width="0" />
                                </colgroup>
                                <thead class="has-gutter">
                                <tr class="">
                                    <th colspan="1" rowspan="1" class="el-table_2_column_9  is-center   is-leaf">
                                        <div class="cell">
                                            活动ID
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_2_column_10  is-center   is-leaf">
                                        <div class="cell">
                                            活动名称
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_2_column_11  is-center   is-leaf">
                                        <div class="cell">
                                            活动卷名称
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_2_column_12  is-center   is-leaf">
                                        <div class="cell">
                                            活动节点
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_2_column_13  is-center   is-leaf">
                                        <div class="cell">
                                            活动时间段
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_2_column_14  is-center   is-hidden is-leaf">
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
                                    <col name="el-table_2_column_9" width="200" />
                                    <col name="el-table_2_column_10" width="300" />
                                    <col name="el-table_2_column_11" width="200" />
                                    <col name="el-table_2_column_12" width="160" />
                                    <col name="el-table_2_column_13" width="250" />
                                    <col name="el-table_2_column_14" width="120" />
                                </colgroup>
                                <tbody>
                                <tr class="el-table__row">
                                    <td class="el-table_2_column_9 is-center ">
                                        <div class="cell">
                                            20180705145341054651
                                        </div></td>
                                    <td class="el-table_2_column_10 is-center ">
                                        <div class="cell">
                                            测试数据
                                        </div></td>
                                    <td class="el-table_2_column_11 is-center ">
                                        <div class="cell">
                                            校园卷
                                        </div></td>
                                    <td class="el-table_2_column_12 is-center ">
                                        <div class="cell">
                                            创建节点
                                        </div></td>
                                    <td class="el-table_2_column_13 is-center ">
                                        <div class="cell">
                                            <span>2026-07-31</span>至
                                            <span>2026-08-10</span>
                                        </div></td>
                                    <td class="el-table_2_column_14 is-center  is-hidden">
                                        <div class="cell">
                                            <a href="#/paper/20180705145341054651?nodeId=20180627171806099881&amp;eventQuestionnaireId=5b0fb6345ddd8509bd30094e" class="el-tooltip item" aria-describedby="el-tooltip-9682" tabindex="0"><span class="icon-sx-view"></span></a>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_2_column_9 is-center ">
                                        <div class="cell">
                                            20180705145341054651
                                        </div></td>
                                    <td class="el-table_2_column_10 is-center ">
                                        <div class="cell">
                                            测试数据
                                        </div></td>
                                    <td class="el-table_2_column_11 is-center ">
                                        <div class="cell">
                                            学生卷
                                        </div></td>
                                    <td class="el-table_2_column_12 is-center ">
                                        <div class="cell">
                                            创建节点
                                        </div></td>
                                    <td class="el-table_2_column_13 is-center ">
                                        <div class="cell">
                                            <span>2026-07-31</span>至
                                            <span>2026-08-10</span>
                                        </div></td>
                                    <td class="el-table_2_column_14 is-center  is-hidden">
                                        <div class="cell">
                                            <a href="#/paper/20180705145341054651?nodeId=20180627171806099881&amp;eventQuestionnaireId=5b0fb6265ddd8509bd30094d" class="el-tooltip item" aria-describedby="el-tooltip-3402" tabindex="0"><span class="icon-sx-view"></span></a>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_2_column_9 is-center ">
                                        <div class="cell">
                                            20181022153303280273
                                        </div></td>
                                    <td class="el-table_2_column_10 is-center ">
                                        <div class="cell">
                                            lqq活动3
                                        </div></td>
                                    <td class="el-table_2_column_11 is-center ">
                                        <div class="cell">
                                            学生卷
                                        </div></td>
                                    <td class="el-table_2_column_12 is-center ">
                                        <div class="cell">
                                            lqqjd1
                                        </div></td>
                                    <td class="el-table_2_column_13 is-center ">
                                        <div class="cell">
                                            <span>2018-10-22</span>至
                                            <span>2018-10-24</span>
                                        </div></td>
                                    <td class="el-table_2_column_14 is-center  is-hidden">
                                        <div class="cell">
                                            <a href="#/paper/20181022153303280273?nodeId=20181010174525411884&amp;eventQuestionnaireId=5b0fb6265ddd8509bd30094d" class="el-tooltip item" aria-describedby="el-tooltip-153" tabindex="0"><span class="icon-sx-view"></span></a>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_2_column_9 is-center ">
                                        <div class="cell">
                                            201806201134051714917
                                        </div></td>
                                    <td class="el-table_2_column_10 is-center ">
                                        <div class="cell">
                                            得到的广告词
                                        </div></td>
                                    <td class="el-table_2_column_11 is-center ">
                                        <div class="cell">
                                            幼儿家长卷
                                        </div></td>
                                    <td class="el-table_2_column_12 is-center ">
                                        <div class="cell">
                                            幼儿园卷
                                        </div></td>
                                    <td class="el-table_2_column_13 is-center ">
                                        <div class="cell">
                                            <span>2018-10-21</span>至
                                            <span>2018-10-31</span>
                                        </div></td>
                                    <td class="el-table_2_column_14 is-center  is-hidden">
                                        <div class="cell">
                                            <a href="#/paper/201806201134051714917?nodeId=201806151014101667694&amp;eventQuestionnaireId=5b0fb6715ddd8509bd300951" class="el-tooltip item" aria-describedby="el-tooltip-7089" tabindex="0"><span class="icon-sx-view"></span></a>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_2_column_9 is-center ">
                                        <div class="cell">
                                            201806201134051714917
                                        </div></td>
                                    <td class="el-table_2_column_10 is-center ">
                                        <div class="cell">
                                            得到的广告词
                                        </div></td>
                                    <td class="el-table_2_column_11 is-center ">
                                        <div class="cell">
                                            幼儿园卷
                                        </div></td>
                                    <td class="el-table_2_column_12 is-center ">
                                        <div class="cell">
                                            幼儿园卷
                                        </div></td>
                                    <td class="el-table_2_column_13 is-center ">
                                        <div class="cell">
                                            <span>2018-10-21</span>至
                                            <span>2018-10-31</span>
                                        </div></td>
                                    <td class="el-table_2_column_14 is-center  is-hidden">
                                        <div class="cell">
                                            <a href="#/paper/201806201134051714917?nodeId=201806151014101667694&amp;eventQuestionnaireId=5b0fb6855ddd8509bd300952" class="el-tooltip item" aria-describedby="el-tooltip-3467" tabindex="0"><span class="icon-sx-view"></span></a>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_2_column_9 is-center ">
                                        <div class="cell">
                                            201806201134051714917
                                        </div></td>
                                    <td class="el-table_2_column_10 is-center ">
                                        <div class="cell">
                                            得到的广告词
                                        </div></td>
                                    <td class="el-table_2_column_11 is-center ">
                                        <div class="cell">
                                            幼儿教师卷
                                        </div></td>
                                    <td class="el-table_2_column_12 is-center ">
                                        <div class="cell">
                                            幼儿园卷
                                        </div></td>
                                    <td class="el-table_2_column_13 is-center ">
                                        <div class="cell">
                                            <span>2018-10-21</span>至
                                            <span>2018-10-31</span>
                                        </div></td>
                                    <td class="el-table_2_column_14 is-center  is-hidden">
                                        <div class="cell">
                                            <a href="#/paper/201806201134051714917?nodeId=201806151014101667694&amp;eventQuestionnaireId=5b0fb6615ddd8509bd300950" class="el-tooltip item" aria-describedby="el-tooltip-5074" tabindex="0"><span class="icon-sx-view"></span></a>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_2_column_9 is-center ">
                                        <div class="cell">
                                            201806151423231661793
                                        </div></td>
                                    <td class="el-table_2_column_10 is-center ">
                                        <div class="cell">
                                            测试测
                                        </div></td>
                                    <td class="el-table_2_column_11 is-center ">
                                        <div class="cell">
                                            幼儿家长卷
                                        </div></td>
                                    <td class="el-table_2_column_12 is-center ">
                                        <div class="cell">
                                            幼儿园卷
                                        </div></td>
                                    <td class="el-table_2_column_13 is-center ">
                                        <div class="cell">
                                            <span>2018-10-16</span>至
                                            <span>2018-10-26</span>
                                        </div></td>
                                    <td class="el-table_2_column_14 is-center  is-hidden">
                                        <div class="cell">
                                            <a href="#/paper/201806151423231661793?nodeId=201806151014101667694&amp;eventQuestionnaireId=5b0fb6715ddd8509bd300951" class="el-tooltip item" aria-describedby="el-tooltip-9494" tabindex="0"><span class="icon-sx-view"></span></a>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_2_column_9 is-center ">
                                        <div class="cell">
                                            201806151439311668762
                                        </div></td>
                                    <td class="el-table_2_column_10 is-center ">
                                        <div class="cell">
                                            测试幼儿园
                                        </div></td>
                                    <td class="el-table_2_column_11 is-center ">
                                        <div class="cell">
                                            幼儿家长卷
                                        </div></td>
                                    <td class="el-table_2_column_12 is-center ">
                                        <div class="cell">
                                            幼儿园卷
                                        </div></td>
                                    <td class="el-table_2_column_13 is-center ">
                                        <div class="cell">
                                            <span>2018-10-16</span>至
                                            <span>2018-10-26</span>
                                        </div></td>
                                    <td class="el-table_2_column_14 is-center  is-hidden">
                                        <div class="cell">
                                            <a href="#/paper/201806151439311668762?nodeId=201806151014101667694&amp;eventQuestionnaireId=5b0fb6715ddd8509bd300951" class="el-tooltip item" aria-describedby="el-tooltip-5809" tabindex="0"><span class="icon-sx-view"></span></a>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_2_column_9 is-center ">
                                        <div class="cell">
                                            201806151423231661793
                                        </div></td>
                                    <td class="el-table_2_column_10 is-center ">
                                        <div class="cell">
                                            测试测
                                        </div></td>
                                    <td class="el-table_2_column_11 is-center ">
                                        <div class="cell">
                                            幼儿园卷
                                        </div></td>
                                    <td class="el-table_2_column_12 is-center ">
                                        <div class="cell">
                                            幼儿园卷
                                        </div></td>
                                    <td class="el-table_2_column_13 is-center ">
                                        <div class="cell">
                                            <span>2018-10-16</span>至
                                            <span>2018-10-26</span>
                                        </div></td>
                                    <td class="el-table_2_column_14 is-center  is-hidden">
                                        <div class="cell">
                                            <a href="#/paper/201806151423231661793?nodeId=201806151014101667694&amp;eventQuestionnaireId=5b0fb6855ddd8509bd300952" class="el-tooltip item" aria-describedby="el-tooltip-7994" tabindex="0"><span class="icon-sx-view"></span></a>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_2_column_9 is-center ">
                                        <div class="cell">
                                            201806151439311668762
                                        </div></td>
                                    <td class="el-table_2_column_10 is-center ">
                                        <div class="cell">
                                            测试幼儿园
                                        </div></td>
                                    <td class="el-table_2_column_11 is-center ">
                                        <div class="cell">
                                            幼儿园卷
                                        </div></td>
                                    <td class="el-table_2_column_12 is-center ">
                                        <div class="cell">
                                            幼儿园卷
                                        </div></td>
                                    <td class="el-table_2_column_13 is-center ">
                                        <div class="cell">
                                            <span>2018-10-16</span>至
                                            <span>2018-10-26</span>
                                        </div></td>
                                    <td class="el-table_2_column_14 is-center  is-hidden">
                                        <div class="cell">
                                            <a href="#/paper/201806151439311668762?nodeId=201806151014101667694&amp;eventQuestionnaireId=5b0fb6855ddd8509bd300952" class="el-tooltip item" aria-describedby="el-tooltip-2144" tabindex="0"><span class="icon-sx-view"></span></a>
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
                        <div class="el-table__fixed-right" style="width: 120px; height: 388px;">
                            <div class="el-table__fixed-header-wrapper">
                                <table cellspacing="0" cellpadding="0" border="0" class="el-table__header" style="width: 120px;">
                                    <colgroup>
                                        <col name="el-table_2_column_9" width="200" />
                                        <col name="el-table_2_column_10" width="300" />
                                        <col name="el-table_2_column_11" width="200" />
                                        <col name="el-table_2_column_12" width="160" />
                                        <col name="el-table_2_column_13" width="250" />
                                        <col name="el-table_2_column_14" width="120" />
                                    </colgroup>
                                    <thead class="">
                                    <tr class="">
                                        <th colspan="1" rowspan="1" class="el-table_2_column_9  is-center   is-hidden is-leaf">
                                            <div class="cell">
                                                活动ID
                                            </div></th>
                                        <th colspan="1" rowspan="1" class="el-table_2_column_10  is-center   is-hidden is-leaf">
                                            <div class="cell">
                                                活动名称
                                            </div></th>
                                        <th colspan="1" rowspan="1" class="el-table_2_column_11  is-center   is-hidden is-leaf">
                                            <div class="cell">
                                                活动卷名称
                                            </div></th>
                                        <th colspan="1" rowspan="1" class="el-table_2_column_12  is-center   is-hidden is-leaf">
                                            <div class="cell">
                                                活动节点
                                            </div></th>
                                        <th colspan="1" rowspan="1" class="el-table_2_column_13  is-center   is-hidden is-leaf">
                                            <div class="cell">
                                                活动时间段
                                            </div></th>
                                        <th colspan="1" rowspan="1" class="el-table_2_column_14  is-center   is-leaf">
                                            <div class="cell">
                                                操作
                                            </div></th>
                                    </tr>
                                    </thead>
                                </table>
                            </div>
                            <div class="el-table__fixed-body-wrapper" style="top: 48px;">
                                <table cellspacing="0" cellpadding="0" border="0" class="el-table__body" style="width: 120px;">
                                    <colgroup>
                                        <col name="el-table_2_column_9" width="200" />
                                        <col name="el-table_2_column_10" width="300" />
                                        <col name="el-table_2_column_11" width="200" />
                                        <col name="el-table_2_column_12" width="160" />
                                        <col name="el-table_2_column_13" width="250" />
                                        <col name="el-table_2_column_14" width="120" />
                                    </colgroup>
                                    <tbody>
                                    <tr class="el-table__row">
                                        <td class="el-table_2_column_9 is-center  is-hidden">
                                            <div class="cell">
                                                20180705145341054651
                                            </div></td>
                                        <td class="el-table_2_column_10 is-center  is-hidden">
                                            <div class="cell">
                                                测试数据
                                            </div></td>
                                        <td class="el-table_2_column_11 is-center  is-hidden">
                                            <div class="cell">
                                                校园卷
                                            </div></td>
                                        <td class="el-table_2_column_12 is-center  is-hidden">
                                            <div class="cell">
                                                创建节点
                                            </div></td>
                                        <td class="el-table_2_column_13 is-center  is-hidden">
                                            <div class="cell">
                                                <span>2026-07-31</span>至
                                                <span>2026-08-10</span>
                                            </div></td>
                                        <td class="el-table_2_column_14 is-center ">
                                            <div class="cell">
                                                <a href="#/paper/20180705145341054651?nodeId=20180627171806099881&amp;eventQuestionnaireId=5b0fb6345ddd8509bd30094e" class="el-tooltip item" aria-describedby="el-tooltip-8455" tabindex="0"><span class="icon-sx-view"></span></a>
                                            </div></td>
                                    </tr>
                                    <tr class="el-table__row">
                                        <td class="el-table_2_column_9 is-center  is-hidden">
                                            <div class="cell">
                                                20180705145341054651
                                            </div></td>
                                        <td class="el-table_2_column_10 is-center  is-hidden">
                                            <div class="cell">
                                                测试数据
                                            </div></td>
                                        <td class="el-table_2_column_11 is-center  is-hidden">
                                            <div class="cell">
                                                学生卷
                                            </div></td>
                                        <td class="el-table_2_column_12 is-center  is-hidden">
                                            <div class="cell">
                                                创建节点
                                            </div></td>
                                        <td class="el-table_2_column_13 is-center  is-hidden">
                                            <div class="cell">
                                                <span>2026-07-31</span>至
                                                <span>2026-08-10</span>
                                            </div></td>
                                        <td class="el-table_2_column_14 is-center ">
                                            <div class="cell">
                                                <a href="#/paper/20180705145341054651?nodeId=20180627171806099881&amp;eventQuestionnaireId=5b0fb6265ddd8509bd30094d" class="el-tooltip item" aria-describedby="el-tooltip-4984" tabindex="0"><span class="icon-sx-view"></span></a>
                                            </div></td>
                                    </tr>
                                    <tr class="el-table__row">
                                        <td class="el-table_2_column_9 is-center  is-hidden">
                                            <div class="cell">
                                                20181022153303280273
                                            </div></td>
                                        <td class="el-table_2_column_10 is-center  is-hidden">
                                            <div class="cell">
                                                lqq活动3
                                            </div></td>
                                        <td class="el-table_2_column_11 is-center  is-hidden">
                                            <div class="cell">
                                                学生卷
                                            </div></td>
                                        <td class="el-table_2_column_12 is-center  is-hidden">
                                            <div class="cell">
                                                lqqjd1
                                            </div></td>
                                        <td class="el-table_2_column_13 is-center  is-hidden">
                                            <div class="cell">
                                                <span>2018-10-22</span>至
                                                <span>2018-10-24</span>
                                            </div></td>
                                        <td class="el-table_2_column_14 is-center ">
                                            <div class="cell">
                                                <a href="#/paper/20181022153303280273?nodeId=20181010174525411884&amp;eventQuestionnaireId=5b0fb6265ddd8509bd30094d" class="el-tooltip item" aria-describedby="el-tooltip-377" tabindex="0"><span class="icon-sx-view"></span></a>
                                            </div></td>
                                    </tr>
                                    <tr class="el-table__row">
                                        <td class="el-table_2_column_9 is-center  is-hidden">
                                            <div class="cell">
                                                201806201134051714917
                                            </div></td>
                                        <td class="el-table_2_column_10 is-center  is-hidden">
                                            <div class="cell">
                                                得到的广告词
                                            </div></td>
                                        <td class="el-table_2_column_11 is-center  is-hidden">
                                            <div class="cell">
                                                幼儿家长卷
                                            </div></td>
                                        <td class="el-table_2_column_12 is-center  is-hidden">
                                            <div class="cell">
                                                幼儿园卷
                                            </div></td>
                                        <td class="el-table_2_column_13 is-center  is-hidden">
                                            <div class="cell">
                                                <span>2018-10-21</span>至
                                                <span>2018-10-31</span>
                                            </div></td>
                                        <td class="el-table_2_column_14 is-center ">
                                            <div class="cell">
                                                <a href="#/paper/201806201134051714917?nodeId=201806151014101667694&amp;eventQuestionnaireId=5b0fb6715ddd8509bd300951" class="el-tooltip item" aria-describedby="el-tooltip-2416" tabindex="0"><span class="icon-sx-view"></span></a>
                                            </div></td>
                                    </tr>
                                    <tr class="el-table__row">
                                        <td class="el-table_2_column_9 is-center  is-hidden">
                                            <div class="cell">
                                                201806201134051714917
                                            </div></td>
                                        <td class="el-table_2_column_10 is-center  is-hidden">
                                            <div class="cell">
                                                得到的广告词
                                            </div></td>
                                        <td class="el-table_2_column_11 is-center  is-hidden">
                                            <div class="cell">
                                                幼儿园卷
                                            </div></td>
                                        <td class="el-table_2_column_12 is-center  is-hidden">
                                            <div class="cell">
                                                幼儿园卷
                                            </div></td>
                                        <td class="el-table_2_column_13 is-center  is-hidden">
                                            <div class="cell">
                                                <span>2018-10-21</span>至
                                                <span>2018-10-31</span>
                                            </div></td>
                                        <td class="el-table_2_column_14 is-center ">
                                            <div class="cell">
                                                <a href="#/paper/201806201134051714917?nodeId=201806151014101667694&amp;eventQuestionnaireId=5b0fb6855ddd8509bd300952" class="el-tooltip item" aria-describedby="el-tooltip-5594" tabindex="0"><span class="icon-sx-view"></span></a>
                                            </div></td>
                                    </tr>
                                    <tr class="el-table__row">
                                        <td class="el-table_2_column_9 is-center  is-hidden">
                                            <div class="cell">
                                                201806201134051714917
                                            </div></td>
                                        <td class="el-table_2_column_10 is-center  is-hidden">
                                            <div class="cell">
                                                得到的广告词
                                            </div></td>
                                        <td class="el-table_2_column_11 is-center  is-hidden">
                                            <div class="cell">
                                                幼儿教师卷
                                            </div></td>
                                        <td class="el-table_2_column_12 is-center  is-hidden">
                                            <div class="cell">
                                                幼儿园卷
                                            </div></td>
                                        <td class="el-table_2_column_13 is-center  is-hidden">
                                            <div class="cell">
                                                <span>2018-10-21</span>至
                                                <span>2018-10-31</span>
                                            </div></td>
                                        <td class="el-table_2_column_14 is-center ">
                                            <div class="cell">
                                                <a href="#/paper/201806201134051714917?nodeId=201806151014101667694&amp;eventQuestionnaireId=5b0fb6615ddd8509bd300950" class="el-tooltip item" aria-describedby="el-tooltip-8498" tabindex="0"><span class="icon-sx-view"></span></a>
                                            </div></td>
                                    </tr>
                                    <tr class="el-table__row">
                                        <td class="el-table_2_column_9 is-center  is-hidden">
                                            <div class="cell">
                                                201806151423231661793
                                            </div></td>
                                        <td class="el-table_2_column_10 is-center  is-hidden">
                                            <div class="cell">
                                                测试测
                                            </div></td>
                                        <td class="el-table_2_column_11 is-center  is-hidden">
                                            <div class="cell">
                                                幼儿家长卷
                                            </div></td>
                                        <td class="el-table_2_column_12 is-center  is-hidden">
                                            <div class="cell">
                                                幼儿园卷
                                            </div></td>
                                        <td class="el-table_2_column_13 is-center  is-hidden">
                                            <div class="cell">
                                                <span>2018-10-16</span>至
                                                <span>2018-10-26</span>
                                            </div></td>
                                        <td class="el-table_2_column_14 is-center ">
                                            <div class="cell">
                                                <a href="#/paper/201806151423231661793?nodeId=201806151014101667694&amp;eventQuestionnaireId=5b0fb6715ddd8509bd300951" class="el-tooltip item" aria-describedby="el-tooltip-8567" tabindex="0"><span class="icon-sx-view"></span></a>
                                            </div></td>
                                    </tr>
                                    <tr class="el-table__row">
                                        <td class="el-table_2_column_9 is-center  is-hidden">
                                            <div class="cell">
                                                201806151439311668762
                                            </div></td>
                                        <td class="el-table_2_column_10 is-center  is-hidden">
                                            <div class="cell">
                                                测试幼儿园
                                            </div></td>
                                        <td class="el-table_2_column_11 is-center  is-hidden">
                                            <div class="cell">
                                                幼儿家长卷
                                            </div></td>
                                        <td class="el-table_2_column_12 is-center  is-hidden">
                                            <div class="cell">
                                                幼儿园卷
                                            </div></td>
                                        <td class="el-table_2_column_13 is-center  is-hidden">
                                            <div class="cell">
                                                <span>2018-10-16</span>至
                                                <span>2018-10-26</span>
                                            </div></td>
                                        <td class="el-table_2_column_14 is-center ">
                                            <div class="cell">
                                                <a href="#/paper/201806151439311668762?nodeId=201806151014101667694&amp;eventQuestionnaireId=5b0fb6715ddd8509bd300951" class="el-tooltip item" aria-describedby="el-tooltip-6562" tabindex="0"><span class="icon-sx-view"></span></a>
                                            </div></td>
                                    </tr>
                                    <tr class="el-table__row">
                                        <td class="el-table_2_column_9 is-center  is-hidden">
                                            <div class="cell">
                                                201806151423231661793
                                            </div></td>
                                        <td class="el-table_2_column_10 is-center  is-hidden">
                                            <div class="cell">
                                                测试测
                                            </div></td>
                                        <td class="el-table_2_column_11 is-center  is-hidden">
                                            <div class="cell">
                                                幼儿园卷
                                            </div></td>
                                        <td class="el-table_2_column_12 is-center  is-hidden">
                                            <div class="cell">
                                                幼儿园卷
                                            </div></td>
                                        <td class="el-table_2_column_13 is-center  is-hidden">
                                            <div class="cell">
                                                <span>2018-10-16</span>至
                                                <span>2018-10-26</span>
                                            </div></td>
                                        <td class="el-table_2_column_14 is-center ">
                                            <div class="cell">
                                                <a href="#/paper/201806151423231661793?nodeId=201806151014101667694&amp;eventQuestionnaireId=5b0fb6855ddd8509bd300952" class="el-tooltip item" aria-describedby="el-tooltip-4396" tabindex="0"><span class="icon-sx-view"></span></a>
                                            </div></td>
                                    </tr>
                                    <tr class="el-table__row">
                                        <td class="el-table_2_column_9 is-center  is-hidden">
                                            <div class="cell">
                                                201806151439311668762
                                            </div></td>
                                        <td class="el-table_2_column_10 is-center  is-hidden">
                                            <div class="cell">
                                                测试幼儿园
                                            </div></td>
                                        <td class="el-table_2_column_11 is-center  is-hidden">
                                            <div class="cell">
                                                幼儿园卷
                                            </div></td>
                                        <td class="el-table_2_column_12 is-center  is-hidden">
                                            <div class="cell">
                                                幼儿园卷
                                            </div></td>
                                        <td class="el-table_2_column_13 is-center  is-hidden">
                                            <div class="cell">
                                                <span>2018-10-16</span>至
                                                <span>2018-10-26</span>
                                            </div></td>
                                        <td class="el-table_2_column_14 is-center ">
                                            <div class="cell">
                                                <a href="#/paper/201806151439311668762?nodeId=201806151014101667694&amp;eventQuestionnaireId=5b0fb6855ddd8509bd300952" class="el-tooltip item" aria-describedby="el-tooltip-7254" tabindex="0"><span class="icon-sx-view"></span></a>
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
                                <div style="width: 1240px; height: 389px;"></div>
                            </div>
                            <div class="contract-trigger"></div>
                        </div>
                    </div>
                </div>
                <div class="page_pagination" style="">
                    <div class="el-pagination">
                        <span class="el-pagination__total">共 262 条</span>
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
                            <li class="number">27</li>
                        </ul>
                        <button type="button" class="btn-next"><i class="el-icon el-icon-arrow-right"></i></button>
                        <span class="el-pagination__jump">前往
         <div class="el-input el-pagination__editor is-in-pagination">
          <!---->
          <input autocomplete="off" type="number" rows="2" max="27" min="1" validateevent="true" class="el-input__inner" />
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
    </div>
</div>
<script type="text/javascript" src="/backend/static/js/manifest.c14e77f4d85201197bc4.js"></script>
<script type="text/javascript" src="/backend/static/js/vendor.77db51a60fc55cf48c45.js"></script>
</body>
</html>
