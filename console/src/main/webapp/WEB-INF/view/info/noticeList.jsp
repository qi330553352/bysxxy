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
                    <span class="el-breadcrumb__item"><a href="/info/index" class="el-breadcrumb__inner">信息管理</a><i class="el-breadcrumb__separator el-icon-arrow-right"></i></span>
                    <span class="el-breadcrumb__item" aria-current="page"><span role="link" class="el-breadcrumb__inner">滚动公告管理</span><i class="el-breadcrumb__separator el-icon-arrow-right"></i></span>
                </div>
            </div>
            <div class="sx_tab " style="margin-bottom: 10px;">
                <a href="#/noticeList" class="router-link-exact-active router-link-active">
                    <div class="sx_tab_item active">
                        申报系统
                    </div></a>
                <a href="#/evaluationNotice" class="">
                    <div class="sx_tab_item">
                        测评快报
                    </div></a>
                <a href="#/evaluationCategory" class="">
                    <div class="sx_tab_item">
                        测评快报分类
                    </div></a>
            </div>
            <div class="b-page-container">
                <div class="container-head clearfix">
                    <div class="left">
                        <label><input type="checkbox" class="container-checkbox" /> <span class="label-span">全选</span></label>
                        <button type="button" class="el-button el-button--default el-button--small">
                            <!---->
                            <!----><span>删除</span></button>
                        <button type="button" class="el-button el-button--default el-button--small">
                            <!---->
                            <!----><span>新建</span></button>
                    </div>
                    <div class="right">
                        <div class="el-input el-input-group el-input-group--append">
                            <!---->
                            <input autocomplete="off" placeholder="请输入标题" type="text" rows="2" validateevent="true" class="el-input__inner" />
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
                        </div>
                        <div class="el-table__header-wrapper">
                            <table cellspacing="0" cellpadding="0" border="0" class="el-table__header" style="width: 1240px;">
                                <colgroup>
                                    <col name="el-table_12_column_73" width="60" />
                                    <col name="el-table_12_column_74" width="120" />
                                    <col name="el-table_12_column_75" width="410" />
                                    <col name="el-table_12_column_76" width="200" />
                                    <col name="el-table_12_column_77" width="150" />
                                    <col name="el-table_12_column_78" width="150" />
                                    <col name="el-table_12_column_79" width="150" />
                                    <col name="gutter" width="0" />
                                </colgroup>
                                <thead class="has-gutter">
                                <tr class="">
                                    <th colspan="1" rowspan="1" class="el-table_12_column_73     is-leaf">
                                        <div class="cell"></div></th>
                                    <th colspan="1" rowspan="1" class="el-table_12_column_74     is-leaf">
                                        <div class="cell">
                                            状态
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_12_column_75     is-leaf">
                                        <div class="cell">
                                            标题
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_12_column_76     is-leaf">
                                        <div class="cell">
                                            完成时间
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_12_column_77     is-leaf">
                                        <div class="cell">
                                            平台
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_12_column_78     is-leaf">
                                        <div class="cell">
                                            编辑人
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_12_column_79     is-leaf">
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
                                    <col name="el-table_12_column_73" width="60" />
                                    <col name="el-table_12_column_74" width="120" />
                                    <col name="el-table_12_column_75" width="410" />
                                    <col name="el-table_12_column_76" width="200" />
                                    <col name="el-table_12_column_77" width="150" />
                                    <col name="el-table_12_column_78" width="150" />
                                    <col name="el-table_12_column_79" width="150" />
                                </colgroup>
                                <tbody>
                                <tr class="el-table__row">
                                    <td class="el-table_12_column_73  ">
                                        <div class="cell">
                                            <input type="checkbox" disabled="disabled" class="container-checkbox" value="5baa3a97f8f83810388f794f" />
                                        </div></td>
                                    <td class="el-table_12_column_74  ">
                                        <div class="cell">
                                            <div>
                                                置顶
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_75  ">
                                        <div class="cell">
                                            <div class="el-tooltip scope.row" width="100" aria-describedby="el-tooltip-4618" tabindex="0">
                                                公告测试3627
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_76  ">
                                        <div class="cell el-tooltip" style="width: 199px;">
                                            <div>
                                                2018-09-25 21:39:35
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_77  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <div>
                                                PC端
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_78  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <div>
                                                admin
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_79  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <i class="operator-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-1556" tabindex="0"></i>
                                            <i class="operator-icon cancel-top-icon el-tooltip scope.row" aria-describedby="el-tooltip-1920" tabindex="0"></i>
                                            <!---->
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_12_column_73  ">
                                        <div class="cell">
                                            <input type="checkbox" class="container-checkbox" value="5be8f0e6f8f838084f54b5cd" />
                                        </div></td>
                                    <td class="el-table_12_column_74  ">
                                        <div class="cell">
                                            <div>
                                                完成
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_75  ">
                                        <div class="cell">
                                            <div class="el-tooltip scope.row" width="100" aria-describedby="el-tooltip-993" tabindex="0">
                                                心得一天，新的使命
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_76  ">
                                        <div class="cell el-tooltip" style="width: 199px;">
                                            <div>
                                                2018-11-12 11:17:58
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_77  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <div>
                                                移动端
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_78  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <div>
                                                admin
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_79  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <i class="operator-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-3051" tabindex="0"></i>
                                            <!---->
                                            <i class="operator-icon set-top-icon el-tooltip scope.row" aria-describedby="el-tooltip-3278" tabindex="0"></i>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_12_column_73  ">
                                        <div class="cell">
                                            <input type="checkbox" class="container-checkbox" value="5be8ee56f8f838084f54b5cc" />
                                        </div></td>
                                    <td class="el-table_12_column_74  ">
                                        <div class="cell">
                                            <div>
                                                完成
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_75  ">
                                        <div class="cell">
                                            <div class="el-tooltip scope.row" width="100" aria-describedby="el-tooltip-8113" tabindex="0">
                                                心得一天，新的使命
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_76  ">
                                        <div class="cell el-tooltip" style="width: 199px;">
                                            <div>
                                                2018-11-12 11:07:02
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_77  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <div>
                                                移动端
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_78  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <div>
                                                admin
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_79  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <i class="operator-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-3272" tabindex="0"></i>
                                            <!---->
                                            <i class="operator-icon set-top-icon el-tooltip scope.row" aria-describedby="el-tooltip-2850" tabindex="0"></i>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_12_column_73  ">
                                        <div class="cell">
                                            <input type="checkbox" class="container-checkbox" value="5be8ed21f8f838084f54b5cb" />
                                        </div></td>
                                    <td class="el-table_12_column_74  ">
                                        <div class="cell">
                                            <div>
                                                完成
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_75  ">
                                        <div class="cell">
                                            <div class="el-tooltip scope.row" width="100" aria-describedby="el-tooltip-4870" tabindex="0">
                                                hello world
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_76  ">
                                        <div class="cell el-tooltip" style="width: 199px;">
                                            <div>
                                                2018-11-12 11:01:53
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_77  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <div>
                                                移动端
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_78  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <div>
                                                admin
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_79  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <i class="operator-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-6401" tabindex="0"></i>
                                            <!---->
                                            <i class="operator-icon set-top-icon el-tooltip scope.row" aria-describedby="el-tooltip-254" tabindex="0"></i>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_12_column_73  ">
                                        <div class="cell">
                                            <input type="checkbox" class="container-checkbox" value="5be43cc7f8f8380844cbef2f" />
                                        </div></td>
                                    <td class="el-table_12_column_74  ">
                                        <div class="cell">
                                            <div>
                                                完成
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_75  ">
                                        <div class="cell">
                                            <div class="el-tooltip scope.row" width="100" aria-describedby="el-tooltip-7052" tabindex="0">
                                                公告测试6913
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_76  ">
                                        <div class="cell el-tooltip" style="width: 199px;">
                                            <div>
                                                2018-11-08 21:40:23
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_77  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <div>
                                                PC端
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_78  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <div>
                                                admin
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_79  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <i class="operator-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-2322" tabindex="0"></i>
                                            <!---->
                                            <i class="operator-icon set-top-icon el-tooltip scope.row" aria-describedby="el-tooltip-259" tabindex="0"></i>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_12_column_73  ">
                                        <div class="cell">
                                            <input type="checkbox" class="container-checkbox" value="5be199c0f8f8380844cbee67" />
                                        </div></td>
                                    <td class="el-table_12_column_74  ">
                                        <div class="cell">
                                            <div>
                                                完成
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_75  ">
                                        <div class="cell">
                                            <div class="el-tooltip scope.row" width="100" aria-describedby="el-tooltip-3776" tabindex="0">
                                                公告测试7397
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_76  ">
                                        <div class="cell el-tooltip" style="width: 199px;">
                                            <div>
                                                2018-11-06 21:40:16
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_77  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <div>
                                                PC端
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_78  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <div>
                                                admin
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_79  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <i class="operator-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-9456" tabindex="0"></i>
                                            <!---->
                                            <i class="operator-icon set-top-icon el-tooltip scope.row" aria-describedby="el-tooltip-2564" tabindex="0"></i>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_12_column_73  ">
                                        <div class="cell">
                                            <input type="checkbox" class="container-checkbox" value="5bdc53baf8f838084e3e785e" />
                                        </div></td>
                                    <td class="el-table_12_column_74  ">
                                        <div class="cell">
                                            <div>
                                                完成
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_75  ">
                                        <div class="cell">
                                            <div class="el-tooltip scope.row" width="100" aria-describedby="el-tooltip-6451" tabindex="0">
                                                公告测试5058
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_76  ">
                                        <div class="cell el-tooltip" style="width: 199px;">
                                            <div>
                                                2018-11-02 21:40:10
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_77  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <div>
                                                PC端
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_78  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <div>
                                                admin
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_79  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <i class="operator-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-5501" tabindex="0"></i>
                                            <!---->
                                            <i class="operator-icon set-top-icon el-tooltip scope.row" aria-describedby="el-tooltip-9159" tabindex="0"></i>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_12_column_73  ">
                                        <div class="cell">
                                            <input type="checkbox" class="container-checkbox" value="5bdbb94bf8f838084e3e779e" />
                                        </div></td>
                                    <td class="el-table_12_column_74  ">
                                        <div class="cell">
                                            <div>
                                                完成
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_75  ">
                                        <div class="cell">
                                            <div class="el-tooltip scope.row" width="100" aria-describedby="el-tooltip-7324" tabindex="0">
                                                公告测试6108
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_76  ">
                                        <div class="cell el-tooltip" style="width: 199px;">
                                            <div>
                                                2018-11-02 10:41:15
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_77  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <div>
                                                PC端
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_78  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <div>
                                                admin
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_79  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <i class="operator-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-1783" tabindex="0"></i>
                                            <!---->
                                            <i class="operator-icon set-top-icon el-tooltip scope.row" aria-describedby="el-tooltip-933" tabindex="0"></i>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_12_column_73  ">
                                        <div class="cell">
                                            <input type="checkbox" class="container-checkbox" value="5bb02c18f8f8380888cd7ca4" />
                                        </div></td>
                                    <td class="el-table_12_column_74  ">
                                        <div class="cell">
                                            <div>
                                                完成
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_75  ">
                                        <div class="cell">
                                            <div class="el-tooltip scope.row" width="100" aria-describedby="el-tooltip-7725" tabindex="0">
                                                公告测试9700
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_76  ">
                                        <div class="cell el-tooltip" style="width: 199px;">
                                            <div>
                                                2018-09-30 09:51:20
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_77  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <div>
                                                PC端
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_78  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <div>
                                                admin
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_79  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <i class="operator-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-6346" tabindex="0"></i>
                                            <!---->
                                            <i class="operator-icon set-top-icon el-tooltip scope.row" aria-describedby="el-tooltip-2949" tabindex="0"></i>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_12_column_73  ">
                                        <div class="cell">
                                            <input type="checkbox" class="container-checkbox" value="5ba46253f8f83848675cc4c8" />
                                        </div></td>
                                    <td class="el-table_12_column_74  ">
                                        <div class="cell">
                                            <div>
                                                完成
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_75  ">
                                        <div class="cell">
                                            <div class="el-tooltip scope.row" width="100" aria-describedby="el-tooltip-2470" tabindex="0">
                                                0921验证流程
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_76  ">
                                        <div class="cell el-tooltip" style="width: 199px;">
                                            <div>
                                                2018-09-21 11:15:31
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_77  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <div>
                                                PC端
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_78  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <div>
                                                admin
                                            </div>
                                        </div></td>
                                    <td class="el-table_12_column_79  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <i class="operator-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-1520" tabindex="0"></i>
                                            <!---->
                                            <i class="operator-icon set-top-icon el-tooltip scope.row" aria-describedby="el-tooltip-1515" tabindex="0"></i>
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
                                <div style="width: 1241px; height: 569px;"></div>
                            </div>
                            <div class="contract-trigger"></div>
                        </div>
                    </div>
                    <div class="new-pagination el-pagination" style="text-align: right;">
                        <span class="el-pagination__total">共 57 条</span>
                        <button type="button" class="btn-prev disabled"><i class="el-icon el-icon-arrow-left"></i></button>
                        <ul class="el-pager">
                            <li class="number active">1</li>
                            <!---->
                            <li class="number">2</li>
                            <li class="number">3</li>
                            <li class="number">4</li>
                            <li class="number">5</li>
                            <!---->
                            <li class="number">6</li>
                        </ul>
                        <button type="button" class="btn-next"><i class="el-icon el-icon-arrow-right"></i></button>
                        <span class="el-pagination__jump">前往
         <div class="el-input el-pagination__editor is-in-pagination">
          <!---->
          <input autocomplete="off" type="number" rows="2" max="6" min="1" validateevent="true" class="el-input__inner" />
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
        <div class="el-dialog__wrapper" style="display: none;">
            <div class="el-dialog el-dialog--center" style="margin-top: 15vh;">
                <div class="el-dialog__header">
                    <span class="el-dialog__title">新建编辑公告</span>
                    <button type="button" aria-label="Close" class="el-dialog__headerbtn"><i class="el-dialog__close el-icon el-icon-close"></i></button>
                </div>
                <!---->
                <div class="el-dialog__footer">
       <span class="dialog-footer"><button type="button" class="el-button el-button--default el-button--small is-plain">
         <!---->
           <!----><span>取 消</span></button> <button type="button" class="el-button el-button--primary el-button--small">
         <!---->
           <!----><span>确 定</span></button></span>
                </div>
            </div>
        </div>
        <div class="el-dialog__wrapper preview-dialog" style="display: none;">
            <div class="el-dialog" style="margin-top: 15vh;">
                <div class="el-dialog__header">
                    <span class="el-dialog__title">预览公告</span>
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

