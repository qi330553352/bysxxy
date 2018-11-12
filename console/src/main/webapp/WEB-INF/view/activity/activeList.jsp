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
</head>
<body>
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
                                公告测试9700
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
                    <span class="el-breadcrumb__item"><a href="/index/mainUI"><span role="link" class="el-breadcrumb__inner">首页</span></a><i class="el-breadcrumb__separator el-icon-arrow-right"></i></span>
                    <span class="el-breadcrumb__item"><span role="link" class="el-breadcrumb__inner">活动管理</span><i class="el-breadcrumb__separator el-icon-arrow-right"></i></span>
                    <span class="el-breadcrumb__item" aria-current="page"><span role="link" class="el-breadcrumb__inner">活动运行管理</span><i class="el-breadcrumb__separator el-icon-arrow-right"></i></span>
                </div>
            </div>
            <div class="b-page-container">
                <div class="container-head clearfix">
                    <div class="left">
                        <label><input type="checkbox" class="container-checkbox" /> <span class="label-span">全选</span></label>
                        <span style="display: none;">_</span>
                        <button type="button" class="el-button el-button--default el-button--small">
                            <!---->
                            <!----><span>停止</span></button>
                        <button type="button" class="el-button el-button--primary el-button--small">
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
                <div class="table-wrap">
                    <table class="container-talbe">
                        <thead>
                        <tr>
                            <th width="10%" colspan="2">状态</th>
                            <th width="20%">活动名称</th>
                            <th width="10%">运行节点</th>
                            <th width="20%">开始时间</th>
                            <th width="20%">结束时间</th>
                            <th width="10%">修改人</th>
                            <th width="10%">操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td width="3%"><input type="checkbox" class="container-checkbox" value="20181108214019587881" /></td>
                            <td width="5%"></td>
                            <td>自动化测试</td>
                            <td></td>
                            <td>2018-08-16</td>
                            <td>2018-09-17</td>
                            <td>admin11</td>
                            <td><i class="el-icon-edit"></i> <i class="el-icon-d-arrow-right"></i></td>
                        </tr>
                        <tr>
                            <td width="3%"><input type="checkbox" class="container-checkbox" value="20181107214013871595" /></td>
                            <td width="5%"></td>
                            <td>自动化测试</td>
                            <td></td>
                            <td>2018-08-16</td>
                            <td>2018-09-17</td>
                            <td>admin11</td>
                            <td><i class="el-icon-edit"></i> <i class="el-icon-d-arrow-right"></i></td>
                        </tr>
                        <tr>
                            <td width="3%"><input type="checkbox" class="container-checkbox" value="20181106214010061830" /></td>
                            <td width="5%"></td>
                            <td>自动化测试</td>
                            <td></td>
                            <td>2018-08-16</td>
                            <td>2018-09-17</td>
                            <td>admin11</td>
                            <td><i class="el-icon-edit"></i> <i class="el-icon-d-arrow-right"></i></td>
                        </tr>
                        <tr>
                            <td width="3%"><input type="checkbox" class="container-checkbox" value="20181102214006803269" /></td>
                            <td width="5%"></td>
                            <td>自动化测试</td>
                            <td></td>
                            <td>2018-08-16</td>
                            <td>2018-09-17</td>
                            <td>admin11</td>
                            <td><i class="el-icon-edit"></i> <i class="el-icon-d-arrow-right"></i></td>
                        </tr>
                        <tr>
                            <td width="3%"><input type="checkbox" class="container-checkbox" value="20181102111417543025" /></td>
                            <td width="5%"></td>
                            <td>自动化测试</td>
                            <td></td>
                            <td>2018-08-16</td>
                            <td>2018-09-17</td>
                            <td>admin11</td>
                            <td><i class="el-icon-edit"></i> <i class="el-icon-d-arrow-right"></i></td>
                        </tr>
                        <tr>
                            <td width="3%"><input type="checkbox" class="container-checkbox" value="20181102104109914651" /></td>
                            <td width="5%"></td>
                            <td>自动化测试</td>
                            <td></td>
                            <td>2018-08-16</td>
                            <td>2018-09-17</td>
                            <td>admin11</td>
                            <td><i class="el-icon-edit"></i> <i class="el-icon-d-arrow-right"></i></td>
                        </tr>
                        <tr>
                            <td width="3%"><input type="checkbox" class="container-checkbox" value="20181101162507215935" /></td>
                            <td width="5%"></td>
                            <td>自动化测试</td>
                            <td></td>
                            <td>2018-08-16</td>
                            <td>2018-09-17</td>
                            <td>admin11</td>
                            <td><i class="el-icon-edit"></i> <i class="el-icon-d-arrow-right"></i></td>
                        </tr>
                        <tr>
                            <td width="3%"><input type="checkbox" class="container-checkbox" value="20181022153303280273" /></td>
                            <td width="5%"></td>
                            <td>lqq活动3</td>
                            <td></td>
                            <td>2018-10-22</td>
                            <td>2018-10-24</td>
                            <td>admin11</td>
                            <td><i class="el-icon-edit"></i> <i class="el-icon-d-arrow-right"></i></td>
                        </tr>
                        <tr>
                            <td width="3%"><input type="checkbox" class="container-checkbox" value="20181010180851315379" /></td>
                            <td width="5%"></td>
                            <td>lqq活动测试2</td>
                            <td></td>
                            <td>2018-10-10</td>
                            <td>2018-10-12</td>
                            <td>admin11</td>
                            <td><i class="el-icon-edit"></i> <i class="el-icon-d-arrow-right"></i></td>
                        </tr>
                        <tr>
                            <td width="3%"><input type="checkbox" class="container-checkbox" value="20181010175951859094" /></td>
                            <td width="5%"></td>
                            <td>lqq活动测试1</td>
                            <td></td>
                            <td>2018-10-10</td>
                            <td>2018-10-12</td>
                            <td>admin11</td>
                            <td><i class="el-icon-edit"></i> <i class="el-icon-d-arrow-right"></i></td>
                        </tr>
                        </tbody>
                    </table>
                    <!---->
                    <div class="new-pagination el-pagination" style="text-align: right;">
                        <span class="el-pagination__total">共 171 条</span>
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
                            <li class="number">18</li>
                        </ul>
                        <button type="button" class="btn-next"><i class="el-icon el-icon-arrow-right"></i></button>
        <span class="el-pagination__jump">前往
         <div class="el-input el-pagination__editor is-in-pagination">
             <!---->
             <input autocomplete="off" type="number" rows="2" max="18" min="1" validateevent="true" class="el-input__inner" />
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
            <div class="el-dialog" style="margin-top: 15vh;">
                <div class="el-dialog__header">
                    <span class="el-dialog__title">新建活动</span>
                    <button type="button" aria-label="Close" class="el-dialog__headerbtn"><i class="el-dialog__close el-icon el-icon-close"></i></button>
                </div>
                <!---->
                <div class="el-dialog__footer">
                    <div class="dialog-footer">
                        <button type="button" class="el-button el-button--default el-button--small">
                            <!---->
                            <!----><span>取 消</span></button>
                        <button type="button" class="el-button el-button--primary el-button--small">
                            <!---->
                            <!----><span>新 建</span></button>
                    </div>
                </div>
            </div>
        </div>
        <div class="el-dialog__wrapper" style="display: none;">
            <div class="el-dialog" style="margin-top: 15vh;">
                <div class="el-dialog__header">
                    <span class="el-dialog__title">新建活动</span>
                    <button type="button" aria-label="Close" class="el-dialog__headerbtn"><i class="el-dialog__close el-icon el-icon-close"></i></button>
                </div>
                <!---->
                <div class="el-dialog__footer">
                    <div class="dialog-footer">
                        <button type="button" class="el-button el-button--primary el-button--small">
                            <!---->
                            <!----><span>发 布</span></button>
                    </div>
                </div>
            </div>
        </div>
        <div class="el-dialog__wrapper" style="display: none;">
            <div class="el-dialog" style="margin-top: 15vh;">
                <div class="el-dialog__header">
                    <span class="el-dialog__title">地区选择</span>
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
        <div class="el-dialog__wrapper" style="display: none;">
            <div class="el-dialog" style="margin-top: 15vh;">
                <div class="el-dialog__header">
                    <span class="el-dialog__title">用户组选择</span>
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
    </div>
</div>
<script type="text/javascript" src="/backend/static/js/manifest.c14e77f4d85201197bc4.js"></script>
<script type="text/javascript" src="/backend/static/js/vendor.77db51a60fc55cf48c45.js"></script>
</body>
</html>
