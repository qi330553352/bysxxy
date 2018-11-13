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
                    <span class="el-breadcrumb__item" aria-current="page"><span role="link" class="el-breadcrumb__inner">新闻信息管理</span><i class="el-breadcrumb__separator el-icon-arrow-right"></i></span>
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
                                    <col name="el-table_16_column_99" width="60" />
                                    <col name="el-table_16_column_100" width="120" />
                                    <col name="el-table_16_column_101" width="360" />
                                    <col name="el-table_16_column_102" width="300" />
                                    <col name="el-table_16_column_103" width="200" />
                                    <col name="el-table_16_column_104" width="100" />
                                    <col name="el-table_16_column_105" width="100" />
                                    <col name="gutter" width="0" />
                                </colgroup>
                                <thead class="has-gutter">
                                <tr class="">
                                    <th colspan="1" rowspan="1" class="el-table_16_column_99     is-leaf">
                                        <div class="cell"></div></th>
                                    <th colspan="1" rowspan="1" class="el-table_16_column_100     is-leaf">
                                        <div class="cell">
                                            状态
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_16_column_101     is-leaf">
                                        <div class="cell">
                                            标题
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_16_column_102     is-leaf">
                                        <div class="cell">
                                            创建时间
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_16_column_103     is-leaf">
                                        <div class="cell">
                                            编辑人
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_16_column_104     is-leaf">
                                        <div class="cell">
                                            序号
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_16_column_105     is-leaf">
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
                                    <col name="el-table_16_column_99" width="60" />
                                    <col name="el-table_16_column_100" width="120" />
                                    <col name="el-table_16_column_101" width="360" />
                                    <col name="el-table_16_column_102" width="300" />
                                    <col name="el-table_16_column_103" width="200" />
                                    <col name="el-table_16_column_104" width="100" />
                                    <col name="el-table_16_column_105" width="100" />
                                </colgroup>
                                <tbody>
                                <tr class="el-table__row">
                                    <td class="el-table_16_column_99  ">
                                        <div class="cell">
                                            <input type="checkbox" disabled="disabled" class="container-checkbox" value="5b55807ef8f838085dca3a62" />
                                        </div></td>
                                    <td class="el-table_16_column_100  ">
                                        <div class="cell">
                                            <div>
                                                置顶
                                            </div>
                                        </div></td>
                                    <td class="el-table_16_column_101  ">
                                        <div class="cell">
                                            这不是你的错
                                        </div></td>
                                    <td class="el-table_16_column_102  ">
                                        <div class="cell el-tooltip" style="width: 299px;">
                                            2018-07-23 15:15:11
                                        </div></td>
                                    <td class="el-table_16_column_103  ">
                                        <div class="cell el-tooltip" style="width: 199px;">
                                            <div>
                                                admin
                                            </div>
                                        </div></td>
                                    <td class="el-table_16_column_104  ">
                                        <div class="cell el-tooltip" style="width: 99px;">
                                            <div>
                                                1
                                            </div>
                                        </div></td>
                                    <td class="el-table_16_column_105  ">
                                        <div class="cell el-tooltip" style="width: 99px;">
                                            <i class="operator-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-7845" tabindex="0"></i>
                                            <i class="operator-icon cancel-top-icon el-tooltip scope.row" aria-describedby="el-tooltip-72" tabindex="0"></i>
                                            <!---->
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_16_column_99  ">
                                        <div class="cell">
                                            <input type="checkbox" disabled="disabled" class="container-checkbox" value="5b555ed8f8f838085dca3a5f" />
                                        </div></td>
                                    <td class="el-table_16_column_100  ">
                                        <div class="cell">
                                            <div>
                                                置顶
                                            </div>
                                        </div></td>
                                    <td class="el-table_16_column_101  ">
                                        <div class="cell">
                                        </div></td>
                                    <td class="el-table_16_column_102  ">
                                        <div class="cell el-tooltip" style="width: 299px;">
                                            2018-07-23 12:51:37
                                        </div></td>
                                    <td class="el-table_16_column_103  ">
                                        <div class="cell el-tooltip" style="width: 199px;">
                                            <div>
                                                admin
                                            </div>
                                        </div></td>
                                    <td class="el-table_16_column_104  ">
                                        <div class="cell el-tooltip" style="width: 99px;">
                                            <div>
                                                1
                                            </div>
                                        </div></td>
                                    <td class="el-table_16_column_105  ">
                                        <div class="cell el-tooltip" style="width: 99px;">
                                            <i class="operator-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-5762" tabindex="0"></i>
                                            <i class="operator-icon cancel-top-icon el-tooltip scope.row" aria-describedby="el-tooltip-5148" tabindex="0"></i>
                                            <!---->
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_16_column_99  ">
                                        <div class="cell">
                                            <input type="checkbox" disabled="disabled" class="container-checkbox" value="5b4c79fcf8f838084b876941" />
                                        </div></td>
                                    <td class="el-table_16_column_100  ">
                                        <div class="cell">
                                            <div>
                                                置顶
                                            </div>
                                        </div></td>
                                    <td class="el-table_16_column_101  ">
                                        <div class="cell">
                                            dreweweqw
                                        </div></td>
                                    <td class="el-table_16_column_102  ">
                                        <div class="cell el-tooltip" style="width: 299px;">
                                            2018-07-16 18:57:01
                                        </div></td>
                                    <td class="el-table_16_column_103  ">
                                        <div class="cell el-tooltip" style="width: 199px;">
                                            <div>
                                                admin
                                            </div>
                                        </div></td>
                                    <td class="el-table_16_column_104  ">
                                        <div class="cell el-tooltip" style="width: 99px;">
                                            <div>
                                                1
                                            </div>
                                        </div></td>
                                    <td class="el-table_16_column_105  ">
                                        <div class="cell el-tooltip" style="width: 99px;">
                                            <i class="operator-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-8300" tabindex="0"></i>
                                            <i class="operator-icon cancel-top-icon el-tooltip scope.row" aria-describedby="el-tooltip-7041" tabindex="0"></i>
                                            <!---->
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_16_column_99  ">
                                        <div class="cell">
                                            <input type="checkbox" disabled="disabled" class="container-checkbox" value="5b208f22f8f8380ae1f6a367" />
                                        </div></td>
                                    <td class="el-table_16_column_100  ">
                                        <div class="cell">
                                            <div>
                                                置顶
                                            </div>
                                        </div></td>
                                    <td class="el-table_16_column_101  ">
                                        <div class="cell">
                                            来吧，我们一起来读书！
                                        </div></td>
                                    <td class="el-table_16_column_102  ">
                                        <div class="cell el-tooltip" style="width: 299px;">
                                            2018-06-13 11:27:32
                                        </div></td>
                                    <td class="el-table_16_column_103  ">
                                        <div class="cell el-tooltip" style="width: 199px;">
                                            <div>
                                                admin
                                            </div>
                                        </div></td>
                                    <td class="el-table_16_column_104  ">
                                        <div class="cell el-tooltip" style="width: 99px;">
                                            <div>
                                                1
                                            </div>
                                        </div></td>
                                    <td class="el-table_16_column_105  ">
                                        <div class="cell el-tooltip" style="width: 99px;">
                                            <i class="operator-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-662" tabindex="0"></i>
                                            <i class="operator-icon cancel-top-icon el-tooltip scope.row" aria-describedby="el-tooltip-1156" tabindex="0"></i>
                                            <!---->
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_16_column_99  ">
                                        <div class="cell">
                                            <input type="checkbox" disabled="disabled" class="container-checkbox" value="5b1f8aa5f8f8380ae1f6a230" />
                                        </div></td>
                                    <td class="el-table_16_column_100  ">
                                        <div class="cell">
                                            <div>
                                                置顶
                                            </div>
                                        </div></td>
                                    <td class="el-table_16_column_101  ">
                                        <div class="cell">
                                            热身-曼联霸王2射1传 比利时4-1逆转哥斯达黎加
                                        </div></td>
                                    <td class="el-table_16_column_102  ">
                                        <div class="cell el-tooltip" style="width: 299px;">
                                            2018-06-12 16:56:06
                                        </div></td>
                                    <td class="el-table_16_column_103  ">
                                        <div class="cell el-tooltip" style="width: 199px;">
                                            <div>
                                                admin
                                            </div>
                                        </div></td>
                                    <td class="el-table_16_column_104  ">
                                        <div class="cell el-tooltip" style="width: 99px;">
                                            <div>
                                                1
                                            </div>
                                        </div></td>
                                    <td class="el-table_16_column_105  ">
                                        <div class="cell el-tooltip" style="width: 99px;">
                                            <i class="operator-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-7988" tabindex="0"></i>
                                            <i class="operator-icon cancel-top-icon el-tooltip scope.row" aria-describedby="el-tooltip-2493" tabindex="0"></i>
                                            <!---->
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_16_column_99  ">
                                        <div class="cell">
                                            <input type="checkbox" disabled="disabled" class="container-checkbox" value="5b1de342f8f83810529ece9b" />
                                        </div></td>
                                    <td class="el-table_16_column_100  ">
                                        <div class="cell">
                                            <div>
                                                置顶
                                            </div>
                                        </div></td>
                                    <td class="el-table_16_column_101  ">
                                        <div class="cell">
                                            收复失地
                                        </div></td>
                                    <td class="el-table_16_column_102  ">
                                        <div class="cell el-tooltip" style="width: 299px;">
                                            2018-06-11 10:49:42
                                        </div></td>
                                    <td class="el-table_16_column_103  ">
                                        <div class="cell el-tooltip" style="width: 199px;">
                                            <div>
                                                --
                                            </div>
                                        </div></td>
                                    <td class="el-table_16_column_104  ">
                                        <div class="cell el-tooltip" style="width: 99px;">
                                            <div>
                                                1
                                            </div>
                                        </div></td>
                                    <td class="el-table_16_column_105  ">
                                        <div class="cell el-tooltip" style="width: 99px;">
                                            <i class="operator-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-5749" tabindex="0"></i>
                                            <i class="operator-icon cancel-top-icon el-tooltip scope.row" aria-describedby="el-tooltip-7981" tabindex="0"></i>
                                            <!---->
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_16_column_99  ">
                                        <div class="cell">
                                            <input type="checkbox" disabled="disabled" class="container-checkbox" value="5b3dcce2f8f8380377fdb871" />
                                        </div></td>
                                    <td class="el-table_16_column_100  ">
                                        <div class="cell">
                                            <div>
                                                置顶
                                            </div>
                                        </div></td>
                                    <td class="el-table_16_column_101  ">
                                        <div class="cell">
                                            testqqqq
                                        </div></td>
                                    <td class="el-table_16_column_102  ">
                                        <div class="cell el-tooltip" style="width: 299px;">
                                            2018-07-05 15:46:42
                                        </div></td>
                                    <td class="el-table_16_column_103  ">
                                        <div class="cell el-tooltip" style="width: 199px;">
                                            <div>
                                                admin
                                            </div>
                                        </div></td>
                                    <td class="el-table_16_column_104  ">
                                        <div class="cell el-tooltip" style="width: 99px;">
                                            <div>
                                                3
                                            </div>
                                        </div></td>
                                    <td class="el-table_16_column_105  ">
                                        <div class="cell el-tooltip" style="width: 99px;">
                                            <i class="operator-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-6834" tabindex="0"></i>
                                            <i class="operator-icon cancel-top-icon el-tooltip scope.row" aria-describedby="el-tooltip-131" tabindex="0"></i>
                                            <!---->
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_16_column_99  ">
                                        <div class="cell">
                                            <input type="checkbox" disabled="disabled" class="container-checkbox" value="5b2387a2f8f8382250cfddad" />
                                        </div></td>
                                    <td class="el-table_16_column_100  ">
                                        <div class="cell">
                                            <div>
                                                置顶
                                            </div>
                                        </div></td>
                                    <td class="el-table_16_column_101  ">
                                        <div class="cell">
                                            不想理你
                                        </div></td>
                                    <td class="el-table_16_column_102  ">
                                        <div class="cell el-tooltip" style="width: 299px;">
                                            2018-06-15 17:32:24
                                        </div></td>
                                    <td class="el-table_16_column_103  ">
                                        <div class="cell el-tooltip" style="width: 199px;">
                                            <div>
                                                admin
                                            </div>
                                        </div></td>
                                    <td class="el-table_16_column_104  ">
                                        <div class="cell el-tooltip" style="width: 99px;">
                                            <div>
                                                11
                                            </div>
                                        </div></td>
                                    <td class="el-table_16_column_105  ">
                                        <div class="cell el-tooltip" style="width: 99px;">
                                            <i class="operator-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-4218" tabindex="0"></i>
                                            <i class="operator-icon cancel-top-icon el-tooltip scope.row" aria-describedby="el-tooltip-4092" tabindex="0"></i>
                                            <!---->
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_16_column_99  ">
                                        <div class="cell">
                                            <input type="checkbox" class="container-checkbox" value="5be92ed4f8f838084f54b5ce" />
                                        </div></td>
                                    <td class="el-table_16_column_100  ">
                                        <div class="cell">
                                            <div>
                                                完成
                                            </div>
                                        </div></td>
                                    <td class="el-table_16_column_101  ">
                                        <div class="cell">
                                            新建新闻
                                        </div></td>
                                    <td class="el-table_16_column_102  ">
                                        <div class="cell el-tooltip" style="width: 299px;">
                                            2018-11-12 15:42:12
                                        </div></td>
                                    <td class="el-table_16_column_103  ">
                                        <div class="cell el-tooltip" style="width: 199px;">
                                            <div>
                                                admin
                                            </div>
                                        </div></td>
                                    <td class="el-table_16_column_104  ">
                                        <div class="cell el-tooltip" style="width: 99px;">
                                            <div></div>
                                        </div></td>
                                    <td class="el-table_16_column_105  ">
                                        <div class="cell el-tooltip" style="width: 99px;">
                                            <i class="operator-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-8489" tabindex="0"></i>
                                            <!---->
                                            <i class="operator-icon set-top-icon el-tooltip scope.row" aria-describedby="el-tooltip-6408" tabindex="0"></i>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_16_column_99  ">
                                        <div class="cell">
                                            <input type="checkbox" class="container-checkbox" value="5be2eb42f8f8380844cbeed8" />
                                        </div></td>
                                    <td class="el-table_16_column_100  ">
                                        <div class="cell">
                                            <div>
                                                完成
                                            </div>
                                        </div></td>
                                    <td class="el-table_16_column_101  ">
                                        <div class="cell">
                                            新闻信息-4205
                                        </div></td>
                                    <td class="el-table_16_column_102  ">
                                        <div class="cell el-tooltip" style="width: 299px;">
                                            2018-11-07 21:40:18
                                        </div></td>
                                    <td class="el-table_16_column_103  ">
                                        <div class="cell el-tooltip" style="width: 199px;">
                                            <div>
                                                admin
                                            </div>
                                        </div></td>
                                    <td class="el-table_16_column_104  ">
                                        <div class="cell el-tooltip" style="width: 99px;">
                                            <div></div>
                                        </div></td>
                                    <td class="el-table_16_column_105  ">
                                        <div class="cell el-tooltip" style="width: 99px;">
                                            <i class="operator-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-5208" tabindex="0"></i>
                                            <!---->
                                            <i class="operator-icon set-top-icon el-tooltip scope.row" aria-describedby="el-tooltip-7164" tabindex="0"></i>
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
                    <div class="el-pagination" style="text-align: right;">
                        <span class="el-pagination__total">共 35 条</span>
                        <button type="button" class="btn-prev disabled"><i class="el-icon el-icon-arrow-left"></i></button>
                        <ul class="el-pager">
                            <li class="number active">1</li>
                            <!---->
                            <li class="number">2</li>
                            <li class="number">3</li>
                            <!---->
                            <li class="number">4</li>
                        </ul>
                        <button type="button" class="btn-next"><i class="el-icon el-icon-arrow-right"></i></button>
                        <span class="el-pagination__jump">前往
         <div class="el-input el-pagination__editor is-in-pagination">
          <!---->
          <input autocomplete="off" type="number" rows="2" max="4" min="1" validateevent="true" class="el-input__inner" />
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
        <div class="el-dialog__wrapper new-dialog" style="display: none;">
            <div class="el-dialog el-dialog--center" style="margin-top: 15vh;">
                <div class="el-dialog__header">
                    <span class="el-dialog__title">新建编辑新闻</span>
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
                    <span class="el-dialog__title">查看新闻信息</span>
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
