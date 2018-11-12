<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>书香校园B端</title>
    <script src="//cdn.bootcss.com/babel-polyfill/6.26.0/polyfill.min.js"></script>
    <link href="//cdn.bootcss.com/quill/1.3.6/quill.snow.min.css" rel="stylesheet">
    <link href="//cdn.bootcss.com/quill/1.3.6/quill.bubble.min.css" rel="stylesheet">
    <script src="//cdn.bootcss.com/vue/2.5.2/vue.min.js"></script>
    <script src="//cdn.bootcss.com/vuex/3.0.1/vuex.min.js"></script>
    <script src="//cdn.bootcss.com/axios/0.18.0/axios.min.js"></script>
    <script src="//cdn.bootcss.com/moment.js/2.22.1/moment.min.js"></script>
    <link href="//cdn.bootcss.com/element-ui/2.2.1/theme-chalk/index.css" rel="stylesheet">
    <script src="//cdn.bootcss.com/element-ui/2.2.1/index.js"></script>
    <script src="//cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <link href="/backend/static/css/app.6aebe42b42dca43bd6930f565ab3a5af.css" rel="stylesheet">
</head>

<body class="">
<div id="app">
    <div class="wrapper bg">
        <header id="header">
            <div class="hd">
                <div class="logo">
                    <a href="#/" class="router-link-exact-active router-link-active"> <img src="/backend/static/img/logo.530c385.png" /> </a>
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
                            <img src="/backend/static/img/user.5daf539.png" alt="用户头像" />
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
            <div class="item_box">
                <a href="/activity/index" class="">
                    <div class="item col_orange">
                        <h1>活动管理</h1>
                        <div class="mid">
                            <span class="mid_icon"></span>
                            <div class="mid_list fl">
                                <div class="list mgb20">
                                    <span>17</span>
                                    <p>当前正在运行的活动数</p>
                                </div>
                                <div class="list">
                                    <span>170</span>
                                    <p>当前活动总数</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                <div class="item col_purple">
                    <h1>填答卷管理</h1>
                    <div class="mid">
                        <span class="mid_icon"></span>
                        <div class="mid_list fl">
                            <div class="list mgb20">
                                <span>3</span>
                                <p>当前正在启用的答卷数</p>
                            </div>
                            <div class="list">
                                <span>10</span>
                                <p>填答卷总数</p>
                            </div>
                        </div>
                    </div>
                    <a href="#/exam" class=""></a>
                </div>
                <div class="item col_yellow">
                    <h1>机构管理</h1>
                    <div class="mid">
                        <span class="mid_icon"></span>
                        <div class="mid_list fl">
                            <div class="list mgb20">
                                <span>0</span>
                                <p>当前需审批的机构数</p>
                            </div>
                            <div class="list">
                                <span>39617</span>
                                <p>机构总数</p>
                            </div>
                        </div>
                    </div>
                    <a href="#"></a>
                    <a href="#/orgIndex" class=""></a>
                </div>
                <div class="item col_green">
                    <h1>用户管理</h1>
                    <div class="mid">
                        <span class="mid_icon"></span>
                        <div class="mid_list fl">
                            <div class="list mgb20">
                                <span>3</span>
                                <p>当前需审批的用户数</p>
                            </div>
                            <div class="list">
                                <span>26506</span>
                                <p>当前注册的用户总数</p>
                            </div>
                        </div>
                    </div>
                    <a href="#/user" class=""></a>
                </div>
                <div class="item col_blue">
                    <h1>信息管理</h1>
                    <div class="mid">
                        <span class="mid_icon"></span>
                        <div class="mid_list fl">
                            <div class="list mgb20">
                                <span>0</span>
                                <p>当前需审批的信息数</p>
                            </div>
                            <div class="list">
                                <span>26471</span>
                                <p>信息总数</p>
                            </div>
                        </div>
                    </div>
                    <a href="#/info" class=""></a>
                </div>
                <div class="item col_pink">
                    <h1>数据统计管理</h1>
                    <div class="mid">
                        <span class="mid_icon"></span>
                        <div class="mid_list fl">
                            <div class="list mgb20">
                                <span>3</span>
                                <p>当前需审批的数据数</p>
                            </div>
                            <div class="list">
                                <span>10</span>
                                <p>数据统计总数</p>
                            </div>
                        </div>
                    </div>
                    <a href="#"></a>
                    <a href="#/unopened" class=""></a>
                </div>
                <div class="item col_gray">
                    <h1>系统管理</h1>
                    <div class="mid">
                        <span class="mid_icon"></span>
                        <div class="mid_list fl">
                            <div class="list mgb20">
                                <span>19</span>
                                <p>当前需审批的系统信息数</p>
                            </div>
                            <div class="list">
                                <span>60</span>
                                <p>系统信息总数</p>
                            </div>
                        </div>
                    </div>
                    <a href="#"></a>
                    <a href="#/systemIndex" class=""></a>
                </div>
                <div class="item col_lightgreen">
                    <h1>服务管理</h1>
                    <div class="mid">
                        <span class="mid_icon"></span>
                        <div class="mid_list fl">
                            <div class="list mgb20">
                                <span>22</span>
                                <p>服务个数</p>
                            </div>
                            <div class="list">
                                <span>39</span>
                                <p>可控制权限个数</p>
                            </div>
                        </div>
                    </div>
                    <a href="#"></a>
                    <a href="#/apilist" class=""></a>
                </div>
                <div class="item col_lightgreen">
                    <h1>商品管理</h1>
                    <div class="mid">
                        <span class="mid_icon"></span>
                        <div class="mid_list fl">
                            <div class="list mgb20">
                                <span>0</span>
                                <p>已服务商品数</p>
                            </div>
                            <div class="list">
                                <span>00</span>
                                <p>总商品数</p>
                            </div>
                        </div>
                    </div>
                    <a href="#"></a>
                    <a href="#/products" class=""></a>
                </div>
                <div class="item col_lightgreen">
                    <h1>订单管理</h1>
                    <div class="mid">
                        <span class="mid_icon"></span>
                        <div class="mid_list fl">
                            <div class="list mgb20">
                                <span></span>
                                <p>订单总数</p>
                            </div>
                            <div class="list">
                                <span></span>
                                <p>同步订单数</p>
                            </div>
                        </div>
                    </div>
                    <a href="#"></a>
                    <a href="#/orderList" class=""></a>
                </div>
                <div class="item col_lightgreen">
                    <h1>图书管理</h1>
                    <div class="mid">
                        <span class="mid_icon"></span>
                        <div class="mid_list fl">
                            <div class="list mgb20">
                                <span>387</span>
                                <p>图书总数</p>
                            </div>
                            <div class="list">
                                <span>457</span>
                                <p>有效书单总数</p>
                            </div>
                        </div>
                    </div>
                    <a href="#"></a>
                    <a href="#/bookPanel" class=""></a>
                </div>
                <div class="item col_lightgreen">
                    <h1>测评管理</h1>
                    <div class="mid">
                        <span class="mid_icon"></span>
                        <div class="mid_list fl">
                            <div class="list mgb20">
                                <span>91</span>
                                <p>组卷规则数量</p>
                            </div>
                            <div class="list">
                                <span>50</span>
                                <p>评价规则数量</p>
                            </div>
                        </div>
                    </div>
                    <a href="#"></a>
                    <a href="#/evaluationPanel" class=""></a>
                </div>
                <div class="item col_purple">
                    <h1>试题管理</h1>
                    <div class="mid">
                        <span class="mid_icon"></span>
                        <div class="mid_list fl">
                            <div class="list mgb20">
                                <span>0</span>
                                <p>试题数量</p>
                            </div>
                            <div class="list">
                                <span>0</span>
                                <p>标签数量</p>
                            </div>
                        </div>
                    </div>
                    <a href="#/examPaperPanel" class=""></a>
                </div>
                <div class="item col_lightgreen">
                    <h1>第三方应用管理</h1>
                    <div class="mid">
                        <span class="mid_icon"></span>
                        <div class="mid_list fl">
                            <div class="list mgb20">
                                <span>0</span>
                                <p>应用数</p>
                            </div>
                            <div class="list">
                                <span>00</span>
                                <p>接口被调用总数</p>
                            </div>
                        </div>
                    </div>
                    <a href="#"></a>
                    <a href="#/thirdparty" class=""></a>
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