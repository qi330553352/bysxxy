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
                    <span class="el-breadcrumb__item"><a href="/index/main" class="el-breadcrumb__inner">首页</a><i class="el-breadcrumb__separator el-icon-arrow-right"></i></span>
                    <span class="el-breadcrumb__item"><a href="/goods/index" class="el-breadcrumb__inner">商品管理主页</a><i class="el-breadcrumb__separator el-icon-arrow-right"></i></span>
                    <span class="el-breadcrumb__item" aria-current="page"><span role="link" class="el-breadcrumb__inner">商品管理</span><i class="el-breadcrumb__separator el-icon-arrow-right"></i></span>
                </div>
            </div>
            <div class="b-page-container">
                <div class="container-head clearfix">
                    <div class="el-row" span="24">
                        <div class="el-col el-col-2">
                            <span class="new-primary-button">删除</span>
                        </div>
                        <div class="el-col el-col-2">
                            <a href="#/addGoods" class=""><span class="new-primary-button">添加</span></a>
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
                                                    <li class="el-select-dropdown__item selected"><span>商品名称</span></li>
                                                    <li class="el-select-dropdown__item"><span>ISBN</span></li>
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
                            <table cellspacing="0" cellpadding="0" border="0" class="el-table__header" style="width: 1240px;">
                                <colgroup>
                                    <col name="el-table_20_column_123" width="50" />
                                    <col name="el-table_20_column_124" width="80" />
                                    <col name="el-table_20_column_125" width="200" />
                                    <col name="el-table_20_column_126" width="120" />
                                    <col name="el-table_20_column_127" width="220" />
                                    <col name="el-table_20_column_128" width="120" />
                                    <col name="el-table_20_column_129" width="120" />
                                    <col name="el-table_20_column_130" width="80" />
                                    <col name="el-table_20_column_131" width="100" />
                                    <col name="el-table_20_column_132" width="150" />
                                    <col name="gutter" width="0" />
                                </colgroup>
                                <thead class="has-gutter">
                                <tr class="">
                                    <th colspan="1" rowspan="1" class="el-table_20_column_123   el-table-column--selection  is-leaf">
                                        <div class="cell">
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                <!----></label>
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_20_column_124     is-leaf">
                                        <div class="cell">
                                            商品图片
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_20_column_125     is-leaf">
                                        <div class="cell">
                                            商品名称
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_20_column_126     is-leaf">
                                        <div class="cell">
                                            ISBN
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_20_column_127     is-leaf">
                                        <div class="cell">
                                            商品类型
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_20_column_128     is-leaf">
                                        <div class="cell">
                                            价格(元)
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_20_column_129     is-leaf">
                                        <div class="cell">
                                            销售数量
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_20_column_130     is-leaf">
                                        <div class="cell">
                                            状态
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_20_column_131     is-leaf">
                                        <div class="cell">
                                            首页置顶
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_20_column_132     is-leaf">
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
                                    <col name="el-table_20_column_123" width="50" />
                                    <col name="el-table_20_column_124" width="80" />
                                    <col name="el-table_20_column_125" width="200" />
                                    <col name="el-table_20_column_126" width="120" />
                                    <col name="el-table_20_column_127" width="220" />
                                    <col name="el-table_20_column_128" width="120" />
                                    <col name="el-table_20_column_129" width="120" />
                                    <col name="el-table_20_column_130" width="80" />
                                    <col name="el-table_20_column_131" width="100" />
                                    <col name="el-table_20_column_132" width="150" />
                                </colgroup>
                                <tbody>
                                <tr class="el-table__row">
                                    <td class="el-table_20_column_123  el-table-column--selection">
                                        <div class="cell">
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                <!----></label>
                                        </div></td>
                                    <td class="el-table_20_column_124  ">
                                        <div class="cell">
                                            <div>
                                                <img src="http://139.159.210.49/static-resource/goods/D101059385C84290948A5588EC567F50.jpg" width="50" height="50" />
                                            </div>
                                        </div></td>
                                    <td class="el-table_20_column_125  ">
                                        <div class="cell">
                                            青青世界
                                        </div></td>
                                    <td class="el-table_20_column_126  ">
                                        <div class="cell">
                                            0123456789123
                                        </div></td>
                                    <td class="el-table_20_column_127  ">
                                        <div class="cell">
                                            <div>
                                                图书
                                            </div>
                                        </div></td>
                                    <td class="el-table_20_column_128  ">
                                        <div class="cell">
                                            <div>
                                                ￥0.00
                                            </div>
                                        </div></td>
                                    <td class="el-table_20_column_129  ">
                                        <div class="cell">
                                            <span>0</span>
                                        </div></td>
                                    <td class="el-table_20_column_130  ">
                                        <div class="cell">
                                            <div>
                                                上架
                                            </div>
                                        </div></td>
                                    <td class="el-table_20_column_131  ">
                                        <div class="cell">
                                            <span>是</span>
                                        </div></td>
                                    <td class="el-table_20_column_132  ">
                                        <div class="cell">
                                            <a href="#/goodsEdit?id=5b513dfeca31e50659ed4043" class="el-tooltip scope.row" aria-describedby="el-tooltip-4559" tabindex="0"><span class="goods-operation-icon el-icon-edit-outline"></span></a>
                                            <a href="#/goodsDetail?id=5b513dfeca31e50659ed4043" class="el-tooltip scope.row" aria-describedby="el-tooltip-1700" tabindex="0"><span class="goods-operation-icon el-icon-view"></span></a>
                                            <span class="goods-operation-icon el-tooltip scope.row off-shelf" aria-describedby="el-tooltip-9877" tabindex="0"></span>
                                            <span class="goods-operation-icon el-tooltip scope.row cancel-top-icon" aria-describedby="el-tooltip-9025" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_20_column_123  el-table-column--selection">
                                        <div class="cell">
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                <!----></label>
                                        </div></td>
                                    <td class="el-table_20_column_124  ">
                                        <div class="cell">
                                            <div>
                                                <img src="http://139.159.210.49/static-resource/goods/C6C9E189A4A04C588212705B9B8A0CCF.jpg" width="50" height="50" />
                                            </div>
                                        </div></td>
                                    <td class="el-table_20_column_125  ">
                                        <div class="cell">
                                            红楼梦
                                        </div></td>
                                    <td class="el-table_20_column_126  ">
                                        <div class="cell">
                                            112-123344444-444
                                        </div></td>
                                    <td class="el-table_20_column_127  ">
                                        <div class="cell">
                                            <div>
                                                图书
                                            </div>
                                        </div></td>
                                    <td class="el-table_20_column_128  ">
                                        <div class="cell">
                                            <div>
                                                ￥1.98
                                            </div>
                                        </div></td>
                                    <td class="el-table_20_column_129  ">
                                        <div class="cell">
                                            <span>1</span>
                                        </div></td>
                                    <td class="el-table_20_column_130  ">
                                        <div class="cell">
                                            <div>
                                                上架
                                            </div>
                                        </div></td>
                                    <td class="el-table_20_column_131  ">
                                        <div class="cell">
                                            <span>是</span>
                                        </div></td>
                                    <td class="el-table_20_column_132  ">
                                        <div class="cell">
                                            <a href="#/goodsEdit?id=5b4570e6ca31e50675d9b6c2" class="el-tooltip scope.row" aria-describedby="el-tooltip-8071" tabindex="0"><span class="goods-operation-icon el-icon-edit-outline"></span></a>
                                            <a href="#/goodsDetail?id=5b4570e6ca31e50675d9b6c2" class="el-tooltip scope.row" aria-describedby="el-tooltip-5337" tabindex="0"><span class="goods-operation-icon el-icon-view"></span></a>
                                            <span class="goods-operation-icon el-tooltip scope.row off-shelf" aria-describedby="el-tooltip-6679" tabindex="0"></span>
                                            <span class="goods-operation-icon el-tooltip scope.row cancel-top-icon" aria-describedby="el-tooltip-4531" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_20_column_123  el-table-column--selection">
                                        <div class="cell">
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                <!----></label>
                                        </div></td>
                                    <td class="el-table_20_column_124  ">
                                        <div class="cell">
                                            <div>
                                                <img src="http://139.159.210.49/static-resource/goods/EAD5CFAB21C645A4A78A2CCB98FA6074.jpg" width="50" height="50" />
                                            </div>
                                        </div></td>
                                    <td class="el-table_20_column_125  ">
                                        <div class="cell">
                                            测试2665
                                        </div></td>
                                    <td class="el-table_20_column_126  ">
                                        <div class="cell">
                                            978-7-302-12665-8
                                        </div></td>
                                    <td class="el-table_20_column_127  ">
                                        <div class="cell">
                                            <div>
                                                音像
                                            </div>
                                        </div></td>
                                    <td class="el-table_20_column_128  ">
                                        <div class="cell">
                                            <div>
                                                ￥205.00
                                            </div>
                                        </div></td>
                                    <td class="el-table_20_column_129  ">
                                        <div class="cell">
                                            <span>0</span>
                                        </div></td>
                                    <td class="el-table_20_column_130  ">
                                        <div class="cell">
                                            <div>
                                                下架
                                            </div>
                                        </div></td>
                                    <td class="el-table_20_column_131  ">
                                        <div class="cell">
                                            <span>否</span>
                                        </div></td>
                                    <td class="el-table_20_column_132  ">
                                        <div class="cell">
                                            <a href="#/goodsEdit?id=5be2eb50ca31e5069194b294" class="el-tooltip scope.row" aria-describedby="el-tooltip-5338" tabindex="0"><span class="goods-operation-icon el-icon-edit-outline"></span></a>
                                            <a href="#/goodsDetail?id=5be2eb50ca31e5069194b294" class="el-tooltip scope.row" aria-describedby="el-tooltip-6345" tabindex="0"><span class="goods-operation-icon el-icon-view"></span></a>
                                            <span class="goods-operation-icon el-tooltip scope.row  on-shelf" aria-describedby="el-tooltip-497" tabindex="0"></span>
                                            <span class="goods-operation-icon el-tooltip scope.row set-top-icon" aria-describedby="el-tooltip-7547" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_20_column_123  el-table-column--selection">
                                        <div class="cell">
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                <!----></label>
                                        </div></td>
                                    <td class="el-table_20_column_124  ">
                                        <div class="cell">
                                            <div>
                                                <img src="http://139.159.210.49/static-resource/goods/2D7022ABFC884105B03D6D12233CFBFD.jpg" width="50" height="50" />
                                            </div>
                                        </div></td>
                                    <td class="el-table_20_column_125  ">
                                        <div class="cell">
                                            TEST6817
                                        </div></td>
                                    <td class="el-table_20_column_126  ">
                                        <div class="cell">
                                            978-7-302-16817-8
                                        </div></td>
                                    <td class="el-table_20_column_127  ">
                                        <div class="cell">
                                            <div>
                                                图书
                                            </div>
                                        </div></td>
                                    <td class="el-table_20_column_128  ">
                                        <div class="cell">
                                            <div>
                                                ￥160.00
                                            </div>
                                        </div></td>
                                    <td class="el-table_20_column_129  ">
                                        <div class="cell">
                                            <span>0</span>
                                        </div></td>
                                    <td class="el-table_20_column_130  ">
                                        <div class="cell">
                                            <div>
                                                下架
                                            </div>
                                        </div></td>
                                    <td class="el-table_20_column_131  ">
                                        <div class="cell">
                                            <span>否</span>
                                        </div></td>
                                    <td class="el-table_20_column_132  ">
                                        <div class="cell">
                                            <a href="#/goodsEdit?id=5be199d2ca31e5069194b28b" class="el-tooltip scope.row" aria-describedby="el-tooltip-2295" tabindex="0"><span class="goods-operation-icon el-icon-edit-outline"></span></a>
                                            <a href="#/goodsDetail?id=5be199d2ca31e5069194b28b" class="el-tooltip scope.row" aria-describedby="el-tooltip-8523" tabindex="0"><span class="goods-operation-icon el-icon-view"></span></a>
                                            <span class="goods-operation-icon el-tooltip scope.row  on-shelf" aria-describedby="el-tooltip-5652" tabindex="0"></span>
                                            <span class="goods-operation-icon el-tooltip scope.row set-top-icon" aria-describedby="el-tooltip-9676" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_20_column_123  el-table-column--selection">
                                        <div class="cell">
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                <!----></label>
                                        </div></td>
                                    <td class="el-table_20_column_124  ">
                                        <div class="cell">
                                            <div>
                                                <img src="http://139.159.210.49/static-resource/goods/9A43DCB5FC8B4015B99351EBF9C2F95D.jpg" width="50" height="50" />
                                            </div>
                                        </div></td>
                                    <td class="el-table_20_column_125  ">
                                        <div class="cell">
                                            TEST2387
                                        </div></td>
                                    <td class="el-table_20_column_126  ">
                                        <div class="cell">
                                            978-7-302-12387-8
                                        </div></td>
                                    <td class="el-table_20_column_127  ">
                                        <div class="cell">
                                            <div>
                                                图书
                                            </div>
                                        </div></td>
                                    <td class="el-table_20_column_128  ">
                                        <div class="cell">
                                            <div>
                                                ￥853.00
                                            </div>
                                        </div></td>
                                    <td class="el-table_20_column_129  ">
                                        <div class="cell">
                                            <span>0</span>
                                        </div></td>
                                    <td class="el-table_20_column_130  ">
                                        <div class="cell">
                                            <div>
                                                下架
                                            </div>
                                        </div></td>
                                    <td class="el-table_20_column_131  ">
                                        <div class="cell">
                                            <span>否</span>
                                        </div></td>
                                    <td class="el-table_20_column_132  ">
                                        <div class="cell">
                                            <a href="#/goodsEdit?id=5bdbc11bca31e5068cba3fba" class="el-tooltip scope.row" aria-describedby="el-tooltip-2262" tabindex="0"><span class="goods-operation-icon el-icon-edit-outline"></span></a>
                                            <a href="#/goodsDetail?id=5bdbc11bca31e5068cba3fba" class="el-tooltip scope.row" aria-describedby="el-tooltip-3039" tabindex="0"><span class="goods-operation-icon el-icon-view"></span></a>
                                            <span class="goods-operation-icon el-tooltip scope.row  on-shelf" aria-describedby="el-tooltip-8139" tabindex="0"></span>
                                            <span class="goods-operation-icon el-tooltip scope.row set-top-icon" aria-describedby="el-tooltip-7329" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_20_column_123  el-table-column--selection">
                                        <div class="cell">
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                <!----></label>
                                        </div></td>
                                    <td class="el-table_20_column_124  ">
                                        <div class="cell">
                                            <div>
                                                <img src="http://139.159.210.49/static-resource/goods/8B7374C50F884D748246B3594E8123EB.jpg" width="50" height="50" />
                                            </div>
                                        </div></td>
                                    <td class="el-table_20_column_125  ">
                                        <div class="cell">
                                            aa
                                        </div></td>
                                    <td class="el-table_20_column_126  ">
                                        <div class="cell">
                                            7-309-04547-5
                                        </div></td>
                                    <td class="el-table_20_column_127  ">
                                        <div class="cell">
                                            <div>
                                                音像
                                            </div>
                                        </div></td>
                                    <td class="el-table_20_column_128  ">
                                        <div class="cell">
                                            <div>
                                                ￥0.00
                                            </div>
                                        </div></td>
                                    <td class="el-table_20_column_129  ">
                                        <div class="cell">
                                            <span>0</span>
                                        </div></td>
                                    <td class="el-table_20_column_130  ">
                                        <div class="cell">
                                            <div>
                                                下架
                                            </div>
                                        </div></td>
                                    <td class="el-table_20_column_131  ">
                                        <div class="cell">
                                            <span>否</span>
                                        </div></td>
                                    <td class="el-table_20_column_132  ">
                                        <div class="cell">
                                            <a href="#/goodsEdit?id=5bbdaefaca31e5067e52ec6c" class="el-tooltip scope.row" aria-describedby="el-tooltip-2063" tabindex="0"><span class="goods-operation-icon el-icon-edit-outline"></span></a>
                                            <a href="#/goodsDetail?id=5bbdaefaca31e5067e52ec6c" class="el-tooltip scope.row" aria-describedby="el-tooltip-5507" tabindex="0"><span class="goods-operation-icon el-icon-view"></span></a>
                                            <span class="goods-operation-icon el-tooltip scope.row  on-shelf" aria-describedby="el-tooltip-1599" tabindex="0"></span>
                                            <span class="goods-operation-icon el-tooltip scope.row set-top-icon" aria-describedby="el-tooltip-6958" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_20_column_123  el-table-column--selection">
                                        <div class="cell">
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                <!----></label>
                                        </div></td>
                                    <td class="el-table_20_column_124  ">
                                        <div class="cell">
                                            <div>
                                                <img src="http://139.159.210.49/static-resource/goods/7B313A2BD9AE4E118CC1D05F15F092BD.jpg" width="50" height="50" />
                                            </div>
                                        </div></td>
                                    <td class="el-table_20_column_125  ">
                                        <div class="cell">
                                            TEST9430
                                        </div></td>
                                    <td class="el-table_20_column_126  ">
                                        <div class="cell">
                                            978-7-302-19430-8
                                        </div></td>
                                    <td class="el-table_20_column_127  ">
                                        <div class="cell">
                                            <div>
                                                图书
                                            </div>
                                        </div></td>
                                    <td class="el-table_20_column_128  ">
                                        <div class="cell">
                                            <div>
                                                ￥70.00
                                            </div>
                                        </div></td>
                                    <td class="el-table_20_column_129  ">
                                        <div class="cell">
                                            <span>0</span>
                                        </div></td>
                                    <td class="el-table_20_column_130  ">
                                        <div class="cell">
                                            <div>
                                                下架
                                            </div>
                                        </div></td>
                                    <td class="el-table_20_column_131  ">
                                        <div class="cell">
                                            <span>否</span>
                                        </div></td>
                                    <td class="el-table_20_column_132  ">
                                        <div class="cell">
                                            <a href="#/goodsEdit?id=5baa3ad5ca31e57a96f19a27" class="el-tooltip scope.row" aria-describedby="el-tooltip-148" tabindex="0"><span class="goods-operation-icon el-icon-edit-outline"></span></a>
                                            <a href="#/goodsDetail?id=5baa3ad5ca31e57a96f19a27" class="el-tooltip scope.row" aria-describedby="el-tooltip-4720" tabindex="0"><span class="goods-operation-icon el-icon-view"></span></a>
                                            <span class="goods-operation-icon el-tooltip scope.row  on-shelf" aria-describedby="el-tooltip-6088" tabindex="0"></span>
                                            <span class="goods-operation-icon el-tooltip scope.row set-top-icon" aria-describedby="el-tooltip-8635" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_20_column_123  el-table-column--selection">
                                        <div class="cell">
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                <!----></label>
                                        </div></td>
                                    <td class="el-table_20_column_124  ">
                                        <div class="cell">
                                            <div>
                                                <img src="http://139.159.210.49/static-resource/goods/BADE04EED18949E5ADBC37FEF9D128D3.jpg" width="50" height="50" />
                                            </div>
                                        </div></td>
                                    <td class="el-table_20_column_125  ">
                                        <div class="cell">
                                            TEST4168
                                        </div></td>
                                    <td class="el-table_20_column_126  ">
                                        <div class="cell">
                                            978-7-302-14168-8
                                        </div></td>
                                    <td class="el-table_20_column_127  ">
                                        <div class="cell">
                                            <div>
                                                全部
                                            </div>
                                        </div></td>
                                    <td class="el-table_20_column_128  ">
                                        <div class="cell">
                                            <div>
                                                ￥561.00
                                            </div>
                                        </div></td>
                                    <td class="el-table_20_column_129  ">
                                        <div class="cell">
                                            <span>0</span>
                                        </div></td>
                                    <td class="el-table_20_column_130  ">
                                        <div class="cell">
                                            <div>
                                                下架
                                            </div>
                                        </div></td>
                                    <td class="el-table_20_column_131  ">
                                        <div class="cell">
                                            <span>否</span>
                                        </div></td>
                                    <td class="el-table_20_column_132  ">
                                        <div class="cell">
                                            <a href="#/goodsEdit?id=5ba20516ca31e57a96f19a0b" class="el-tooltip scope.row" aria-describedby="el-tooltip-1138" tabindex="0"><span class="goods-operation-icon el-icon-edit-outline"></span></a>
                                            <a href="#/goodsDetail?id=5ba20516ca31e57a96f19a0b" class="el-tooltip scope.row" aria-describedby="el-tooltip-3136" tabindex="0"><span class="goods-operation-icon el-icon-view"></span></a>
                                            <span class="goods-operation-icon el-tooltip scope.row  on-shelf" aria-describedby="el-tooltip-7914" tabindex="0"></span>
                                            <span class="goods-operation-icon el-tooltip scope.row set-top-icon" aria-describedby="el-tooltip-3302" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_20_column_123  el-table-column--selection">
                                        <div class="cell">
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                <!----></label>
                                        </div></td>
                                    <td class="el-table_20_column_124  ">
                                        <div class="cell">
                                            <div>
                                                <img src="http://139.159.210.49/static-resource/goods/FCCA7743BC8E488286B8645BE0CFD1B9.jpg" width="50" height="50" />
                                            </div>
                                        </div></td>
                                    <td class="el-table_20_column_125  ">
                                        <div class="cell">
                                            TEST6016
                                        </div></td>
                                    <td class="el-table_20_column_126  ">
                                        <div class="cell">
                                            978-7-302-16016-8
                                        </div></td>
                                    <td class="el-table_20_column_127  ">
                                        <div class="cell">
                                            <div>
                                                音像
                                            </div>
                                        </div></td>
                                    <td class="el-table_20_column_128  ">
                                        <div class="cell">
                                            <div>
                                                ￥202.00
                                            </div>
                                        </div></td>
                                    <td class="el-table_20_column_129  ">
                                        <div class="cell">
                                            <span>0</span>
                                        </div></td>
                                    <td class="el-table_20_column_130  ">
                                        <div class="cell">
                                            <div>
                                                下架
                                            </div>
                                        </div></td>
                                    <td class="el-table_20_column_131  ">
                                        <div class="cell">
                                            <span>否</span>
                                        </div></td>
                                    <td class="el-table_20_column_132  ">
                                        <div class="cell">
                                            <a href="#/goodsEdit?id=5ba10046ca31e57a96f19a04" class="el-tooltip scope.row" aria-describedby="el-tooltip-1552" tabindex="0"><span class="goods-operation-icon el-icon-edit-outline"></span></a>
                                            <a href="#/goodsDetail?id=5ba10046ca31e57a96f19a04" class="el-tooltip scope.row" aria-describedby="el-tooltip-5566" tabindex="0"><span class="goods-operation-icon el-icon-view"></span></a>
                                            <span class="goods-operation-icon el-tooltip scope.row  on-shelf" aria-describedby="el-tooltip-3940" tabindex="0"></span>
                                            <span class="goods-operation-icon el-tooltip scope.row set-top-icon" aria-describedby="el-tooltip-9614" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_20_column_123  el-table-column--selection">
                                        <div class="cell">
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                <!----></label>
                                        </div></td>
                                    <td class="el-table_20_column_124  ">
                                        <div class="cell">
                                            <div>
                                                <img src="http://139.159.210.49/static-resource/goods/705C0288B4D148FEA69130517B59C697.jpg" width="50" height="50" />
                                            </div>
                                        </div></td>
                                    <td class="el-table_20_column_125  ">
                                        <div class="cell">
                                            TEST9454
                                        </div></td>
                                    <td class="el-table_20_column_126  ">
                                        <div class="cell">
                                            978-7-302-19454-8
                                        </div></td>
                                    <td class="el-table_20_column_127  ">
                                        <div class="cell">
                                            <div>
                                                图书
                                            </div>
                                        </div></td>
                                    <td class="el-table_20_column_128  ">
                                        <div class="cell">
                                            <div>
                                                ￥761.00
                                            </div>
                                        </div></td>
                                    <td class="el-table_20_column_129  ">
                                        <div class="cell">
                                            <span>0</span>
                                        </div></td>
                                    <td class="el-table_20_column_130  ">
                                        <div class="cell">
                                            <div>
                                                下架
                                            </div>
                                        </div></td>
                                    <td class="el-table_20_column_131  ">
                                        <div class="cell">
                                            <span>否</span>
                                        </div></td>
                                    <td class="el-table_20_column_132  ">
                                        <div class="cell">
                                            <a href="#/goodsEdit?id=5b9a228dca31e57a96f199ca" class="el-tooltip scope.row" aria-describedby="el-tooltip-2710" tabindex="0"><span class="goods-operation-icon el-icon-edit-outline"></span></a>
                                            <a href="#/goodsDetail?id=5b9a228dca31e57a96f199ca" class="el-tooltip scope.row" aria-describedby="el-tooltip-549" tabindex="0"><span class="goods-operation-icon el-icon-view"></span></a>
                                            <span class="goods-operation-icon el-tooltip scope.row  on-shelf" aria-describedby="el-tooltip-1890" tabindex="0"></span>
                                            <span class="goods-operation-icon el-tooltip scope.row set-top-icon" aria-describedby="el-tooltip-9618" tabindex="0"></span>
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
                                <div style="width: 1241px; height: 799px;"></div>
                            </div>
                            <div class="contract-trigger"></div>
                        </div>
                    </div>
                    <div>
                        <div class="el-pagination" style="text-align: right;">
                            <span class="el-pagination__total">共 89 条</span>
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
                                <li class="number">9</li>
                            </ul>
                            <button type="button" class="btn-next"><i class="el-icon el-icon-arrow-right"></i></button>
                            <span class="el-pagination__jump">前往
          <div class="el-input el-pagination__editor is-in-pagination">
           <!---->
           <input autocomplete="off" type="number" rows="2" max="9" min="1" validateevent="true" class="el-input__inner" />
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
