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
                    <span class="el-breadcrumb__item"><span role="link" class="el-breadcrumb__inner">测评管理</span><i class="el-breadcrumb__separator el-icon-arrow-right"></i></span>
                    <span class="el-breadcrumb__item" aria-current="page"><span role="link" class="el-breadcrumb__inner">评价模板管理</span><i class="el-breadcrumb__separator el-icon-arrow-right"></i></span>
                </div>
            </div>
            <div class="b-page-container">
                <div class="container-head clearfix">
                    <div class="el-row" span="24">
                        <div class="el-col el-col-2">
                            <span class="new-primary-button">删除</span>
                        </div>
                        <div class="el-col el-col-2">
                            <a href="#/evamodalEdit" class=""><span class="new-primary-button">添加</span></a>
                        </div>
                        <div class="right el-col el-col-6">
                            <div class="el-input el-input--suffix">
                                <!---->
                                <input autocomplete="off" placeholder="请输入评价模板名称搜索" type="text" rows="2" validateevent="true" class="el-input__inner" />
                                <!---->
                                <span class="el-input__suffix"><span class="el-input__suffix-inner"><i class="el-input__icon el-icon-search"></i>
                                    <!----></span>
                                    <!----></span>
                                <!---->
                            </div>
                        </div>
                    </div>
                </div>
                <div class="b-container-table">
                    <div class="el-table el-table--fit el-table--enable-row-hover el-table--enable-row-transition" style="width: 100%;">
                        <div class="hidden-columns">
                            <div disabled="disabled"></div>
                            <div></div>
                            <div></div>
                            <div></div>
                            <div></div>
                            <div></div>
                        </div>
                        <div class="el-table__header-wrapper">
                            <table cellspacing="0" cellpadding="0" border="0" class="el-table__header" style="width: 1240px;">
                                <colgroup>
                                    <col name="el-table_26_column_176" width="50" />
                                    <col name="el-table_26_column_177" width="250" />
                                    <col name="el-table_26_column_178" width="340" />
                                    <col name="el-table_26_column_179" width="220" />
                                    <col name="el-table_26_column_180" width="260" />
                                    <col name="el-table_26_column_181" width="120" />
                                    <col name="gutter" width="0" />
                                </colgroup>
                                <thead class="has-gutter">
                                <tr class="">
                                    <th colspan="1" rowspan="1" class="el-table_26_column_176   el-table-column--selection  is-leaf">
                                        <div class="cell">
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                <!----></label>
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_26_column_177     is-leaf">
                                        <div class="cell">
                                            评价模板名称
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_26_column_178     is-leaf">
                                        <div class="cell">
                                            适用说明
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_26_column_179     is-leaf">
                                        <div class="cell">
                                            创建人
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_26_column_180     is-leaf">
                                        <div class="cell">
                                            创建时间
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_26_column_181     is-leaf">
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
                                    <col name="el-table_26_column_176" width="50" />
                                    <col name="el-table_26_column_177" width="250" />
                                    <col name="el-table_26_column_178" width="340" />
                                    <col name="el-table_26_column_179" width="220" />
                                    <col name="el-table_26_column_180" width="260" />
                                    <col name="el-table_26_column_181" width="120" />
                                </colgroup>
                                <tbody>
                                <tr class="el-table__row">
                                    <td class="el-table_26_column_176  el-table-column--selection">
                                        <div class="cell">
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                <!----></label>
                                        </div></td>
                                    <td class="el-table_26_column_177  ">
                                        <div class="cell">
                                            再努力
                                        </div></td>
                                    <td class="el-table_26_column_178  ">
                                        <div class="cell">
                                            公共测评
                                        </div></td>
                                    <td class="el-table_26_column_179  ">
                                        <div class="cell">
                                            admin11
                                        </div></td>
                                    <td class="el-table_26_column_180  ">
                                        <div class="cell">
                                            <span>2018-10-19 15:19:15</span>
                                        </div></td>
                                    <td class="el-table_26_column_181  ">
                                        <div class="cell">
                                            <span class="goods-operation-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-6430" tabindex="0"></span>
                                            <span class="goods-operation-icon el-icon-edit-outline el-tooltip scope.row" aria-describedby="el-tooltip-8254" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_26_column_176  el-table-column--selection">
                                        <div class="cell">
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                <!----></label>
                                        </div></td>
                                    <td class="el-table_26_column_177  ">
                                        <div class="cell">
                                            你可以
                                        </div></td>
                                    <td class="el-table_26_column_178  ">
                                        <div class="cell">
                                            公共测评
                                        </div></td>
                                    <td class="el-table_26_column_179  ">
                                        <div class="cell">
                                            admin11
                                        </div></td>
                                    <td class="el-table_26_column_180  ">
                                        <div class="cell">
                                            <span>2018-10-19 15:18:56</span>
                                        </div></td>
                                    <td class="el-table_26_column_181  ">
                                        <div class="cell">
                                            <span class="goods-operation-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-1145" tabindex="0"></span>
                                            <span class="goods-operation-icon el-icon-edit-outline el-tooltip scope.row" aria-describedby="el-tooltip-8196" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_26_column_176  el-table-column--selection">
                                        <div class="cell">
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                <!----></label>
                                        </div></td>
                                    <td class="el-table_26_column_177  ">
                                        <div class="cell">
                                            很好哦
                                        </div></td>
                                    <td class="el-table_26_column_178  ">
                                        <div class="cell">
                                            公共测评
                                        </div></td>
                                    <td class="el-table_26_column_179  ">
                                        <div class="cell">
                                            admin11
                                        </div></td>
                                    <td class="el-table_26_column_180  ">
                                        <div class="cell">
                                            <span>2018-10-19 15:18:36</span>
                                        </div></td>
                                    <td class="el-table_26_column_181  ">
                                        <div class="cell">
                                            <span class="goods-operation-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-5035" tabindex="0"></span>
                                            <span class="goods-operation-icon el-icon-edit-outline el-tooltip scope.row" aria-describedby="el-tooltip-6452" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_26_column_176  el-table-column--selection">
                                        <div class="cell">
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                <!----></label>
                                        </div></td>
                                    <td class="el-table_26_column_177  ">
                                        <div class="cell">
                                            最棒的
                                        </div></td>
                                    <td class="el-table_26_column_178  ">
                                        <div class="cell">
                                            公共测评
                                        </div></td>
                                    <td class="el-table_26_column_179  ">
                                        <div class="cell">
                                            admin11
                                        </div></td>
                                    <td class="el-table_26_column_180  ">
                                        <div class="cell">
                                            <span>2018-10-19 15:18:21</span>
                                        </div></td>
                                    <td class="el-table_26_column_181  ">
                                        <div class="cell">
                                            <span class="goods-operation-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-321" tabindex="0"></span>
                                            <span class="goods-operation-icon el-icon-edit-outline el-tooltip scope.row" aria-describedby="el-tooltip-5955" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_26_column_176  el-table-column--selection">
                                        <div class="cell">
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                <!----></label>
                                        </div></td>
                                    <td class="el-table_26_column_177  ">
                                        <div class="cell">
                                            lqq导师测评1
                                        </div></td>
                                    <td class="el-table_26_column_178  ">
                                        <div class="cell">
                                            导师测评
                                        </div></td>
                                    <td class="el-table_26_column_179  ">
                                        <div class="cell">
                                            admin11
                                        </div></td>
                                    <td class="el-table_26_column_180  ">
                                        <div class="cell">
                                            <span>2018-10-18 16:52:16</span>
                                        </div></td>
                                    <td class="el-table_26_column_181  ">
                                        <div class="cell">
                                            <span class="goods-operation-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-1372" tabindex="0"></span>
                                            <span class="goods-operation-icon el-icon-edit-outline el-tooltip scope.row" aria-describedby="el-tooltip-8516" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_26_column_176  el-table-column--selection">
                                        <div class="cell">
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                <!----></label>
                                        </div></td>
                                    <td class="el-table_26_column_177  ">
                                        <div class="cell">
                                            lqq模板名称测试1
                                        </div></td>
                                    <td class="el-table_26_column_178  ">
                                        <div class="cell">
                                            公共测评
                                        </div></td>
                                    <td class="el-table_26_column_179  ">
                                        <div class="cell">
                                            admin11
                                        </div></td>
                                    <td class="el-table_26_column_180  ">
                                        <div class="cell">
                                            <span>2018-10-12 15:50:58</span>
                                        </div></td>
                                    <td class="el-table_26_column_181  ">
                                        <div class="cell">
                                            <span class="goods-operation-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-8409" tabindex="0"></span>
                                            <span class="goods-operation-icon el-icon-edit-outline el-tooltip scope.row" aria-describedby="el-tooltip-2257" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_26_column_176  el-table-column--selection">
                                        <div class="cell">
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                <!----></label>
                                        </div></td>
                                    <td class="el-table_26_column_177  ">
                                        <div class="cell">
                                            TEST4505
                                        </div></td>
                                    <td class="el-table_26_column_178  ">
                                        <div class="cell">
                                            公共测评
                                        </div></td>
                                    <td class="el-table_26_column_179  ">
                                        <div class="cell">
                                            admin11
                                        </div></td>
                                    <td class="el-table_26_column_180  ">
                                        <div class="cell">
                                            <span>2018-09-18 15:56:16</span>
                                        </div></td>
                                    <td class="el-table_26_column_181  ">
                                        <div class="cell">
                                            <span class="goods-operation-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-6231" tabindex="0"></span>
                                            <span class="goods-operation-icon el-icon-edit-outline el-tooltip scope.row" aria-describedby="el-tooltip-3428" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_26_column_176  el-table-column--selection">
                                        <div class="cell">
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                <!----></label>
                                        </div></td>
                                    <td class="el-table_26_column_177  ">
                                        <div class="cell">
                                            测试9881
                                        </div></td>
                                    <td class="el-table_26_column_178  ">
                                        <div class="cell">
                                            公共测评
                                        </div></td>
                                    <td class="el-table_26_column_179  ">
                                        <div class="cell">
                                            admin11
                                        </div></td>
                                    <td class="el-table_26_column_180  ">
                                        <div class="cell">
                                            <span>2018-09-18 15:54:01</span>
                                        </div></td>
                                    <td class="el-table_26_column_181  ">
                                        <div class="cell">
                                            <span class="goods-operation-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-2902" tabindex="0"></span>
                                            <span class="goods-operation-icon el-icon-edit-outline el-tooltip scope.row" aria-describedby="el-tooltip-3882" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_26_column_176  el-table-column--selection">
                                        <div class="cell">
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                <!----></label>
                                        </div></td>
                                    <td class="el-table_26_column_177  ">
                                        <div class="cell">
                                            测试1437
                                        </div></td>
                                    <td class="el-table_26_column_178  ">
                                        <div class="cell">
                                            导师测评
                                        </div></td>
                                    <td class="el-table_26_column_179  ">
                                        <div class="cell">
                                            admin11
                                        </div></td>
                                    <td class="el-table_26_column_180  ">
                                        <div class="cell">
                                            <span>2018-09-18 15:53:40</span>
                                        </div></td>
                                    <td class="el-table_26_column_181  ">
                                        <div class="cell">
                                            <span class="goods-operation-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-7369" tabindex="0"></span>
                                            <span class="goods-operation-icon el-icon-edit-outline el-tooltip scope.row" aria-describedby="el-tooltip-9092" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_26_column_176  el-table-column--selection">
                                        <div class="cell">
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                <!----></label>
                                        </div></td>
                                    <td class="el-table_26_column_177  ">
                                        <div class="cell">
                                            TEST8632
                                        </div></td>
                                    <td class="el-table_26_column_178  ">
                                        <div class="cell">
                                            公共测评
                                        </div></td>
                                    <td class="el-table_26_column_179  ">
                                        <div class="cell">
                                            admin11
                                        </div></td>
                                    <td class="el-table_26_column_180  ">
                                        <div class="cell">
                                            <span>2018-09-18 15:51:45</span>
                                        </div></td>
                                    <td class="el-table_26_column_181  ">
                                        <div class="cell">
                                            <span class="goods-operation-icon el-icon-view el-tooltip scope.row" aria-describedby="el-tooltip-3160" tabindex="0"></span>
                                            <span class="goods-operation-icon el-icon-edit-outline el-tooltip scope.row" aria-describedby="el-tooltip-2362" tabindex="0"></span>
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
                                <div style="width: 1241px; height: 539px;"></div>
                            </div>
                            <div class="contract-trigger"></div>
                        </div>
                    </div>
                    <div>
                        <div class="el-pagination" style="text-align: right;">
                            <span class="el-pagination__total">共 91 条</span>
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
                                <li class="number">10</li>
                            </ul>
                            <button type="button" class="btn-next"><i class="el-icon el-icon-arrow-right"></i></button>
                            <span class="el-pagination__jump">前往
          <div class="el-input el-pagination__editor is-in-pagination">
           <!---->
           <input autocomplete="off" type="number" rows="2" max="10" min="1" validateevent="true" class="el-input__inner" />
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