<div role="tooltip" id="el-tooltip-4618" aria-hidden="true" class="el-tooltip__popper is-dark tooltip-notice" style="transform-origin: center bottom 0px; z-index: 2004; display: none;">
    <div class="tooltip-content" style="overflow-wrap: break-word;">
        公告测试3627
    </div>
    <div x-arrow="" class="popper__arrow" style="left: 41.5px;"></div>
</div>
<div role="tooltip" id="el-tooltip-3776" aria-hidden="true" class="el-tooltip__popper is-dark tooltip-notice" style="transform-origin: center bottom 0px; z-index: 2006; display: none;">
    <div class="tooltip-content" style="overflow-wrap: break-word;">
        公告测试7397
    </div>
    <div x-arrow="" class="popper__arrow" style="left: 41.5px;"></div>
</div>
<div role="tooltip" id="el-tooltip-7324" aria-hidden="true" class="el-tooltip__popper is-dark tooltip-notice" style="transform-origin: center bottom 0px; z-index: 2010; display: none;">
    <div class="tooltip-content" style="overflow-wrap: break-word;">
        公告测试6108
    </div>
    <div x-arrow="" class="popper__arrow" style="left: 41.5px;"></div>
</div>
<div role="tooltip" id="el-tooltip-6451" aria-hidden="true" class="el-tooltip__popper is-dark tooltip-notice" style="transform-origin: center bottom 0px; z-index: 2012; display: none;">
    <div class="tooltip-content" style="overflow-wrap: break-word;">
        公告测试5058
    </div>
    <div x-arrow="" class="popper__arrow" style="left: 41.5px;"></div>
</div>
<div role="tooltip" id="el-tooltip-993" aria-hidden="true" class="el-tooltip__popper is-dark tooltip-notice" style="transform-origin: center bottom 0px; z-index: 2015; display: none;">
    <div class="tooltip-content" style="overflow-wrap: break-word;">
        心得一天，新的使命
    </div>
    <div x-arrow="" class="popper__arrow" style="left: 58px;"></div>
</div>
</body>
</html>
