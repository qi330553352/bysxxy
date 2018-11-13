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
                    <span class="el-breadcrumb__item"><span role="link" class="el-breadcrumb__inner">试题管理主页</span><i class="el-breadcrumb__separator el-icon-arrow-right"></i></span>
                    <span class="el-breadcrumb__item" aria-current="page"><span role="link" class="el-breadcrumb__inner">试题管理</span><i class="el-breadcrumb__separator el-icon-arrow-right"></i></span>
                </div>
            </div>
            <div class="b-page-container">
                <div class="container-head clearfix">
                    <div class="el-row" span="24">
                        <div class="el-col el-col-2">
                            <span class="new-primary-button">删除</span>
                        </div>
                        <div class="el-col el-col-2">
                            <a href="#/examPaperEdit" class=""><span class="new-primary-button">新建</span></a>
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
                                                    <li class="el-select-dropdown__item selected"><span>试题号</span></li>
                                                    <li class="el-select-dropdown__item"><span>图书名称</span></li>
                                                    <li class="el-select-dropdown__item"><span>阅读类型</span></li>
                                                    <li class="el-select-dropdown__item"><span>试题类型</span></li>
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
                            <div class="el-col el-col-11">
                                <!---->
                                <!---->
                                <div class="el-input">
                                    <!---->
                                    <input autocomplete="off" placeholder="请输入关键字搜索" type="text" rows="2" validateevent="true" class="el-input__inner" />
                                    <!---->
                                    <!---->
                                    <!---->
                                </div>
                                <!---->
                            </div>
                            <div class="el-col el-col-2">
                                <button type="button" class="el-button el-button--default" style="margin-top: 15px; padding: 8px 10px; height: 30px;">
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
                            <div></div>
                            <div></div>
                        </div>
                        <div class="el-table__header-wrapper">
                            <table cellspacing="0" cellpadding="0" border="0" class="el-table__header" style="width: 1230px;">
                                <colgroup>
                                    <col name="el-table_28_column_189" width="50" />
                                    <col name="el-table_28_column_190" width="180" />
                                    <col name="el-table_28_column_191" width="210" />
                                    <col name="el-table_28_column_192" width="150" />
                                    <col name="el-table_28_column_193" width="100" />
                                    <col name="el-table_28_column_194" width="100" />
                                    <col name="el-table_28_column_195" width="170" />
                                    <col name="el-table_28_column_196" width="60" />
                                    <col name="el-table_28_column_197" width="100" />
                                    <col name="el-table_28_column_198" width="110" />
                                    <col name="gutter" width="0" />
                                </colgroup>
                                <thead class="has-gutter">
                                <tr class="">
                                    <th colspan="1" rowspan="1" class="el-table_28_column_189   el-table-column--selection  is-leaf">
                                        <div class="cell">
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                <!----></label>
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_28_column_190     is-leaf">
                                        <div class="cell">
                                            试题号
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_28_column_191     is-leaf">
                                        <div class="cell">
                                            题目内容
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_28_column_192     is-leaf">
                                        <div class="cell">
                                            试题难度
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_28_column_193     is-leaf">
                                        <div class="cell">
                                            阅读类型
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_28_column_194     is-leaf">
                                        <div class="cell">
                                            试题类型
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_28_column_195     is-leaf">
                                        <div class="cell">
                                            关联图书
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_28_column_196     is-leaf">
                                        <div class="cell">
                                            状态
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_28_column_197     is-leaf">
                                        <div class="cell">
                                            绑定教师
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_28_column_198     is-leaf">
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
                                    <col name="el-table_28_column_189" width="50" />
                                    <col name="el-table_28_column_190" width="180" />
                                    <col name="el-table_28_column_191" width="210" />
                                    <col name="el-table_28_column_192" width="150" />
                                    <col name="el-table_28_column_193" width="100" />
                                    <col name="el-table_28_column_194" width="100" />
                                    <col name="el-table_28_column_195" width="170" />
                                    <col name="el-table_28_column_196" width="60" />
                                    <col name="el-table_28_column_197" width="100" />
                                    <col name="el-table_28_column_198" width="110" />
                                </colgroup>
                                <tbody>
                                <tr class="el-table__row">
                                    <td class="el-table_28_column_189  el-table-column--selection">
                                        <div class="cell">
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                <!----></label>
                                        </div></td>
                                    <td class="el-table_28_column_190  ">
                                        <div class="cell">
                                            0101000000000901
                                        </div></td>
                                    <td class="el-table_28_column_191  ">
                                        <div class="cell">
                                            床前明月光，疑是地上霜，举头望明月，低头思故乡，是哪个诗人的诗句？
                                        </div></td>
                                    <td class="el-table_28_column_192  ">
                                        <div class="cell">
                                            <div role="slider" aria-valuenow="5" aria-valuetext="" aria-valuemin="0" aria-valuemax="5" tabindex="0" class="el-rate">
               <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(247, 186, 42);">
                 <!----></i></span>
                                                <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(247, 186, 42);">
                 <!----></i></span>
                                                <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(247, 186, 42);">
                 <!----></i></span>
                                                <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(247, 186, 42);">
                 <!----></i></span>
                                                <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(247, 186, 42);">
                 <!----></i></span>
                                                <!---->
                                            </div>
                                        </div></td>
                                    <td class="el-table_28_column_193  ">
                                        <div class="cell">
                                            <div>
                                                经典阅读
                                            </div>
                                        </div></td>
                                    <td class="el-table_28_column_194  ">
                                        <div class="cell">
                                            <div>
                                                单项选择题
                                            </div>
                                        </div></td>
                                    <td class="el-table_28_column_195  ">
                                        <div class="cell">
                                            服务3670
                                        </div></td>
                                    <td class="el-table_28_column_196  ">
                                        <div class="cell">
                                            <div>
                                                上架
                                            </div>
                                        </div></td>
                                    <td class="el-table_28_column_197  ">
                                        <div class="cell"></div></td>
                                    <td class="el-table_28_column_198  ">
                                        <div class="cell">
                                            <span class="goods-operation-icon el-icon-edit-outline i-disabled el-tooltip scope.row" aria-describedby="el-tooltip-8568" tabindex="0" style="margin-right: 10px;"></span>
                                            <span class="goods-operation-icon el-tooltip scope.row off-shelf" aria-describedby="el-tooltip-1969" tabindex="0" style="margin-right: 10px;"></span>
                                            <span class="i-manage el-tooltip scope.row" aria-describedby="el-tooltip-8239" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_28_column_189  el-table-column--selection">
                                        <div class="cell">
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                <!----></label>
                                        </div></td>
                                    <td class="el-table_28_column_190  ">
                                        <div class="cell">
                                            0101000000000900
                                        </div></td>
                                    <td class="el-table_28_column_191  ">
                                        <div class="cell">
                                            test2945
                                        </div></td>
                                    <td class="el-table_28_column_192  ">
                                        <div class="cell">
                                            <div role="slider" aria-valuenow="4" aria-valuetext="" aria-valuemin="0" aria-valuemax="5" tabindex="0" class="el-rate">
               <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(247, 186, 42);">
                 <!----></i></span>
                                                <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(247, 186, 42);">
                 <!----></i></span>
                                                <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(247, 186, 42);">
                 <!----></i></span>
                                                <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(247, 186, 42);">
                 <!----></i></span>
                                                <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(239, 242, 247);">
                 <!----></i></span>
                                                <!---->
                                            </div>
                                        </div></td>
                                    <td class="el-table_28_column_193  ">
                                        <div class="cell">
                                            <div>
                                                经典阅读
                                            </div>
                                        </div></td>
                                    <td class="el-table_28_column_194  ">
                                        <div class="cell">
                                            <div>
                                                单项选择题
                                            </div>
                                        </div></td>
                                    <td class="el-table_28_column_195  ">
                                        <div class="cell">
                                            TEST4796
                                        </div></td>
                                    <td class="el-table_28_column_196  ">
                                        <div class="cell">
                                            <div>
                                                下架
                                            </div>
                                        </div></td>
                                    <td class="el-table_28_column_197  ">
                                        <div class="cell"></div></td>
                                    <td class="el-table_28_column_198  ">
                                        <div class="cell">
                                            <span class="goods-operation-icon el-icon-edit-outline el-tooltip scope.row" aria-describedby="el-tooltip-8837" tabindex="0" style="margin-right: 10px;"></span>
                                            <span class="goods-operation-icon i-disabled el-tooltip scope.row  on-shelf" aria-describedby="el-tooltip-2117" tabindex="0" style="margin-right: 10px;"></span>
                                            <span class="i-manage el-tooltip scope.row" aria-describedby="el-tooltip-2730" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_28_column_189  el-table-column--selection">
                                        <div class="cell">
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                <!----></label>
                                        </div></td>
                                    <td class="el-table_28_column_190  ">
                                        <div class="cell">
                                            0101000000000899
                                        </div></td>
                                    <td class="el-table_28_column_191  ">
                                        <div class="cell">
                                            床前明月光，疑是地上霜，举头望明月，低头思故乡，是哪个诗人的诗句？
                                        </div></td>
                                    <td class="el-table_28_column_192  ">
                                        <div class="cell">
                                            <div role="slider" aria-valuenow="5" aria-valuetext="" aria-valuemin="0" aria-valuemax="5" tabindex="0" class="el-rate">
               <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(247, 186, 42);">
                 <!----></i></span>
                                                <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(247, 186, 42);">
                 <!----></i></span>
                                                <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(247, 186, 42);">
                 <!----></i></span>
                                                <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(247, 186, 42);">
                 <!----></i></span>
                                                <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(247, 186, 42);">
                 <!----></i></span>
                                                <!---->
                                            </div>
                                        </div></td>
                                    <td class="el-table_28_column_193  ">
                                        <div class="cell">
                                            <div>
                                                经典阅读
                                            </div>
                                        </div></td>
                                    <td class="el-table_28_column_194  ">
                                        <div class="cell">
                                            <div>
                                                单项选择题
                                            </div>
                                        </div></td>
                                    <td class="el-table_28_column_195  ">
                                        <div class="cell">
                                            TEST8855
                                        </div></td>
                                    <td class="el-table_28_column_196  ">
                                        <div class="cell">
                                            <div>
                                                上架
                                            </div>
                                        </div></td>
                                    <td class="el-table_28_column_197  ">
                                        <div class="cell"></div></td>
                                    <td class="el-table_28_column_198  ">
                                        <div class="cell">
                                            <span class="goods-operation-icon el-icon-edit-outline i-disabled el-tooltip scope.row" aria-describedby="el-tooltip-1496" tabindex="0" style="margin-right: 10px;"></span>
                                            <span class="goods-operation-icon el-tooltip scope.row off-shelf" aria-describedby="el-tooltip-2866" tabindex="0" style="margin-right: 10px;"></span>
                                            <span class="i-manage el-tooltip scope.row" aria-describedby="el-tooltip-1175" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_28_column_189  el-table-column--selection">
                                        <div class="cell">
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                <!----></label>
                                        </div></td>
                                    <td class="el-table_28_column_190  ">
                                        <div class="cell">
                                            0101000000000898
                                        </div></td>
                                    <td class="el-table_28_column_191  ">
                                        <div class="cell">
                                            test4574
                                        </div></td>
                                    <td class="el-table_28_column_192  ">
                                        <div class="cell">
                                            <div role="slider" aria-valuenow="4" aria-valuetext="" aria-valuemin="0" aria-valuemax="5" tabindex="0" class="el-rate">
               <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(247, 186, 42);">
                 <!----></i></span>
                                                <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(247, 186, 42);">
                 <!----></i></span>
                                                <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(247, 186, 42);">
                 <!----></i></span>
                                                <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(247, 186, 42);">
                 <!----></i></span>
                                                <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(239, 242, 247);">
                 <!----></i></span>
                                                <!---->
                                            </div>
                                        </div></td>
                                    <td class="el-table_28_column_193  ">
                                        <div class="cell">
                                            <div>
                                                经典阅读
                                            </div>
                                        </div></td>
                                    <td class="el-table_28_column_194  ">
                                        <div class="cell">
                                            <div>
                                                单项选择题
                                            </div>
                                        </div></td>
                                    <td class="el-table_28_column_195  ">
                                        <div class="cell">
                                            TEST
                                        </div></td>
                                    <td class="el-table_28_column_196  ">
                                        <div class="cell">
                                            <div>
                                                下架
                                            </div>
                                        </div></td>
                                    <td class="el-table_28_column_197  ">
                                        <div class="cell"></div></td>
                                    <td class="el-table_28_column_198  ">
                                        <div class="cell">
                                            <span class="goods-operation-icon el-icon-edit-outline el-tooltip scope.row" aria-describedby="el-tooltip-3173" tabindex="0" style="margin-right: 10px;"></span>
                                            <span class="goods-operation-icon i-disabled el-tooltip scope.row  on-shelf" aria-describedby="el-tooltip-7509" tabindex="0" style="margin-right: 10px;"></span>
                                            <span class="i-manage el-tooltip scope.row" aria-describedby="el-tooltip-3342" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_28_column_189  el-table-column--selection">
                                        <div class="cell">
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                <!----></label>
                                        </div></td>
                                    <td class="el-table_28_column_190  ">
                                        <div class="cell">
                                            0101000000000896
                                        </div></td>
                                    <td class="el-table_28_column_191  ">
                                        <div class="cell">
                                            test7338
                                        </div></td>
                                    <td class="el-table_28_column_192  ">
                                        <div class="cell">
                                            <div role="slider" aria-valuenow="4" aria-valuetext="" aria-valuemin="0" aria-valuemax="5" tabindex="0" class="el-rate">
               <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(247, 186, 42);">
                 <!----></i></span>
                                                <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(247, 186, 42);">
                 <!----></i></span>
                                                <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(247, 186, 42);">
                 <!----></i></span>
                                                <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(247, 186, 42);">
                 <!----></i></span>
                                                <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(239, 242, 247);">
                 <!----></i></span>
                                                <!---->
                                            </div>
                                        </div></td>
                                    <td class="el-table_28_column_193  ">
                                        <div class="cell">
                                            <div>
                                                经典阅读
                                            </div>
                                        </div></td>
                                    <td class="el-table_28_column_194  ">
                                        <div class="cell">
                                            <div>
                                                单项选择题
                                            </div>
                                        </div></td>
                                    <td class="el-table_28_column_195  ">
                                        <div class="cell">
                                            TEST9075
                                        </div></td>
                                    <td class="el-table_28_column_196  ">
                                        <div class="cell">
                                            <div>
                                                下架
                                            </div>
                                        </div></td>
                                    <td class="el-table_28_column_197  ">
                                        <div class="cell"></div></td>
                                    <td class="el-table_28_column_198  ">
                                        <div class="cell">
                                            <span class="goods-operation-icon el-icon-edit-outline el-tooltip scope.row" aria-describedby="el-tooltip-2444" tabindex="0" style="margin-right: 10px;"></span>
                                            <span class="goods-operation-icon i-disabled el-tooltip scope.row  on-shelf" aria-describedby="el-tooltip-462" tabindex="0" style="margin-right: 10px;"></span>
                                            <span class="i-manage el-tooltip scope.row" aria-describedby="el-tooltip-9827" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_28_column_189  el-table-column--selection">
                                        <div class="cell">
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                <!----></label>
                                        </div></td>
                                    <td class="el-table_28_column_190  ">
                                        <div class="cell">
                                            0101000000000895
                                        </div></td>
                                    <td class="el-table_28_column_191  ">
                                        <div class="cell">
                                            床前明月光，疑是地上霜，举头望明月，低头思故乡，是哪个诗人的诗句？
                                        </div></td>
                                    <td class="el-table_28_column_192  ">
                                        <div class="cell">
                                            <div role="slider" aria-valuenow="5" aria-valuetext="" aria-valuemin="0" aria-valuemax="5" tabindex="0" class="el-rate">
               <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(247, 186, 42);">
                 <!----></i></span>
                                                <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(247, 186, 42);">
                 <!----></i></span>
                                                <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(247, 186, 42);">
                 <!----></i></span>
                                                <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(247, 186, 42);">
                 <!----></i></span>
                                                <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(247, 186, 42);">
                 <!----></i></span>
                                                <!---->
                                            </div>
                                        </div></td>
                                    <td class="el-table_28_column_193  ">
                                        <div class="cell">
                                            <div>
                                                经典阅读
                                            </div>
                                        </div></td>
                                    <td class="el-table_28_column_194  ">
                                        <div class="cell">
                                            <div>
                                                单项选择题
                                            </div>
                                        </div></td>
                                    <td class="el-table_28_column_195  ">
                                        <div class="cell">
                                            测试5117
                                        </div></td>
                                    <td class="el-table_28_column_196  ">
                                        <div class="cell">
                                            <div>
                                                上架
                                            </div>
                                        </div></td>
                                    <td class="el-table_28_column_197  ">
                                        <div class="cell"></div></td>
                                    <td class="el-table_28_column_198  ">
                                        <div class="cell">
                                            <span class="goods-operation-icon el-icon-edit-outline i-disabled el-tooltip scope.row" aria-describedby="el-tooltip-3530" tabindex="0" style="margin-right: 10px;"></span>
                                            <span class="goods-operation-icon el-tooltip scope.row off-shelf" aria-describedby="el-tooltip-7099" tabindex="0" style="margin-right: 10px;"></span>
                                            <span class="i-manage el-tooltip scope.row" aria-describedby="el-tooltip-8500" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_28_column_189  el-table-column--selection">
                                        <div class="cell">
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                <!----></label>
                                        </div></td>
                                    <td class="el-table_28_column_190  ">
                                        <div class="cell">
                                            0101000000000894
                                        </div></td>
                                    <td class="el-table_28_column_191  ">
                                        <div class="cell">
                                            test6172
                                        </div></td>
                                    <td class="el-table_28_column_192  ">
                                        <div class="cell">
                                            <div role="slider" aria-valuenow="4" aria-valuetext="" aria-valuemin="0" aria-valuemax="5" tabindex="0" class="el-rate">
               <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(247, 186, 42);">
                 <!----></i></span>
                                                <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(247, 186, 42);">
                 <!----></i></span>
                                                <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(247, 186, 42);">
                 <!----></i></span>
                                                <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(247, 186, 42);">
                 <!----></i></span>
                                                <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(239, 242, 247);">
                 <!----></i></span>
                                                <!---->
                                            </div>
                                        </div></td>
                                    <td class="el-table_28_column_193  ">
                                        <div class="cell">
                                            <div>
                                                经典阅读
                                            </div>
                                        </div></td>
                                    <td class="el-table_28_column_194  ">
                                        <div class="cell">
                                            <div>
                                                单项选择题
                                            </div>
                                        </div></td>
                                    <td class="el-table_28_column_195  ">
                                        <div class="cell">
                                            TEST4165
                                        </div></td>
                                    <td class="el-table_28_column_196  ">
                                        <div class="cell">
                                            <div>
                                                下架
                                            </div>
                                        </div></td>
                                    <td class="el-table_28_column_197  ">
                                        <div class="cell"></div></td>
                                    <td class="el-table_28_column_198  ">
                                        <div class="cell">
                                            <span class="goods-operation-icon el-icon-edit-outline el-tooltip scope.row" aria-describedby="el-tooltip-5559" tabindex="0" style="margin-right: 10px;"></span>
                                            <span class="goods-operation-icon i-disabled el-tooltip scope.row  on-shelf" aria-describedby="el-tooltip-8364" tabindex="0" style="margin-right: 10px;"></span>
                                            <span class="i-manage el-tooltip scope.row" aria-describedby="el-tooltip-6926" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_28_column_189  el-table-column--selection">
                                        <div class="cell">
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                <!----></label>
                                        </div></td>
                                    <td class="el-table_28_column_190  ">
                                        <div class="cell">
                                            0101000000000893
                                        </div></td>
                                    <td class="el-table_28_column_191  ">
                                        <div class="cell">
                                            床前明月光，疑是地上霜，举头望明月，低头思故乡，是哪个诗人的诗句？
                                        </div></td>
                                    <td class="el-table_28_column_192  ">
                                        <div class="cell">
                                            <div role="slider" aria-valuenow="5" aria-valuetext="" aria-valuemin="0" aria-valuemax="5" tabindex="0" class="el-rate">
               <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(247, 186, 42);">
                 <!----></i></span>
                                                <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(247, 186, 42);">
                 <!----></i></span>
                                                <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(247, 186, 42);">
                 <!----></i></span>
                                                <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(247, 186, 42);">
                 <!----></i></span>
                                                <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(247, 186, 42);">
                 <!----></i></span>
                                                <!---->
                                            </div>
                                        </div></td>
                                    <td class="el-table_28_column_193  ">
                                        <div class="cell">
                                            <div>
                                                经典阅读
                                            </div>
                                        </div></td>
                                    <td class="el-table_28_column_194  ">
                                        <div class="cell">
                                            <div>
                                                单项选择题
                                            </div>
                                        </div></td>
                                    <td class="el-table_28_column_195  ">
                                        <div class="cell">
                                            TEST5842
                                        </div></td>
                                    <td class="el-table_28_column_196  ">
                                        <div class="cell">
                                            <div>
                                                上架
                                            </div>
                                        </div></td>
                                    <td class="el-table_28_column_197  ">
                                        <div class="cell"></div></td>
                                    <td class="el-table_28_column_198  ">
                                        <div class="cell">
                                            <span class="goods-operation-icon el-icon-edit-outline i-disabled el-tooltip scope.row" aria-describedby="el-tooltip-1919" tabindex="0" style="margin-right: 10px;"></span>
                                            <span class="goods-operation-icon el-tooltip scope.row off-shelf" aria-describedby="el-tooltip-1366" tabindex="0" style="margin-right: 10px;"></span>
                                            <span class="i-manage el-tooltip scope.row" aria-describedby="el-tooltip-9559" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_28_column_189  el-table-column--selection">
                                        <div class="cell">
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                <!----></label>
                                        </div></td>
                                    <td class="el-table_28_column_190  ">
                                        <div class="cell">
                                            0101000000000892
                                        </div></td>
                                    <td class="el-table_28_column_191  ">
                                        <div class="cell">
                                            test7362
                                        </div></td>
                                    <td class="el-table_28_column_192  ">
                                        <div class="cell">
                                            <div role="slider" aria-valuenow="4" aria-valuetext="" aria-valuemin="0" aria-valuemax="5" tabindex="0" class="el-rate">
               <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(247, 186, 42);">
                 <!----></i></span>
                                                <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(247, 186, 42);">
                 <!----></i></span>
                                                <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(247, 186, 42);">
                 <!----></i></span>
                                                <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(247, 186, 42);">
                 <!----></i></span>
                                                <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(239, 242, 247);">
                 <!----></i></span>
                                                <!---->
                                            </div>
                                        </div></td>
                                    <td class="el-table_28_column_193  ">
                                        <div class="cell">
                                            <div>
                                                经典阅读
                                            </div>
                                        </div></td>
                                    <td class="el-table_28_column_194  ">
                                        <div class="cell">
                                            <div>
                                                单项选择题
                                            </div>
                                        </div></td>
                                    <td class="el-table_28_column_195  ">
                                        <div class="cell">
                                            TEST4165
                                        </div></td>
                                    <td class="el-table_28_column_196  ">
                                        <div class="cell">
                                            <div>
                                                下架
                                            </div>
                                        </div></td>
                                    <td class="el-table_28_column_197  ">
                                        <div class="cell"></div></td>
                                    <td class="el-table_28_column_198  ">
                                        <div class="cell">
                                            <span class="goods-operation-icon el-icon-edit-outline el-tooltip scope.row" aria-describedby="el-tooltip-9209" tabindex="0" style="margin-right: 10px;"></span>
                                            <span class="goods-operation-icon i-disabled el-tooltip scope.row  on-shelf" aria-describedby="el-tooltip-406" tabindex="0" style="margin-right: 10px;"></span>
                                            <span class="i-manage el-tooltip scope.row" aria-describedby="el-tooltip-3711" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_28_column_189  el-table-column--selection">
                                        <div class="cell">
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                <!----></label>
                                        </div></td>
                                    <td class="el-table_28_column_190  ">
                                        <div class="cell">
                                            0101000000000891
                                        </div></td>
                                    <td class="el-table_28_column_191  ">
                                        <div class="cell">
                                            床前明月光，疑是地上霜，举头望明月，低头思故乡，是哪个诗人的诗句？
                                        </div></td>
                                    <td class="el-table_28_column_192  ">
                                        <div class="cell">
                                            <div role="slider" aria-valuenow="5" aria-valuetext="" aria-valuemin="0" aria-valuemax="5" tabindex="0" class="el-rate">
               <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(247, 186, 42);">
                 <!----></i></span>
                                                <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(247, 186, 42);">
                 <!----></i></span>
                                                <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(247, 186, 42);">
                 <!----></i></span>
                                                <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(247, 186, 42);">
                 <!----></i></span>
                                                <span class="el-rate__item" style="cursor: auto;"><i class="el-rate__icon el-icon-star-on" style="color: rgb(247, 186, 42);">
                 <!----></i></span>
                                                <!---->
                                            </div>
                                        </div></td>
                                    <td class="el-table_28_column_193  ">
                                        <div class="cell">
                                            <div>
                                                经典阅读
                                            </div>
                                        </div></td>
                                    <td class="el-table_28_column_194  ">
                                        <div class="cell">
                                            <div>
                                                单项选择题
                                            </div>
                                        </div></td>
                                    <td class="el-table_28_column_195  ">
                                        <div class="cell">
                                            TEST4165
                                        </div></td>
                                    <td class="el-table_28_column_196  ">
                                        <div class="cell">
                                            <div>
                                                上架
                                            </div>
                                        </div></td>
                                    <td class="el-table_28_column_197  ">
                                        <div class="cell"></div></td>
                                    <td class="el-table_28_column_198  ">
                                        <div class="cell">
                                            <span class="goods-operation-icon el-icon-edit-outline i-disabled el-tooltip scope.row" aria-describedby="el-tooltip-1125" tabindex="0" style="margin-right: 10px;"></span>
                                            <span class="goods-operation-icon el-tooltip scope.row off-shelf" aria-describedby="el-tooltip-5991" tabindex="0" style="margin-right: 10px;"></span>
                                            <span class="i-manage el-tooltip scope.row" aria-describedby="el-tooltip-3540" tabindex="0"></span>
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
                                <div style="width: 1241px; height: 634px;"></div>
                            </div>
                            <div class="contract-trigger"></div>
                        </div>
                    </div>
                    <div>
                        <div class="el-pagination" style="text-align: right;">
                            <span class="el-pagination__total">共 672 条</span>
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
                                <li class="number">68</li>
                            </ul>
                            <button type="button" class="btn-next"><i class="el-icon el-icon-arrow-right"></i></button>
                            <span class="el-pagination__jump">前往
          <div class="el-input el-pagination__editor is-in-pagination">
           <!---->
           <input autocomplete="off" type="number" rows="2" max="68" min="1" validateevent="true" class="el-input__inner" />
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
    </div>
</div>
<script type="text/javascript" src="/backend/static/js/manifest.c14e77f4d85201197bc4.js"></script>
<script type="text/javascript" src="/backend/static/js/vendor.77db51a60fc55cf48c45.js"></script>
</body>
</html>
