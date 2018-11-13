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
                <a href="#/" class="router-link-active">首页</a>&nbsp;&gt;&nbsp;
                <a href="#/thirdparty" class="">第三方应用管理</a>&nbsp;&gt;&nbsp;
                <a href="javascript:void(0);">调用管理</a>
                <hr />
            </div>
            <div class="page_container">
                <div class="sx_tab " style="margin-bottom: 10px;">
                    <a href="#/openapilist" class="router-link-exact-active router-link-active">
                        <div class="sx_tab_item active">
                            接口视角
                        </div></a>
                    <a href="#/applicationapilist" class="">
                        <div class="sx_tab_item">
                            应用视角
                        </div></a>
                </div>
                <div class="page_search">
                    <div class="el-col el-col-5">
                        <div class="check_all_item dib" style="top: 0px; margin-right: 10px;">
                            <input type="checkbox" class="check_box_all" />
                            <span>全选</span>
                        </div>
                        <div class="dib">
                            <button class="sx_btn_orange">删除接口</button>
                            <button class="sx_btn_orange ml5">新建接口</button>
                        </div>
                    </div>
                    <div class="el-col el-col-6">
                        <div class="title_search el-input el-input--suffix">
                            <!---->
                            <input autocomplete="off" placeholder="请输入接口名称进行搜索" type="text" rows="2" validateevent="true" class="el-input__inner" />
                            <!---->
                            <span class="el-input__suffix"><span class="el-input__suffix-inner"><i class="el-input__icon el-icon-search"></i>
                                <!----></span>
                                <!----></span>
                            <!---->
                        </div>
                    </div>
                </div>
                <div class="page_content">
                    <div class="el-table el-table--fit el-table--border" style="width: 100%;">
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
                                    <col name="el-table_31_column_216" width="50" />
                                    <col name="el-table_31_column_217" width="200" />
                                    <col name="el-table_31_column_218" width="520" />
                                    <col name="el-table_31_column_219" width="120" />
                                    <col name="el-table_31_column_220" width="100" />
                                    <col name="el-table_31_column_221" width="240" />
                                    <col name="gutter" width="0" />
                                </colgroup>
                                <thead class="has-gutter">
                                <tr class="">
                                    <th colspan="1" rowspan="1" class="el-table_31_column_216     is-leaf">
                                        <div class="cell"></div></th>
                                    <th colspan="1" rowspan="1" class="el-table_31_column_217     is-leaf">
                                        <div class="cell">
                                            接口名称
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_31_column_218     is-leaf">
                                        <div class="cell">
                                            URL
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_31_column_219     is-leaf">
                                        <div class="cell">
                                            请求方法
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_31_column_220     is-leaf">
                                        <div class="cell">
                                            状态
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_31_column_221     is-hidden is-leaf">
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
                                    <col name="el-table_31_column_216" width="50" />
                                    <col name="el-table_31_column_217" width="200" />
                                    <col name="el-table_31_column_218" width="520" />
                                    <col name="el-table_31_column_219" width="120" />
                                    <col name="el-table_31_column_220" width="100" />
                                    <col name="el-table_31_column_221" width="240" />
                                </colgroup>
                                <tbody>
                                <!---->
                                </tbody>
                            </table>
                            <div class="el-table__empty-block" style="width: 1230px;">
                                <span class="el-table__empty-text">暂无数据</span>
                            </div>
                            <!---->
                        </div>
                        <!---->
                        <!---->
                        <div class="el-table__fixed-right" style="width: 240px; height: 368px;">
                            <div class="el-table__fixed-header-wrapper">
                                <table cellspacing="0" cellpadding="0" border="0" class="el-table__header" style="width: 240px;">
                                    <colgroup>
                                        <col name="el-table_31_column_216" width="50" />
                                        <col name="el-table_31_column_217" width="200" />
                                        <col name="el-table_31_column_218" width="520" />
                                        <col name="el-table_31_column_219" width="120" />
                                        <col name="el-table_31_column_220" width="100" />
                                        <col name="el-table_31_column_221" width="240" />
                                    </colgroup>
                                    <thead class="">
                                    <tr class="">
                                        <th colspan="1" rowspan="1" class="el-table_31_column_216     is-hidden is-leaf">
                                            <div class="cell"></div></th>
                                        <th colspan="1" rowspan="1" class="el-table_31_column_217     is-hidden is-leaf">
                                            <div class="cell">
                                                接口名称
                                            </div></th>
                                        <th colspan="1" rowspan="1" class="el-table_31_column_218     is-hidden is-leaf">
                                            <div class="cell">
                                                URL
                                            </div></th>
                                        <th colspan="1" rowspan="1" class="el-table_31_column_219     is-hidden is-leaf">
                                            <div class="cell">
                                                请求方法
                                            </div></th>
                                        <th colspan="1" rowspan="1" class="el-table_31_column_220     is-hidden is-leaf">
                                            <div class="cell">
                                                状态
                                            </div></th>
                                        <th colspan="1" rowspan="1" class="el-table_31_column_221     is-leaf">
                                            <div class="cell">
                                                操作
                                            </div></th>
                                    </tr>
                                    </thead>
                                </table>
                            </div>
                            <div class="el-table__fixed-body-wrapper" style="top: 48px;">
                                <table cellspacing="0" cellpadding="0" border="0" class="el-table__body" style="width: 240px;">
                                    <colgroup>
                                        <col name="el-table_31_column_216" width="50" />
                                        <col name="el-table_31_column_217" width="200" />
                                        <col name="el-table_31_column_218" width="520" />
                                        <col name="el-table_31_column_219" width="120" />
                                        <col name="el-table_31_column_220" width="100" />
                                        <col name="el-table_31_column_221" width="240" />
                                    </colgroup>
                                    <tbody>
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
                                <div style="width: 1240px; height: 369px;"></div>
                            </div>
                            <div class="contract-trigger"></div>
                        </div>
                    </div>
                </div>
                <div class="page_pagination">
                    <div class="el-pagination">
                        <span class="el-pagination__total">共 0 条</span>
                        <button type="button" class="btn-prev disabled"><i class="el-icon el-icon-arrow-left"></i></button>
                        <ul class="el-pager">
                            <!---->
                            <!---->
                            <!---->
                            <!---->
                        </ul>
                        <button type="button" class="btn-next disabled"><i class="el-icon el-icon-arrow-right"></i></button>
                        <span class="el-pagination__jump">前往
         <div class="el-input el-pagination__editor is-in-pagination">
          <!---->
          <input autocomplete="off" type="number" rows="2" max="0" min="1" validateevent="true" class="el-input__inner" />
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
            <div class="el-dialog" style="margin-top: 15vh;">
                <div class="el-dialog__header">
                    <span class="el-dialog__title">新建接口</span>
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
        <div class="el-dialog__wrapper" style="display: none;">
            <div class="el-dialog" style="width: 40%; margin-top: 15vh;">
                <div class="el-dialog__header">
                    <span class="el-dialog__title">服务详情</span>
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
