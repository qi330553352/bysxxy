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
        <div class="container mb30 ">
            <div class="b-page-breadcrumb-wrap">
                <div aria-label="Breadcrumb" role="navigation" class="el-breadcrumb">
                    <span class="el-breadcrumb__item"><a href="/index/main" class="el-breadcrumb__inner">首页</a><i class="el-breadcrumb__separator el-icon-arrow-right"></i></span>
                    <span class="el-breadcrumb__item"><a href="/info/index" class="el-breadcrumb__inner">信息管理</a><i class="el-breadcrumb__separator el-icon-arrow-right"></i></span>
                    <span class="el-breadcrumb__item" aria-current="page"><span role="link" class="el-breadcrumb__inner">活动信息管理</span><i class="el-breadcrumb__separator el-icon-arrow-right"></i></span>
                </div>
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
                            <input autocomplete="off" placeholder="请输入活动名称" type="text" rows="2" validateevent="true" class="el-input__inner" />
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
                                    <col name="el-table_14_column_87" width="60" />
                                    <col name="el-table_14_column_88" width="120" />
                                    <col name="el-table_14_column_89" width="260" />
                                    <col name="el-table_14_column_90" width="150" />
                                    <col name="el-table_14_column_91" width="300" />
                                    <col name="el-table_14_column_92" width="200" />
                                    <col name="el-table_14_column_93" width="150" />
                                    <col name="gutter" width="0" />
                                </colgroup>
                                <thead class="has-gutter">
                                <tr class="">
                                    <th colspan="1" rowspan="1" class="el-table_14_column_87     is-leaf">
                                        <div class="cell"></div></th>
                                    <th colspan="1" rowspan="1" class="el-table_14_column_88     is-leaf">
                                        <div class="cell">
                                            状态
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_14_column_89     is-leaf">
                                        <div class="cell">
                                            活动名称
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_14_column_90     is-leaf">
                                        <div class="cell">
                                            平台
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_14_column_91     is-leaf">
                                        <div class="cell">
                                            创建时间
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_14_column_92     is-leaf">
                                        <div class="cell">
                                            编辑人
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_14_column_93     is-leaf">
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
                                    <col name="el-table_14_column_87" width="60" />
                                    <col name="el-table_14_column_88" width="120" />
                                    <col name="el-table_14_column_89" width="260" />
                                    <col name="el-table_14_column_90" width="150" />
                                    <col name="el-table_14_column_91" width="300" />
                                    <col name="el-table_14_column_92" width="200" />
                                    <col name="el-table_14_column_93" width="150" />
                                </colgroup>
                                <tbody>
                                <tr class="el-table__row">
                                    <td class="el-table_14_column_87  ">
                                        <div class="cell">
                                            <input type="checkbox" disabled="disabled" class="container-checkbox" value="5ba33ebcf8f83848675cc3b7" />
                                        </div></td>
                                    <td class="el-table_14_column_88  ">
                                        <div class="cell">
                                            <div>
                                                置顶
                                            </div>
                                        </div></td>
                                    <td class="el-table_14_column_89  ">
                                        <div class="cell">
                                            深圳
                                        </div></td>
                                    <td class="el-table_14_column_90  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <div>
                                                移动端
                                            </div>
                                        </div></td>
                                    <td class="el-table_14_column_91  ">
                                        <div class="cell el-tooltip" style="width: 299px;">
                                            <div>
                                                2018-09-20 14:31:55
                                            </div>
                                        </div></td>
                                    <td class="el-table_14_column_92  ">
                                        <div class="cell el-tooltip" style="width: 199px;">
                                            <div>
                                                admin11
                                            </div>
                                        </div></td>
                                    <td class="el-table_14_column_93  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <i class="operator-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-9339" tabindex="0"></i>
                                            <i class="operator-icon cancel-top-icon el-tooltip scope.row" aria-describedby="el-tooltip-6199" tabindex="0"></i>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_14_column_87  ">
                                        <div class="cell">
                                            <input type="checkbox" disabled="disabled" class="container-checkbox" value="5b986db6f8f83848675cb9cc" />
                                        </div></td>
                                    <td class="el-table_14_column_88  ">
                                        <div class="cell">
                                            <div>
                                                置顶
                                            </div>
                                        </div></td>
                                    <td class="el-table_14_column_89  ">
                                        <div class="cell">
                                            哈喽
                                        </div></td>
                                    <td class="el-table_14_column_90  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <div>
                                                移动端
                                            </div>
                                        </div></td>
                                    <td class="el-table_14_column_91  ">
                                        <div class="cell el-tooltip" style="width: 299px;">
                                            <div>
                                                2018-09-12 09:37:14
                                            </div>
                                        </div></td>
                                    <td class="el-table_14_column_92  ">
                                        <div class="cell el-tooltip" style="width: 199px;">
                                            <div>
                                                admin11
                                            </div>
                                        </div></td>
                                    <td class="el-table_14_column_93  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <i class="operator-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-7671" tabindex="0"></i>
                                            <i class="operator-icon cancel-top-icon el-tooltip scope.row" aria-describedby="el-tooltip-9681" tabindex="0"></i>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_14_column_87  ">
                                        <div class="cell">
                                            <input type="checkbox" disabled="disabled" class="container-checkbox" value="5b9865d2f8f83848675cb9c7" />
                                        </div></td>
                                    <td class="el-table_14_column_88  ">
                                        <div class="cell">
                                            <div>
                                                置顶
                                            </div>
                                        </div></td>
                                    <td class="el-table_14_column_89  ">
                                        <div class="cell">
                                            【名家名师进校园】新生代文字魔法师肖云峰珠三角读书行动
                                        </div></td>
                                    <td class="el-table_14_column_90  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <div>
                                                移动端
                                            </div>
                                        </div></td>
                                    <td class="el-table_14_column_91  ">
                                        <div class="cell el-tooltip" style="width: 299px;">
                                            <div>
                                                2018-09-12 09:03:34
                                            </div>
                                        </div></td>
                                    <td class="el-table_14_column_92  ">
                                        <div class="cell el-tooltip" style="width: 199px;">
                                            <div>
                                                admin11
                                            </div>
                                        </div></td>
                                    <td class="el-table_14_column_93  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <i class="operator-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-3435" tabindex="0"></i>
                                            <i class="operator-icon cancel-top-icon el-tooltip scope.row" aria-describedby="el-tooltip-8501" tabindex="0"></i>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_14_column_87  ">
                                        <div class="cell">
                                            <input type="checkbox" disabled="disabled" class="container-checkbox" value="5b860386f8f83803770e0d52" />
                                        </div></td>
                                    <td class="el-table_14_column_88  ">
                                        <div class="cell">
                                            <div>
                                                置顶
                                            </div>
                                        </div></td>
                                    <td class="el-table_14_column_89  ">
                                        <div class="cell">
                                            无图的pc端
                                        </div></td>
                                    <td class="el-table_14_column_90  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <div>
                                                PC端
                                            </div>
                                        </div></td>
                                    <td class="el-table_14_column_91  ">
                                        <div class="cell el-tooltip" style="width: 299px;">
                                            <div>
                                                2018-08-29 10:23:03
                                            </div>
                                        </div></td>
                                    <td class="el-table_14_column_92  ">
                                        <div class="cell el-tooltip" style="width: 199px;">
                                            <div>
                                                admin11
                                            </div>
                                        </div></td>
                                    <td class="el-table_14_column_93  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <i class="operator-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-8011" tabindex="0"></i>
                                            <i class="operator-icon cancel-top-icon el-tooltip scope.row" aria-describedby="el-tooltip-1714" tabindex="0"></i>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_14_column_87  ">
                                        <div class="cell">
                                            <input type="checkbox" class="container-checkbox" value="5be43cc7f8f8380844cbef30" />
                                        </div></td>
                                    <td class="el-table_14_column_88  ">
                                        <div class="cell">
                                            <div>
                                                完成
                                            </div>
                                        </div></td>
                                    <td class="el-table_14_column_89  ">
                                        <div class="cell">
                                            活动测试-5415
                                        </div></td>
                                    <td class="el-table_14_column_90  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <div>
                                                移动端
                                            </div>
                                        </div></td>
                                    <td class="el-table_14_column_91  ">
                                        <div class="cell el-tooltip" style="width: 299px;">
                                            <div>
                                                2018-11-08 21:40:24
                                            </div>
                                        </div></td>
                                    <td class="el-table_14_column_92  ">
                                        <div class="cell el-tooltip" style="width: 199px;">
                                            <div>
                                                admin11
                                            </div>
                                        </div></td>
                                    <td class="el-table_14_column_93  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <i class="operator-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-2703" tabindex="0"></i>
                                            <i class="operator-icon set-top-icon el-tooltip scope.row" aria-describedby="el-tooltip-7688" tabindex="0"></i>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_14_column_87  ">
                                        <div class="cell">
                                            <input type="checkbox" class="container-checkbox" value="5be2eb41f8f8380844cbeed7" />
                                        </div></td>
                                    <td class="el-table_14_column_88  ">
                                        <div class="cell">
                                            <div>
                                                完成
                                            </div>
                                        </div></td>
                                    <td class="el-table_14_column_89  ">
                                        <div class="cell">
                                            活动测试-5322
                                        </div></td>
                                    <td class="el-table_14_column_90  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <div>
                                                PC端
                                            </div>
                                        </div></td>
                                    <td class="el-table_14_column_91  ">
                                        <div class="cell el-tooltip" style="width: 299px;">
                                            <div>
                                                2018-11-07 21:40:18
                                            </div>
                                        </div></td>
                                    <td class="el-table_14_column_92  ">
                                        <div class="cell el-tooltip" style="width: 199px;">
                                            <div>
                                                admin11
                                            </div>
                                        </div></td>
                                    <td class="el-table_14_column_93  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <i class="operator-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-2980" tabindex="0"></i>
                                            <i class="operator-icon set-top-icon el-tooltip scope.row" aria-describedby="el-tooltip-1020" tabindex="0"></i>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_14_column_87  ">
                                        <div class="cell">
                                            <input type="checkbox" class="container-checkbox" value="5be199c0f8f8380844cbee68" />
                                        </div></td>
                                    <td class="el-table_14_column_88  ">
                                        <div class="cell">
                                            <div>
                                                完成
                                            </div>
                                        </div></td>
                                    <td class="el-table_14_column_89  ">
                                        <div class="cell">
                                            活动测试-8670
                                        </div></td>
                                    <td class="el-table_14_column_90  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <div>
                                                移动端
                                            </div>
                                        </div></td>
                                    <td class="el-table_14_column_91  ">
                                        <div class="cell el-tooltip" style="width: 299px;">
                                            <div>
                                                2018-11-06 21:40:16
                                            </div>
                                        </div></td>
                                    <td class="el-table_14_column_92  ">
                                        <div class="cell el-tooltip" style="width: 199px;">
                                            <div>
                                                admin11
                                            </div>
                                        </div></td>
                                    <td class="el-table_14_column_93  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <i class="operator-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-9710" tabindex="0"></i>
                                            <i class="operator-icon set-top-icon el-tooltip scope.row" aria-describedby="el-tooltip-124" tabindex="0"></i>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_14_column_87  ">
                                        <div class="cell">
                                            <input type="checkbox" class="container-checkbox" value="5bdc53baf8f838084e3e785f" />
                                        </div></td>
                                    <td class="el-table_14_column_88  ">
                                        <div class="cell">
                                            <div>
                                                完成
                                            </div>
                                        </div></td>
                                    <td class="el-table_14_column_89  ">
                                        <div class="cell">
                                            活动测试-3211
                                        </div></td>
                                    <td class="el-table_14_column_90  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <div>
                                                PC端
                                            </div>
                                        </div></td>
                                    <td class="el-table_14_column_91  ">
                                        <div class="cell el-tooltip" style="width: 299px;">
                                            <div>
                                                2018-11-02 21:40:11
                                            </div>
                                        </div></td>
                                    <td class="el-table_14_column_92  ">
                                        <div class="cell el-tooltip" style="width: 199px;">
                                            <div>
                                                admin11
                                            </div>
                                        </div></td>
                                    <td class="el-table_14_column_93  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <i class="operator-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-6601" tabindex="0"></i>
                                            <i class="operator-icon set-top-icon el-tooltip scope.row" aria-describedby="el-tooltip-8019" tabindex="0"></i>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_14_column_87  ">
                                        <div class="cell">
                                            <input type="checkbox" class="container-checkbox" value="5bdbb94cf8f838084e3e779f" />
                                        </div></td>
                                    <td class="el-table_14_column_88  ">
                                        <div class="cell">
                                            <div>
                                                完成
                                            </div>
                                        </div></td>
                                    <td class="el-table_14_column_89  ">
                                        <div class="cell">
                                            活动测试-7293
                                        </div></td>
                                    <td class="el-table_14_column_90  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <div>
                                                移动端
                                            </div>
                                        </div></td>
                                    <td class="el-table_14_column_91  ">
                                        <div class="cell el-tooltip" style="width: 299px;">
                                            <div>
                                                2018-11-02 10:41:16
                                            </div>
                                        </div></td>
                                    <td class="el-table_14_column_92  ">
                                        <div class="cell el-tooltip" style="width: 199px;">
                                            <div>
                                                admin11
                                            </div>
                                        </div></td>
                                    <td class="el-table_14_column_93  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <i class="operator-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-2342" tabindex="0"></i>
                                            <i class="operator-icon set-top-icon el-tooltip scope.row" aria-describedby="el-tooltip-2125" tabindex="0"></i>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_14_column_87  ">
                                        <div class="cell">
                                            <input type="checkbox" class="container-checkbox" value="5bdab869f8f8380823b15701" />
                                        </div></td>
                                    <td class="el-table_14_column_88  ">
                                        <div class="cell">
                                            <div>
                                                完成
                                            </div>
                                        </div></td>
                                    <td class="el-table_14_column_89  ">
                                        <div class="cell">
                                            活动测试-7805
                                        </div></td>
                                    <td class="el-table_14_column_90  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <div>
                                                移动端
                                            </div>
                                        </div></td>
                                    <td class="el-table_14_column_91  ">
                                        <div class="cell el-tooltip" style="width: 299px;">
                                            <div>
                                                2018-11-01 16:25:13
                                            </div>
                                        </div></td>
                                    <td class="el-table_14_column_92  ">
                                        <div class="cell el-tooltip" style="width: 199px;">
                                            <div>
                                                admin11
                                            </div>
                                        </div></td>
                                    <td class="el-table_14_column_93  ">
                                        <div class="cell el-tooltip" style="width: 149px;">
                                            <i class="operator-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-4160" tabindex="0"></i>
                                            <i class="operator-icon set-top-icon el-tooltip scope.row" aria-describedby="el-tooltip-2682" tabindex="0"></i>
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
                                <div style="width: 1241px; height: 588px;"></div>
                            </div>
                            <div class="contract-trigger"></div>
                        </div>
                    </div>
                    <div class="new-pagination el-pagination" style="text-align: right;">
                        <span class="el-pagination__total">共 132 条</span>
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
                            <li class="number">14</li>
                        </ul>
                        <button type="button" class="btn-next"><i class="el-icon el-icon-arrow-right"></i></button>
                        <span class="el-pagination__jump">前往
         <div class="el-input el-pagination__editor is-in-pagination">
          <!---->
          <input autocomplete="off" type="number" rows="2" max="14" min="1" validateevent="true" class="el-input__inner" />
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
        <div class="el-dialog__wrapper activity-dialog" style="display: none;">
            <div class="el-dialog el-dialog--center" style="margin-top: 15vh;">
                <div class="el-dialog__header">
                    <span class="el-dialog__title">新建编辑活动</span>
                    <button type="button" aria-label="Close" class="el-dialog__headerbtn"><i class="el-dialog__close el-icon el-icon-close"></i></button>
                </div>
                <!---->
                <div class="el-dialog__footer">
       <span class="dialog-footer"><button type="button" class="el-button el-button--default el-button--small">
         <!---->
           <!----><span>取 消</span></button> <button type="button" class="el-button el-button--primary el-button--small">
         <!---->
           <!----><span>确 定</span></button></span>
                </div>
            </div>
        </div>
        <div class="el-dialog__wrapper preview-dialog" style="display: none;">
            <div class="el-dialog el-dialog--center" style="margin-top: 15vh;">
                <div class="el-dialog__header">
                    <span class="el-dialog__title">查看活动信息</span>
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