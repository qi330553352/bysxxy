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
        <div class="container mb30 ">
            <div class="b-page-breadcrumb-wrap">
                <div aria-label="Breadcrumb" role="navigation" class="el-breadcrumb">
                    <span class="el-breadcrumb__item"><a href="../index/main" class="el-breadcrumb__inner">首页</a><i class="el-breadcrumb__separator el-icon-arrow-right"></i></span>
                    <span class="el-breadcrumb__item" aria-current="page"><span role="link" class="el-breadcrumb__inner">活动管理</span><i class="el-breadcrumb__separator el-icon-arrow-right"></i></span>
                </div>
            </div>
            <div class="b-page-container">
                <div class="act_item_box">
                    <div class="act_item pos_rl fl clearfix">
                        <h1>运行管理</h1>
                        <div class="act_list">
                            <div class="act_subitem">
                                <div class="act_txt fl">
                                    <h2>自动化测试</h2>
                                    <p>：<span></span></p>
                                    <p>参加比：<span>%</span></p>
                                    <p class="mgb0">阶段剩余时间：<span>天</span></p>
                                </div>
                                <div class="fr subitem_btns">
                                    <button>暂停</button>
                                    <button class="white_btn">结束</button>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="act_subitem">
                                <div class="act_txt fl">
                                    <h2>自动化测试</h2>
                                    <p>：<span></span></p>
                                    <p>参加比：<span>%</span></p>
                                    <p class="mgb0">阶段剩余时间：<span>天</span></p>
                                </div>
                                <div class="fr subitem_btns">
                                    <button>暂停</button>
                                    <button class="white_btn">结束</button>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="act_subitem">
                                <div class="act_txt fl">
                                    <h2>自动化测试</h2>
                                    <p>：<span></span></p>
                                    <p>参加比：<span>%</span></p>
                                    <p class="mgb0">阶段剩余时间：<span>天</span></p>
                                </div>
                                <div class="fr subitem_btns">
                                    <button>暂停</button>
                                    <button class="white_btn">结束</button>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="act_subitem">
                                <div class="act_txt fl">
                                    <h2>自动化测试</h2>
                                    <p>：<span></span></p>
                                    <p>参加比：<span>%</span></p>
                                    <p class="mgb0">阶段剩余时间：<span>天</span></p>
                                </div>
                                <div class="fr subitem_btns">
                                    <button>暂停</button>
                                    <button class="white_btn">结束</button>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="act_subitem">
                                <div class="act_txt fl">
                                    <h2>自动化测试</h2>
                                    <p>：<span></span></p>
                                    <p>参加比：<span>%</span></p>
                                    <p class="mgb0">阶段剩余时间：<span>天</span></p>
                                </div>
                                <div class="fr subitem_btns">
                                    <button>暂停</button>
                                    <button class="white_btn">结束</button>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <a href="#" class=""></a>
                        <a href="activeList" class="more fr">链接</a>
                    </div>
                    <div class="act_item pos_rl fr">
                        <h1>模板管理</h1>
                        <div class="act_list">
                            <div class="act_subitem">
                                <div class="act_txt fl">
                                    <h2>接口自动化测试新建模板134</h2>
                                    <p>报名阶段：<span>41</span></p>
                                    <p>报名比：<span>1%</span></p>
                                    <p class="mgb0">阶段剩余时间：<span>68天</span></p>
                                </div>
                                <div class="fr subitem_btns">
                                    <button>新建活动</button>
                                    <button class="white_btn">修改</button>
                                    <button class="white_btn">取消置顶</button>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="act_subitem">
                                <div class="act_txt fl">
                                    <h2>接口自动化测试新建模板822</h2>
                                    <p>报名阶段：<span>76</span></p>
                                    <p>报名比：<span>47%</span></p>
                                    <p class="mgb0">阶段剩余时间：<span>27天</span></p>
                                </div>
                                <div class="fr subitem_btns">
                                    <button>新建活动</button>
                                    <button class="white_btn">修改</button>
                                    <button class="white_btn">取消置顶</button>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="act_subitem">
                                <div class="act_txt fl">
                                    <h2>接口自动化测试新建模板643</h2>
                                    <p>报名阶段：<span>57</span></p>
                                    <p>报名比：<span>52%</span></p>
                                    <p class="mgb0">阶段剩余时间：<span>4天</span></p>
                                </div>
                                <div class="fr subitem_btns">
                                    <button>新建活动</button>
                                    <button class="white_btn">修改</button>
                                    <button class="white_btn">取消置顶</button>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="act_subitem">
                                <div class="act_txt fl">
                                    <h2>接口自动化测试新建模板400</h2>
                                    <p>报名阶段：<span>67</span></p>
                                    <p>报名比：<span>45%</span></p>
                                    <p class="mgb0">阶段剩余时间：<span>100天</span></p>
                                </div>
                                <div class="fr subitem_btns">
                                    <button>新建活动</button>
                                    <button class="white_btn">修改</button>
                                    <button class="white_btn">取消置顶</button>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="act_subitem">
                                <div class="act_txt fl">
                                    <h2>lqq活动模板测试1</h2>
                                    <p>报名阶段：<span>87</span></p>
                                    <p>报名比：<span>49%</span></p>
                                    <p class="mgb0">阶段剩余时间：<span>32天</span></p>
                                </div>
                                <div class="fr subitem_btns">
                                    <button>新建活动</button>
                                    <button class="white_btn">修改</button>
                                    <button class="white_btn">取消置顶</button>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <a href="#" class=""></a>
                        <a href="actplList" class="more fr">链接</a>
                        <div class="clearfix"></div>
                    </div>
                    <div class="clearfix"></div>
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
