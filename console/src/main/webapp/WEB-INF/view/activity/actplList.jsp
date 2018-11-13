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
                    <span class="el-breadcrumb__item"><a href="../index/main" class="el-breadcrumb__inner">首页</a><i class="el-breadcrumb__separator el-icon-arrow-right"></i></span>
                    <span class="el-breadcrumb__item"><a href="/activity/index" class="el-breadcrumb__inner">活动管理</a><i class="el-breadcrumb__separator el-icon-arrow-right"></i></span>
                    <span class="el-breadcrumb__item" aria-current="page"><span role="link" class="el-breadcrumb__inner">活动模板管理</span><i class="el-breadcrumb__separator el-icon-arrow-right"></i></span>
                </div>
            </div>
            <div class="b-page-container">
                <div class="container-head clearfix">
                    <div class="left">
                        <label><input type="checkbox" class="container-checkbox" /> <span class="label-span">全选</span></label>
                        <button type="button" class="el-button el-button--default el-button--small">
                            <!---->
                            <!----><span>删除</span></button>
                        <a href="#/actplEdit" class=""><button type="button" class="el-button el-button--primary el-button--small">
                            <!---->
                            <!----><span>添加模板</span></button></a>
                        <a href="#/nodeList" class=""><button type="button" class="el-button el-button--primary el-button--small">
                            <!---->
                            <!----><span>节点设计管理</span></button></a>
                        <button disabled="disabled" type="button" class="el-button el-button--info el-button--small is-disabled">
                            <!---->
                            <!----><span>上报文件模板管理</span></button>
                    </div>
                    <div class="right">
                        <div class="el-input el-input-group el-input-group--append">
                            <!---->
                            <input autocomplete="off" placeholder="请输入模板名称" type="text" rows="2" validateevent="true" class="el-input__inner" />
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
                            <th width="20%">模板名称</th>
                            <th width="20%">最后修改时间</th>
                            <th width="20%">修改人</th>
                            <th width="20%">操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td width="3%"><input type="checkbox" class="container-checkbox" value="52B8C787BD3045928F97BDB1BE860CD4" /></td>
                            <td width="5%">设计中</td>
                            <td>接口自动化测试新建模板134</td>
                            <td>2018-11-07</td>
                            <td>admin11</td>
                            <td><i class="el-icon-edit set-icon"></i></td>
                        </tr>
                        <tr>
                            <td width="3%"><input type="checkbox" class="container-checkbox" value="FC1A8EAE566E4480A3D7A8425D2DA5CC" /></td>
                            <td width="5%">设计中</td>
                            <td>接口自动化测试新建模板822</td>
                            <td>2018-11-06</td>
                            <td>admin11</td>
                            <td><i class="el-icon-edit set-icon"></i></td>
                        </tr>
                        <tr>
                            <td width="3%"><input type="checkbox" class="container-checkbox" value="576EB3502C06403BAA73AF590E7EBD6A" /></td>
                            <td width="5%">设计中</td>
                            <td>接口自动化测试新建模板643</td>
                            <td>2018-11-02</td>
                            <td>admin11</td>
                            <td><i class="el-icon-edit set-icon"></i></td>
                        </tr>
                        <tr>
                            <td width="3%"><input type="checkbox" class="container-checkbox" value="AF88F42E2A814CB5BA09016AC5044274" /></td>
                            <td width="5%">设计中</td>
                            <td>接口自动化测试新建模板400</td>
                            <td>2018-11-01</td>
                            <td>admin11</td>
                            <td><i class="el-icon-edit set-icon"></i></td>
                        </tr>
                        <tr>
                            <td width="3%"><input type="checkbox" class="container-checkbox" value="43F45C4D827742F79BA05BB591FD3234" /></td>
                            <td width="5%">设计中</td>
                            <td>lqq活动模板测试1</td>
                            <td>2018-10-10</td>
                            <td>admin11</td>
                            <td><i class="el-icon-edit set-icon"></i></td>
                        </tr>
                        <tr>
                            <td width="3%"><input type="checkbox" class="container-checkbox" value="DF0FFEED0FBE4F6891027B84B97DD06B" /></td>
                            <td width="5%">设计中</td>
                            <td>10.8实例模板</td>
                            <td>2018-10-08</td>
                            <td>admin11</td>
                            <td><i class="el-icon-edit set-icon"></i></td>
                        </tr>
                        <tr>
                            <td width="3%"><input type="checkbox" class="container-checkbox" value="957EC5537E6049CFA3C7EEC5D01C4298" /></td>
                            <td width="5%">设计中</td>
                            <td>9.30活动模板</td>
                            <td>2018-09-30</td>
                            <td>admin11</td>
                            <td><i class="el-icon-edit set-icon"></i></td>
                        </tr>
                        <tr>
                            <td width="3%"><input type="checkbox" class="container-checkbox" value="94E6870649CA4FB0846630EF17DAFA0D" /></td>
                            <td width="5%">设计中</td>
                            <td>接口自动化测试新建模板741</td>
                            <td>2018-09-28</td>
                            <td>admin11</td>
                            <td><i class="el-icon-edit set-icon"></i></td>
                        </tr>
                        <tr>
                            <td width="3%"><input type="checkbox" class="container-checkbox" value="3BA0AE9CEB2F48CAB2E87361EFEFE8E4" /></td>
                            <td width="5%">设计中</td>
                            <td>国庆活动</td>
                            <td>2018-09-28</td>
                            <td>admin11</td>
                            <td><i class="el-icon-edit set-icon"></i></td>
                        </tr>
                        <tr>
                            <td width="3%"><input type="checkbox" class="container-checkbox" value="246DD0BF219048C6991F76811B83DB48" /></td>
                            <td width="5%">设计中</td>
                            <td>教师活动</td>
                            <td>2018-09-27</td>
                            <td>admin11</td>
                            <td><i class="el-icon-edit set-icon"></i></td>
                        </tr>
                        </tbody>
                    </table>
                    <!---->
                    <div class="new-pagination el-pagination" style="text-align: right;">
                        <span class="el-pagination__total">共 90 条</span>
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
    </div>
</div>
<script type="text/javascript" src="/backend/static/js/manifest.c14e77f4d85201197bc4.js"></script>
<script type="text/javascript" src="/backend/static/js/vendor.77db51a60fc55cf48c45.js"></script>
</body>
</html>
