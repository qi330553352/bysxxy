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
                    <span class="el-breadcrumb__item" aria-current="page"><span role="link" class="el-breadcrumb__inner">测评简介管理</span><i class="el-breadcrumb__separator el-icon-arrow-right"></i></span>
                </div>
            </div>
            <div class="b-page-container">
                <div class="container-head clearfix">
                    <div class="el-row" span="24">
                        <div class="right el-col el-col-6">
                            <div class="el-input el-input--suffix">
                                <!---->
                                <input autocomplete="off" placeholder="请输入图书名称搜索" type="text" rows="2" validateevent="true" class="el-input__inner" />
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
                                    <col name="el-table_27_column_182" width="250" />
                                    <col name="el-table_27_column_183" width="210" />
                                    <col name="el-table_27_column_184" width="160" />
                                    <col name="el-table_27_column_185" width="160" />
                                    <col name="el-table_27_column_186" width="140" />
                                    <col name="el-table_27_column_187" width="200" />
                                    <col name="el-table_27_column_188" width="120" />
                                    <col name="gutter" width="0" />
                                </colgroup>
                                <thead class="has-gutter">
                                <tr class="">
                                    <th colspan="1" rowspan="1" class="el-table_27_column_182     is-leaf">
                                        <div class="cell">
                                            图书名称
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_27_column_183     is-leaf">
                                        <div class="cell">
                                            ISBN
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_27_column_184     is-leaf">
                                        <div class="cell">
                                            关联试题数量
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_27_column_185     is-leaf">
                                        <div class="cell">
                                            测评简介
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_27_column_186     is-leaf">
                                        <div class="cell">
                                            测评规则
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_27_column_187     is-leaf">
                                        <div class="cell">
                                            上传时间
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_27_column_188     is-leaf">
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
                                    <col name="el-table_27_column_182" width="250" />
                                    <col name="el-table_27_column_183" width="210" />
                                    <col name="el-table_27_column_184" width="160" />
                                    <col name="el-table_27_column_185" width="160" />
                                    <col name="el-table_27_column_186" width="140" />
                                    <col name="el-table_27_column_187" width="200" />
                                    <col name="el-table_27_column_188" width="120" />
                                </colgroup>
                                <tbody>
                                <tr class="el-table__row">
                                    <td class="el-table_27_column_182  ">
                                        <div class="cell">
                                            服务3670
                                        </div></td>
                                    <td class="el-table_27_column_183  ">
                                        <div class="cell">
                                            7-302-18888-9
                                        </div></td>
                                    <td class="el-table_27_column_184  ">
                                        <div class="cell">
                                            1
                                        </div></td>
                                    <td class="el-table_27_column_185  ">
                                        <div class="cell">
                                            有
                                        </div></td>
                                    <td class="el-table_27_column_186  ">
                                        <div class="cell">
                                            2
                                        </div></td>
                                    <td class="el-table_27_column_187  ">
                                        <div class="cell">
                                            <span>2018-11-09 16:13:19</span>
                                        </div></td>
                                    <td class="el-table_27_column_188  ">
                                        <div class="cell">
                                            <span class="i-relate el-tooltip scope.row" aria-describedby="el-tooltip-5536" tabindex="0" style="margin-right: 10px;"></span>
                                            <span class="goods-operation-icon el-icon-edit-outline el-tooltip scope.row" aria-describedby="el-tooltip-4618" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_27_column_182  ">
                                        <div class="cell">
                                            你好，杰克逊
                                        </div></td>
                                    <td class="el-table_27_column_183  ">
                                        <div class="cell">
                                            123-123-123-9
                                        </div></td>
                                    <td class="el-table_27_column_184  ">
                                        <div class="cell">
                                            0
                                        </div></td>
                                    <td class="el-table_27_column_185  ">
                                        <div class="cell">
                                            无
                                        </div></td>
                                    <td class="el-table_27_column_186  ">
                                        <div class="cell">
                                            2
                                        </div></td>
                                    <td class="el-table_27_column_187  ">
                                        <div class="cell">
                                            <span>2018-11-09 11:59:37</span>
                                        </div></td>
                                    <td class="el-table_27_column_188  ">
                                        <div class="cell">
                                            <span class="i-relate el-tooltip scope.row" aria-describedby="el-tooltip-818" tabindex="0" style="margin-right: 10px;"></span>
                                            <span class="goods-operation-icon el-icon-edit-outline el-tooltip scope.row" aria-describedby="el-tooltip-5431" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_27_column_182  ">
                                        <div class="cell">
                                            服务5002
                                        </div></td>
                                    <td class="el-table_27_column_183  ">
                                        <div class="cell">
                                            7-302-18888-9
                                        </div></td>
                                    <td class="el-table_27_column_184  ">
                                        <div class="cell">
                                            0
                                        </div></td>
                                    <td class="el-table_27_column_185  ">
                                        <div class="cell">
                                            无
                                        </div></td>
                                    <td class="el-table_27_column_186  ">
                                        <div class="cell">
                                            0
                                        </div></td>
                                    <td class="el-table_27_column_187  ">
                                        <div class="cell">
                                            <span>2018-11-08 21:40:39</span>
                                        </div></td>
                                    <td class="el-table_27_column_188  ">
                                        <div class="cell">
                                            <span class="i-relate el-tooltip scope.row" aria-describedby="el-tooltip-7952" tabindex="0" style="margin-right: 10px;"></span>
                                            <span class="goods-operation-icon el-icon-edit-outline el-tooltip scope.row" aria-describedby="el-tooltip-5600" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_27_column_182  ">
                                        <div class="cell">
                                            服务
                                        </div></td>
                                    <td class="el-table_27_column_183  ">
                                        <div class="cell">
                                            7-302-18888-9
                                        </div></td>
                                    <td class="el-table_27_column_184  ">
                                        <div class="cell">
                                            0
                                        </div></td>
                                    <td class="el-table_27_column_185  ">
                                        <div class="cell">
                                            无
                                        </div></td>
                                    <td class="el-table_27_column_186  ">
                                        <div class="cell">
                                            0
                                        </div></td>
                                    <td class="el-table_27_column_187  ">
                                        <div class="cell">
                                            <span>2018-11-08 21:40:37</span>
                                        </div></td>
                                    <td class="el-table_27_column_188  ">
                                        <div class="cell">
                                            <span class="i-relate el-tooltip scope.row" aria-describedby="el-tooltip-2497" tabindex="0" style="margin-right: 10px;"></span>
                                            <span class="goods-operation-icon el-icon-edit-outline el-tooltip scope.row" aria-describedby="el-tooltip-4043" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_27_column_182  ">
                                        <div class="cell">
                                            TEST8855
                                        </div></td>
                                    <td class="el-table_27_column_183  ">
                                        <div class="cell">
                                            7-302-18888-9
                                        </div></td>
                                    <td class="el-table_27_column_184  ">
                                        <div class="cell">
                                            1
                                        </div></td>
                                    <td class="el-table_27_column_185  ">
                                        <div class="cell">
                                            有
                                        </div></td>
                                    <td class="el-table_27_column_186  ">
                                        <div class="cell">
                                            2
                                        </div></td>
                                    <td class="el-table_27_column_187  ">
                                        <div class="cell">
                                            <span>2018-11-07 21:41:11</span>
                                        </div></td>
                                    <td class="el-table_27_column_188  ">
                                        <div class="cell">
                                            <span class="i-relate el-tooltip scope.row" aria-describedby="el-tooltip-9989" tabindex="0" style="margin-right: 10px;"></span>
                                            <span class="goods-operation-icon el-icon-edit-outline el-tooltip scope.row" aria-describedby="el-tooltip-917" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_27_column_182  ">
                                        <div class="cell">
                                            服务4177
                                        </div></td>
                                    <td class="el-table_27_column_183  ">
                                        <div class="cell">
                                            7-302-18888-9
                                        </div></td>
                                    <td class="el-table_27_column_184  ">
                                        <div class="cell">
                                            0
                                        </div></td>
                                    <td class="el-table_27_column_185  ">
                                        <div class="cell">
                                            无
                                        </div></td>
                                    <td class="el-table_27_column_186  ">
                                        <div class="cell">
                                            0
                                        </div></td>
                                    <td class="el-table_27_column_187  ">
                                        <div class="cell">
                                            <span>2018-11-07 21:40:32</span>
                                        </div></td>
                                    <td class="el-table_27_column_188  ">
                                        <div class="cell">
                                            <span class="i-relate el-tooltip scope.row" aria-describedby="el-tooltip-2338" tabindex="0" style="margin-right: 10px;"></span>
                                            <span class="goods-operation-icon el-icon-edit-outline el-tooltip scope.row" aria-describedby="el-tooltip-3343" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_27_column_182  ">
                                        <div class="cell">
                                            服务
                                        </div></td>
                                    <td class="el-table_27_column_183  ">
                                        <div class="cell">
                                            7-302-18888-9
                                        </div></td>
                                    <td class="el-table_27_column_184  ">
                                        <div class="cell">
                                            0
                                        </div></td>
                                    <td class="el-table_27_column_185  ">
                                        <div class="cell">
                                            无
                                        </div></td>
                                    <td class="el-table_27_column_186  ">
                                        <div class="cell">
                                            0
                                        </div></td>
                                    <td class="el-table_27_column_187  ">
                                        <div class="cell">
                                            <span>2018-11-07 21:40:30</span>
                                        </div></td>
                                    <td class="el-table_27_column_188  ">
                                        <div class="cell">
                                            <span class="i-relate el-tooltip scope.row" aria-describedby="el-tooltip-3177" tabindex="0" style="margin-right: 10px;"></span>
                                            <span class="goods-operation-icon el-icon-edit-outline el-tooltip scope.row" aria-describedby="el-tooltip-2900" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_27_column_182  ">
                                        <div class="cell">
                                            服务1900
                                        </div></td>
                                    <td class="el-table_27_column_183  ">
                                        <div class="cell">
                                            7-302-18888-9
                                        </div></td>
                                    <td class="el-table_27_column_184  ">
                                        <div class="cell">
                                            1
                                        </div></td>
                                    <td class="el-table_27_column_185  ">
                                        <div class="cell">
                                            有
                                        </div></td>
                                    <td class="el-table_27_column_186  ">
                                        <div class="cell">
                                            2
                                        </div></td>
                                    <td class="el-table_27_column_187  ">
                                        <div class="cell">
                                            <span>2018-11-06 21:41:16</span>
                                        </div></td>
                                    <td class="el-table_27_column_188  ">
                                        <div class="cell">
                                            <span class="i-relate el-tooltip scope.row" aria-describedby="el-tooltip-1947" tabindex="0" style="margin-right: 10px;"></span>
                                            <span class="goods-operation-icon el-icon-edit-outline el-tooltip scope.row" aria-describedby="el-tooltip-3922" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_27_column_182  ">
                                        <div class="cell">
                                            服务5219
                                        </div></td>
                                    <td class="el-table_27_column_183  ">
                                        <div class="cell">
                                            7-302-18888-9
                                        </div></td>
                                    <td class="el-table_27_column_184  ">
                                        <div class="cell">
                                            0
                                        </div></td>
                                    <td class="el-table_27_column_185  ">
                                        <div class="cell">
                                            无
                                        </div></td>
                                    <td class="el-table_27_column_186  ">
                                        <div class="cell">
                                            0
                                        </div></td>
                                    <td class="el-table_27_column_187  ">
                                        <div class="cell">
                                            <span>2018-11-06 21:40:36</span>
                                        </div></td>
                                    <td class="el-table_27_column_188  ">
                                        <div class="cell">
                                            <span class="i-relate el-tooltip scope.row" aria-describedby="el-tooltip-3396" tabindex="0" style="margin-right: 10px;"></span>
                                            <span class="goods-operation-icon el-icon-edit-outline el-tooltip scope.row" aria-describedby="el-tooltip-9473" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_27_column_182  ">
                                        <div class="cell">
                                            服务
                                        </div></td>
                                    <td class="el-table_27_column_183  ">
                                        <div class="cell">
                                            7-302-18888-9
                                        </div></td>
                                    <td class="el-table_27_column_184  ">
                                        <div class="cell">
                                            0
                                        </div></td>
                                    <td class="el-table_27_column_185  ">
                                        <div class="cell">
                                            无
                                        </div></td>
                                    <td class="el-table_27_column_186  ">
                                        <div class="cell">
                                            0
                                        </div></td>
                                    <td class="el-table_27_column_187  ">
                                        <div class="cell">
                                            <span>2018-11-06 21:40:34</span>
                                        </div></td>
                                    <td class="el-table_27_column_188  ">
                                        <div class="cell">
                                            <span class="i-relate el-tooltip scope.row" aria-describedby="el-tooltip-8727" tabindex="0" style="margin-right: 10px;"></span>
                                            <span class="goods-operation-icon el-icon-edit-outline el-tooltip scope.row" aria-describedby="el-tooltip-2424" tabindex="0"></span>
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
                                <div style="width: 1241px; height: 549px;"></div>
                            </div>
                            <div class="contract-trigger"></div>
                        </div>
                    </div>
                    <div>
                        <div class="el-pagination" style="text-align: right;">
                            <span class="el-pagination__total">共 390 条</span>
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
                                <li class="number">39</li>
                            </ul>
                            <button type="button" class="btn-next"><i class="el-icon el-icon-arrow-right"></i></button>
                            <span class="el-pagination__jump">前往
          <div class="el-input el-pagination__editor is-in-pagination">
           <!---->
           <input autocomplete="off" type="number" rows="2" max="39" min="1" validateevent="true" class="el-input__inner" />
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
        <div class="el-dialog__wrapper" style="display: none;">
            <div class="el-dialog" style="margin-top: 15vh;">
                <div class="el-dialog__header">
                    <span class="el-dialog__title"></span>
                    <button type="button" aria-label="Close" class="el-dialog__headerbtn"><i class="el-dialog__close el-icon el-icon-close"></i></button>
                </div>
                <!---->
                <div class="el-dialog__footer">
                    <div class="dialog-footer">
                        <button type="button" class="el-button el-button--primary el-button--small">
                            <!---->
                            <!----><span>确 认</span></button>
                    </div>
                </div>
            </div>
        </div>
        <div class="el-dialog__wrapper new-dialog" style="display: none;">
            <div class="el-dialog" style="margin-top: 15vh;">
                <div class="el-dialog__header">
                    <span class="el-dialog__title"></span>
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
    </div>
</div>
<script type="text/javascript" src="/backend/static/js/manifest.c14e77f4d85201197bc4.js"></script>
<script type="text/javascript" src="/backend/static/js/vendor.77db51a60fc55cf48c45.js"></script>
</body>
</html>
