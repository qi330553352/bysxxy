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
                    <span class="el-breadcrumb__item" aria-current="page"><span role="link" class="el-breadcrumb__inner">政策文件管理</span><i class="el-breadcrumb__separator el-icon-arrow-right"></i></span>
                </div>
            </div>
            <div class="b-page-container policy-wrapper">
                <div class="container-head clearfix">
                    <div>
                        <div class="left">
                            <label><input type="checkbox" class="container-checkbox" /> <span class="label-span">全选</span></label>
                            <button type="button" class="el-button el-button--default el-button--small" style="margin-right: 5px;">
                                <!---->
                                <!----><span>删除</span></button>
                        </div>
                        <div class="ml5 left">
                            <div id="policy-upload" class="policy-upload">
                                <div tabindex="0" class="el-upload el-upload--text">
                                    <button type="button" class="el-button el-button--default el-button--small">
                                        <!---->
                                        <!----><span>浏览</span></button>
                                    <input type="file" name="file" class="el-upload__input" />
                                </div>
                                <button type="button" class="el-button el-button--default el-button--small">
                                    <!---->
                                    <!----><span>上传</span></button>
                                <ul class="el-upload-list el-upload-list--text"></ul>
                            </div>
                        </div>
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
                        </div>
                        <div class="el-table__header-wrapper">
                            <table cellspacing="0" cellpadding="0" border="0" class="el-table__header" style="width: 1240px;">
                                <colgroup>
                                    <col name="el-table_15_column_94" width="120" />
                                    <col name="el-table_15_column_95" width="520" />
                                    <col name="el-table_15_column_96" width="300" />
                                    <col name="el-table_15_column_97" width="200" />
                                    <col name="el-table_15_column_98" width="100" />
                                    <col name="gutter" width="0" />
                                </colgroup>
                                <thead class="has-gutter">
                                <tr class="">
                                    <th colspan="1" rowspan="1" class="el-table_15_column_94     is-leaf">
                                        <div class="cell">
                                            状态
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_15_column_95     is-leaf">
                                        <div class="cell">
                                            标题
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_15_column_96     is-leaf">
                                        <div class="cell">
                                            完成时间
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_15_column_97     is-leaf">
                                        <div class="cell">
                                            编辑人
                                        </div></th>
                                    <th colspan="1" rowspan="1" class="el-table_15_column_98     is-leaf">
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
                                    <col name="el-table_15_column_94" width="120" />
                                    <col name="el-table_15_column_95" width="520" />
                                    <col name="el-table_15_column_96" width="300" />
                                    <col name="el-table_15_column_97" width="200" />
                                    <col name="el-table_15_column_98" width="100" />
                                </colgroup>
                                <tbody>
                                <tr class="el-table__row">
                                    <td class="el-table_15_column_94  ">
                                        <div class="cell">
                                            <input type="checkbox" class="container-checkbox" value="5be43cc7f8f83808454824c0" />
                                        </div></td>
                                    <td class="el-table_15_column_95  ">
                                        <div class="cell">
                                            test1
                                        </div></td>
                                    <td class="el-table_15_column_96  ">
                                        <div class="cell el-tooltip" style="width: 299px;">
                                            <div>
                                                2018-11-08 21:40:24
                                            </div>
                                        </div></td>
                                    <td class="el-table_15_column_97  ">
                                        <div class="cell el-tooltip" style="width: 199px;">
                                            <div>
                                                admin11
                                            </div>
                                        </div></td>
                                    <td class="el-table_15_column_98  ">
                                        <div class="cell el-tooltip" style="width: 99px;">
                                            <i class="el-icon-view el-tooltip item" aria-describedby="el-tooltip-4424" tabindex="0"></i>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_15_column_94  ">
                                        <div class="cell">
                                            <input type="checkbox" class="container-checkbox" value="5be2eb42f8f83808454824b6" />
                                        </div></td>
                                    <td class="el-table_15_column_95  ">
                                        <div class="cell">
                                            test1
                                        </div></td>
                                    <td class="el-table_15_column_96  ">
                                        <div class="cell el-tooltip" style="width: 299px;">
                                            <div>
                                                2018-11-07 21:40:18
                                            </div>
                                        </div></td>
                                    <td class="el-table_15_column_97  ">
                                        <div class="cell el-tooltip" style="width: 199px;">
                                            <div>
                                                admin11
                                            </div>
                                        </div></td>
                                    <td class="el-table_15_column_98  ">
                                        <div class="cell el-tooltip" style="width: 99px;">
                                            <i class="el-icon-view el-tooltip item" aria-describedby="el-tooltip-781" tabindex="0"></i>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_15_column_94  ">
                                        <div class="cell">
                                            <input type="checkbox" class="container-checkbox" value="5be199c5f8f83808454824aa" />
                                        </div></td>
                                    <td class="el-table_15_column_95  ">
                                        <div class="cell">
                                            test1
                                        </div></td>
                                    <td class="el-table_15_column_96  ">
                                        <div class="cell el-tooltip" style="width: 299px;">
                                            <div>
                                                2018-11-06 21:40:21
                                            </div>
                                        </div></td>
                                    <td class="el-table_15_column_97  ">
                                        <div class="cell el-tooltip" style="width: 199px;">
                                            <div>
                                                admin11
                                            </div>
                                        </div></td>
                                    <td class="el-table_15_column_98  ">
                                        <div class="cell el-tooltip" style="width: 99px;">
                                            <i class="el-icon-view el-tooltip item" aria-describedby="el-tooltip-8869" tabindex="0"></i>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_15_column_94  ">
                                        <div class="cell">
                                            <input type="checkbox" class="container-checkbox" value="5bdc53bbf8f838084fe4e815" />
                                        </div></td>
                                    <td class="el-table_15_column_95  ">
                                        <div class="cell">
                                            test1
                                        </div></td>
                                    <td class="el-table_15_column_96  ">
                                        <div class="cell el-tooltip" style="width: 299px;">
                                            <div>
                                                2018-11-02 21:40:11
                                            </div>
                                        </div></td>
                                    <td class="el-table_15_column_97  ">
                                        <div class="cell el-tooltip" style="width: 199px;">
                                            <div>
                                                admin11
                                            </div>
                                        </div></td>
                                    <td class="el-table_15_column_98  ">
                                        <div class="cell el-tooltip" style="width: 99px;">
                                            <i class="el-icon-view el-tooltip item" aria-describedby="el-tooltip-390" tabindex="0"></i>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_15_column_94  ">
                                        <div class="cell">
                                            <input type="checkbox" class="container-checkbox" value="5bdbc10ef8f838084fe4e80b" />
                                        </div></td>
                                    <td class="el-table_15_column_95  ">
                                        <div class="cell">
                                            test1
                                        </div></td>
                                    <td class="el-table_15_column_96  ">
                                        <div class="cell el-tooltip" style="width: 299px;">
                                            <div>
                                                2018-11-02 11:14:23
                                            </div>
                                        </div></td>
                                    <td class="el-table_15_column_97  ">
                                        <div class="cell el-tooltip" style="width: 199px;">
                                            <div>
                                                admin11
                                            </div>
                                        </div></td>
                                    <td class="el-table_15_column_98  ">
                                        <div class="cell el-tooltip" style="width: 99px;">
                                            <i class="el-icon-view el-tooltip item" aria-describedby="el-tooltip-2844" tabindex="0"></i>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_15_column_94  ">
                                        <div class="cell">
                                            <input type="checkbox" class="container-checkbox" value="5bdbb94df8f838084fe4e801" />
                                        </div></td>
                                    <td class="el-table_15_column_95  ">
                                        <div class="cell">
                                            test1
                                        </div></td>
                                    <td class="el-table_15_column_96  ">
                                        <div class="cell el-tooltip" style="width: 299px;">
                                            <div>
                                                2018-11-02 10:41:18
                                            </div>
                                        </div></td>
                                    <td class="el-table_15_column_97  ">
                                        <div class="cell el-tooltip" style="width: 199px;">
                                            <div>
                                                admin11
                                            </div>
                                        </div></td>
                                    <td class="el-table_15_column_98  ">
                                        <div class="cell el-tooltip" style="width: 99px;">
                                            <i class="el-icon-view el-tooltip item" aria-describedby="el-tooltip-2221" tabindex="0"></i>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_15_column_94  ">
                                        <div class="cell">
                                            <input type="checkbox" class="container-checkbox" value="5bb02c19f8f8380889040339" />
                                        </div></td>
                                    <td class="el-table_15_column_95  ">
                                        <div class="cell">
                                            test1
                                        </div></td>
                                    <td class="el-table_15_column_96  ">
                                        <div class="cell el-tooltip" style="width: 299px;">
                                            <div>
                                                2018-09-30 09:51:22
                                            </div>
                                        </div></td>
                                    <td class="el-table_15_column_97  ">
                                        <div class="cell el-tooltip" style="width: 199px;">
                                            <div>
                                                admin11
                                            </div>
                                        </div></td>
                                    <td class="el-table_15_column_98  ">
                                        <div class="cell el-tooltip" style="width: 99px;">
                                            <i class="el-icon-view el-tooltip item" aria-describedby="el-tooltip-6891" tabindex="0"></i>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_15_column_94  ">
                                        <div class="cell">
                                            <input type="checkbox" class="container-checkbox" value="5ba64617f8f838103965555e" />
                                        </div></td>
                                    <td class="el-table_15_column_95  ">
                                        <div class="cell">
                                            test1
                                        </div></td>
                                    <td class="el-table_15_column_96  ">
                                        <div class="cell el-tooltip" style="width: 299px;">
                                            <div>
                                                2018-09-22 21:40:09
                                            </div>
                                        </div></td>
                                    <td class="el-table_15_column_97  ">
                                        <div class="cell el-tooltip" style="width: 199px;">
                                            <div>
                                                admin11
                                            </div>
                                        </div></td>
                                    <td class="el-table_15_column_98  ">
                                        <div class="cell el-tooltip" style="width: 99px;">
                                            <i class="el-icon-view el-tooltip item" aria-describedby="el-tooltip-7524" tabindex="0"></i>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_15_column_94  ">
                                        <div class="cell">
                                            <input type="checkbox" class="container-checkbox" value="5ba2519bf8f8383d601626cf" />
                                        </div></td>
                                    <td class="el-table_15_column_95  ">
                                        <div class="cell">
                                            test1
                                        </div></td>
                                    <td class="el-table_15_column_96  ">
                                        <div class="cell el-tooltip" style="width: 299px;">
                                            <div>
                                                2018-09-19 21:40:09
                                            </div>
                                        </div></td>
                                    <td class="el-table_15_column_97  ">
                                        <div class="cell el-tooltip" style="width: 199px;">
                                            <div>
                                                admin11
                                            </div>
                                        </div></td>
                                    <td class="el-table_15_column_98  ">
                                        <div class="cell el-tooltip" style="width: 99px;">
                                            <i class="el-icon-view el-tooltip item" aria-describedby="el-tooltip-1944" tabindex="0"></i>
                                        </div></td>
                                </tr>
                                <tr class="el-table__row">
                                    <td class="el-table_15_column_94  ">
                                        <div class="cell">
                                            <input type="checkbox" class="container-checkbox" value="5ba204e6f8f8383d60151638" />
                                        </div></td>
                                    <td class="el-table_15_column_95  ">
                                        <div class="cell">
                                            test1
                                        </div></td>
                                    <td class="el-table_15_column_96  ">
                                        <div class="cell el-tooltip" style="width: 299px;">
                                            <div>
                                                2018-09-19 16:12:51
                                            </div>
                                        </div></td>
                                    <td class="el-table_15_column_97  ">
                                        <div class="cell el-tooltip" style="width: 199px;">
                                            <div>
                                                admin11
                                            </div>
                                        </div></td>
                                    <td class="el-table_15_column_98  ">
                                        <div class="cell el-tooltip" style="width: 99px;">
                                            <i class="el-icon-view el-tooltip item" aria-describedby="el-tooltip-6123" tabindex="0"></i>
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
                    <div class="new-pagination el-pagination" style="text-align: right;">
                        <span class="el-pagination__total">共 81 条</span>
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
        <div class="el-dialog__wrapper preview-dialog" style="display: none;">
            <div class="el-dialog el-dialog--center" style="margin-top: 15vh;">
                <div class="el-dialog__header">
                    <span class="el-dialog__title">预览政策文件</span>
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