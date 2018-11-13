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
        <div id="container_1" class="container">
            <div class="menu_bar">
                <a href="/index/main" class="router-link-active">首页</a>&nbsp;&gt;&nbsp;
                <a href="/user/index" class="">用户管理</a>&nbsp;&gt;&nbsp;
                <a href="javascript:void(0);">运营用户查询</a>
                <hr />
            </div>
            <div class="page_container weeklist">
                <div class="page_search user_search">
                    <div class="seach_date_picker" style="width: 500px; display: inline-block;">
                        注册时间：
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
                    <div class="seach_date_picker" style="width: 520px; display: inline-block;">
                        最近登录时间：
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
                    <div style="display: inline-block; width: 26px; height: 30px; border-radius: 4px; background-color: rgb(255, 255, 255);">
                        <i slot="suffix" class="el-input__icon el-icon-search"></i>
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
                        </div>
                        <div class="el-table__header-wrapper">
                            <table cellspacing="0" cellpadding="0" border="0" class="el-table__header" style="width: 1238px;">
                                <colgroup>
                                    <col name="el-table_5_column_28" width="200" />
                                    <col name="el-table_5_column_29" width="160" />
                                    <col name="el-table_5_column_30" width="360" />
                                    <col name="el-table_5_column_31" width="200" />
                                    <col name="el-table_5_column_32" width="218" />
                                    <col name="el-table_5_column_33" width="100" />
                                    <col name="gutter" width="0" />
                                </colgroup>
                                <thead class="has-gutter">
                                <tr class="">
                                    <th colspan="1" rowspan="1" class="el-table_5_column_28     is-leaf">
                                        <div class="cell">
                                            用户名
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_5_column_29     is-leaf">
                                        <div class="cell">
                                            手机号码
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_5_column_30     is-leaf">
                                        <div class="cell">
                                            所属机构
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_5_column_31     is-leaf">
                                        <div class="cell">
                                            注册时间
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_5_column_32     is-leaf">
                                        <div class="cell">
                                            最近登录时间
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_5_column_33     is-leaf">
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
                                    <col name="el-table_5_column_28" width="200" />
                                    <col name="el-table_5_column_29" width="160" />
                                    <col name="el-table_5_column_30" width="360" />
                                    <col name="el-table_5_column_31" width="200" />
                                    <col name="el-table_5_column_32" width="218" />
                                    <col name="el-table_5_column_33" width="100" />
                                </colgroup>
                                <tbody>
                                <tr class="el-table__row">
                                    <td class="el-table_5_column_28  ">
                                        <div class="cell">
                                            考虑考虑了
                                        </div></td>
                                    <td class="el-table_5_column_29  ">
                                        <div class="cell">
                                            15361026253
                                        </div></td>
                                    <td class="el-table_5_column_30  ">
                                        <div class="cell">
                                            坂田街道坂田小学
                                        </div></td>
                                    <td class="el-table_5_column_31  ">
                                        <div class="cell">
                                            2018-11-12 20:06:08
                                        </div></td>
                                    <td class="el-table_5_column_32  ">
                                        <div class="cell">
                                            2018-11-12 20:06:11
                                        </div></td>
                                    <td class="el-table_5_column_33  ">
                                        <div class="cell">
                                            <span class="el-icon-view el-tooltip item" aria-describedby="el-tooltip-2490" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_5_column_28  ">
                                        <div class="cell">
                                            金忠
                                        </div></td>
                                    <td class="el-table_5_column_29  ">
                                        <div class="cell">
                                            15083496380
                                        </div></td>
                                    <td class="el-table_5_column_30  ">
                                        <div class="cell">
                                            坂田街道坂田小学
                                        </div></td>
                                    <td class="el-table_5_column_31  ">
                                        <div class="cell">
                                            2018-11-12 17:41:40
                                        </div></td>
                                    <td class="el-table_5_column_32  ">
                                        <div class="cell"></div></td>
                                    <td class="el-table_5_column_33  ">
                                        <div class="cell">
                                            <span class="el-icon-view el-tooltip item" aria-describedby="el-tooltip-2561" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_5_column_28  ">
                                        <div class="cell">
                                            哈啊基本
                                        </div></td>
                                    <td class="el-table_5_column_29  ">
                                        <div class="cell">
                                            13243435444
                                        </div></td>
                                    <td class="el-table_5_column_30  ">
                                        <div class="cell">
                                            深圳市福田区荔园外国语小学
                                        </div></td>
                                    <td class="el-table_5_column_31  ">
                                        <div class="cell">
                                            2018-11-12 11:45:44
                                        </div></td>
                                    <td class="el-table_5_column_32  ">
                                        <div class="cell"></div></td>
                                    <td class="el-table_5_column_33  ">
                                        <div class="cell">
                                            <span class="el-icon-view el-tooltip item" aria-describedby="el-tooltip-9621" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_5_column_28  ">
                                        <div class="cell">
                                            haloyu
                                        </div></td>
                                    <td class="el-table_5_column_29  ">
                                        <div class="cell">
                                            13344233423
                                        </div></td>
                                    <td class="el-table_5_column_30  ">
                                        <div class="cell">
                                            深圳市福田区荔园外国语小学
                                        </div></td>
                                    <td class="el-table_5_column_31  ">
                                        <div class="cell">
                                            2018-11-12 11:44:33
                                        </div></td>
                                    <td class="el-table_5_column_32  ">
                                        <div class="cell"></div></td>
                                    <td class="el-table_5_column_33  ">
                                        <div class="cell">
                                            <span class="el-icon-view el-tooltip item" aria-describedby="el-tooltip-3705" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_5_column_28  ">
                                        <div class="cell">
                                            13712345685
                                        </div></td>
                                    <td class="el-table_5_column_29  ">
                                        <div class="cell">
                                            13712345685
                                        </div></td>
                                    <td class="el-table_5_column_30  ">
                                        <div class="cell">
                                            坂田街道坂田小学
                                        </div></td>
                                    <td class="el-table_5_column_31  ">
                                        <div class="cell">
                                            2018-11-10 20:10:42
                                        </div></td>
                                    <td class="el-table_5_column_32  ">
                                        <div class="cell"></div></td>
                                    <td class="el-table_5_column_33  ">
                                        <div class="cell">
                                            <span class="el-icon-view el-tooltip item" aria-describedby="el-tooltip-4531" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_5_column_28  ">
                                        <div class="cell">
                                            13712345679
                                        </div></td>
                                    <td class="el-table_5_column_29  ">
                                        <div class="cell">
                                            13712345679
                                        </div></td>
                                    <td class="el-table_5_column_30  ">
                                        <div class="cell">
                                            坂田街道坂田小学
                                        </div></td>
                                    <td class="el-table_5_column_31  ">
                                        <div class="cell">
                                            2018-11-10 20:10:42
                                        </div></td>
                                    <td class="el-table_5_column_32  ">
                                        <div class="cell"></div></td>
                                    <td class="el-table_5_column_33  ">
                                        <div class="cell">
                                            <span class="el-icon-view el-tooltip item" aria-describedby="el-tooltip-8937" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_5_column_28  ">
                                        <div class="cell">
                                            13712345680
                                        </div></td>
                                    <td class="el-table_5_column_29  ">
                                        <div class="cell">
                                            13712345680
                                        </div></td>
                                    <td class="el-table_5_column_30  ">
                                        <div class="cell">
                                            坂田街道坂田小学
                                        </div></td>
                                    <td class="el-table_5_column_31  ">
                                        <div class="cell">
                                            2018-11-10 20:10:42
                                        </div></td>
                                    <td class="el-table_5_column_32  ">
                                        <div class="cell"></div></td>
                                    <td class="el-table_5_column_33  ">
                                        <div class="cell">
                                            <span class="el-icon-view el-tooltip item" aria-describedby="el-tooltip-9586" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_5_column_28  ">
                                        <div class="cell">
                                            13712345681
                                        </div></td>
                                    <td class="el-table_5_column_29  ">
                                        <div class="cell">
                                            13712345681
                                        </div></td>
                                    <td class="el-table_5_column_30  ">
                                        <div class="cell">
                                            坂田街道坂田小学
                                        </div></td>
                                    <td class="el-table_5_column_31  ">
                                        <div class="cell">
                                            2018-11-10 20:10:42
                                        </div></td>
                                    <td class="el-table_5_column_32  ">
                                        <div class="cell"></div></td>
                                    <td class="el-table_5_column_33  ">
                                        <div class="cell">
                                            <span class="el-icon-view el-tooltip item" aria-describedby="el-tooltip-7106" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_5_column_28  ">
                                        <div class="cell">
                                            13712345682
                                        </div></td>
                                    <td class="el-table_5_column_29  ">
                                        <div class="cell">
                                            13712345682
                                        </div></td>
                                    <td class="el-table_5_column_30  ">
                                        <div class="cell">
                                            坂田街道坂田小学
                                        </div></td>
                                    <td class="el-table_5_column_31  ">
                                        <div class="cell">
                                            2018-11-10 20:10:42
                                        </div></td>
                                    <td class="el-table_5_column_32  ">
                                        <div class="cell">
                                            2018-11-10 20:17:11
                                        </div></td>
                                    <td class="el-table_5_column_33  ">
                                        <div class="cell">
                                            <span class="el-icon-view el-tooltip item" aria-describedby="el-tooltip-9889" tabindex="0"></span>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_5_column_28  ">
                                        <div class="cell">
                                            13712345683
                                        </div></td>
                                    <td class="el-table_5_column_29  ">
                                        <div class="cell">
                                            13712345683
                                        </div></td>
                                    <td class="el-table_5_column_30  ">
                                        <div class="cell">
                                            坂田街道坂田小学
                                        </div></td>
                                    <td class="el-table_5_column_31  ">
                                        <div class="cell">
                                            2018-11-10 20:10:42
                                        </div></td>
                                    <td class="el-table_5_column_32  ">
                                        <div class="cell"></div></td>
                                    <td class="el-table_5_column_33  ">
                                        <div class="cell">
                                            <span class="el-icon-view el-tooltip item" aria-describedby="el-tooltip-6479" tabindex="0"></span>
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
                                <div style="width: 1241px; height: 512px;"></div>
                            </div>
                            <div class="contract-trigger"></div>
                        </div>
                    </div>
                </div>
                <div class="page_pagination">
                    <div class="el-pagination">
                        <span class="el-pagination__total">共 26525 条</span>
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
                            <li class="number">2653</li>
                        </ul>
                        <button type="button" class="btn-next"><i class="el-icon el-icon-arrow-right"></i></button>
                        <span class="el-pagination__jump">前往
         <div class="el-input el-pagination__editor is-in-pagination">
          <!---->
          <input autocomplete="off" type="number" rows="2" max="2653" min="1" validateevent="true" class="el-input__inner" />
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
                    <span class="el-dialog__title">查看用户</span>
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