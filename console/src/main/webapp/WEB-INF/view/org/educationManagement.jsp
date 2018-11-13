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
<body>
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
                    <span class="el-breadcrumb__item"><a href="/org/index" class="el-breadcrumb__inner">机构管理</a><i class="el-breadcrumb__separator el-icon-arrow-right"></i></span>
                    <span class="el-breadcrumb__item" aria-current="page"><span role="link" class="el-breadcrumb__inner">教育机构管理</span><i class="el-breadcrumb__separator el-icon-arrow-right"></i></span>
                </div>
            </div>
            <div class="b-page-container">
                <div class="container-head">
                    <button type="button" class="el-button el-button--primary el-button--default el-button--small">
                        <!---->
                        <!----><span>删除机构</span></button>
                    <button type="button" class="el-button el-button--primary el-button--default el-button--small">
                        <!---->
                        <!----><span>新建机构</span></button>
                    <button type="button" class="el-button el-button--primary el-button--default el-button--small">
                        <!---->
                        <!----><span>修改机构</span></button>
                </div>
                <div class="b-container-table education-container-table clearfix">
                    <div class="container-table-left left">
                        <div role="tree" class="el-tree pd20" id="treeOrg">
                            <div role="treeitem" tabindex="-1" class="el-tree-node is-expanded is-focusable" aria-expanded="true">
                                <div class="el-tree-node__content" style="padding-left: 0px;">
                                    <span class="el-tree-node__expand-icon el-icon-caret-right expanded"></span>
                                    <label role="checkbox" class="el-checkbox" aria-checked="mixed"><span aria-checked="mixed" class="el-checkbox__input is-indeterminate"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                        <!----></label>
                                    <!---->
                                    <span class="custom-tree-node"><span>广东省教育厅</span></span>
                                </div>
                                <div role="group" class="el-tree-node__children" data-old-padding-top="" data-old-padding-bottom="" data-old-overflow="" style="" aria-expanded="true">
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>日本市教育局</span></span>
                                        </div>
                                        <div role="group" class="el-tree-node__children" data-old-padding-top="" data-old-padding-bottom="" data-old-overflow="" style="display: none;">
                                            <div role="treeitem" tabindex="-1" class="el-tree-node is-expanded is-focusable" aria-expanded="true">
                                                <div class="el-tree-node__content" style="padding-left: 36px;">
                                                    <span class="el-tree-node__expand-icon el-icon-caret-right is-leaf"></span>
                                                    <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                        <!----></label>
                                                    <!---->
                                                    <span class="custom-tree-node"><span>测试教育局789</span><span class="el-icon-d-arrow-right"></span></span>
                                                </div>
                                                <div role="group" class="el-tree-node__children" aria-expanded="true" data-old-padding-top="" data-old-padding-bottom="" data-old-overflow="" style=""></div>
                                            </div>
                                            <div role="treeitem" tabindex="-1" class="el-tree-node is-expanded is-focusable" aria-expanded="true">
                                                <div class="el-tree-node__content" style="padding-left: 36px;">
                                                    <span class="el-tree-node__expand-icon el-icon-caret-right is-leaf"></span>
                                                    <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                        <!----></label>
                                                    <!---->
                                                    <span class="custom-tree-node"><span>测试教育局937</span><span class="el-icon-d-arrow-right"></span></span>
                                                </div>
                                                <div role="group" class="el-tree-node__children" aria-expanded="true" data-old-padding-top="" data-old-padding-bottom="" data-old-overflow="" style=""></div>
                                            </div>
                                            <div role="treeitem" tabindex="-1" class="el-tree-node is-expanded is-focusable" aria-expanded="true">
                                                <div class="el-tree-node__content" style="padding-left: 36px;">
                                                    <span class="el-tree-node__expand-icon el-icon-caret-right is-leaf"></span>
                                                    <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                        <!----></label>
                                                    <!---->
                                                    <span class="custom-tree-node"><span>测试教育局389</span><span class="el-icon-d-arrow-right"></span></span>
                                                </div>
                                                <div role="group" class="el-tree-node__children" aria-expanded="true" data-old-padding-top="" data-old-padding-bottom="" data-old-overflow="" style=""></div>
                                            </div>
                                            <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                                <div class="el-tree-node__content" style="padding-left: 36px;">
                                                    <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                                    <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                        <!----></label>
                                                    <!---->
                                                    <span class="custom-tree-node"><span>测试教育局170</span><span class="el-icon-d-arrow-right"></span></span>
                                                </div>
                                                <!---->
                                            </div>
                                            <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                                <div class="el-tree-node__content" style="padding-left: 36px;">
                                                    <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                                    <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                        <!----></label>
                                                    <!---->
                                                    <span class="custom-tree-node"><span>测试教育局687</span><span class="el-icon-d-arrow-right"></span></span>
                                                </div>
                                                <!---->
                                            </div>
                                            <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                                <div class="el-tree-node__content" style="padding-left: 36px;">
                                                    <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                                    <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                        <!----></label>
                                                    <!---->
                                                    <span class="custom-tree-node"><span>测试教育局394</span><span class="el-icon-d-arrow-right"></span></span>
                                                </div>
                                                <!---->
                                            </div>
                                            <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                                <div class="el-tree-node__content" style="padding-left: 36px;">
                                                    <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                                    <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                        <!----></label>
                                                    <!---->
                                                    <span class="custom-tree-node"><span>测试教育局225</span><span class="el-icon-d-arrow-right"></span></span>
                                                </div>
                                                <!---->
                                            </div>
                                            <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                                <div class="el-tree-node__content" style="padding-left: 36px;">
                                                    <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                                    <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                        <!----></label>
                                                    <!---->
                                                    <span class="custom-tree-node"><span>就好看黄金客户</span><span class="el-icon-d-arrow-right"></span></span>
                                                </div>
                                                <!---->
                                            </div>
                                            <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                                <div class="el-tree-node__content" style="padding-left: 36px;">
                                                    <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                                    <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                        <!----></label>
                                                    <!---->
                                                    <span class="custom-tree-node"><span>大不列颠教育局</span><span class="el-icon-d-arrow-right"></span></span>
                                                </div>
                                                <!---->
                                            </div>
                                        </div>
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>香港市教育局</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-expanded is-focusable" aria-expanded="true">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right expanded"></span>
                                            <label role="checkbox" class="el-checkbox" aria-checked="mixed"><span aria-checked="mixed" class="el-checkbox__input is-indeterminate"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>韶关市教育局</span></span>
                                        </div>
                                        <div role="group" class="el-tree-node__children" data-old-padding-top="" data-old-padding-bottom="" data-old-overflow="" style="" aria-expanded="true">
                                            <div role="treeitem" tabindex="-1" class="el-tree-node is-expanded is-focusable" aria-expanded="true">
                                                <div class="el-tree-node__content" style="padding-left: 36px;">
                                                    <span class="el-tree-node__expand-icon el-icon-caret-right is-leaf"></span>
                                                    <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                        <!----></label>
                                                    <!---->
                                                    <span class="custom-tree-node"><span>测试教育局556</span><span class="el-icon-d-arrow-right"></span></span>
                                                </div>
                                                <div role="group" class="el-tree-node__children" aria-expanded="true" data-old-padding-top="" data-old-padding-bottom="" data-old-overflow="" style=""></div>
                                            </div>
                                            <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                                <div class="el-tree-node__content" style="padding-left: 36px;">
                                                    <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                                    <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                        <!----></label>
                                                    <!---->
                                                    <span class="custom-tree-node"><span>测试教育局868</span><span class="el-icon-d-arrow-right"></span></span>
                                                </div>
                                                <!---->
                                            </div>
                                            <div role="treeitem" tabindex="-1" class="el-tree-node is-expanded is-current is-focusable" aria-expanded="true">
                                                <div class="el-tree-node__content" style="padding-left: 36px;">
                                                    <span class="el-tree-node__expand-icon el-icon-caret-right is-leaf"></span>
                                                    <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                        <!----></label>
                                                    <!---->
                                                    <span class="custom-tree-node"><span>韶关市武江区教育局</span><span class="el-icon-d-arrow-right"></span></span>
                                                </div>
                                                <div role="group" class="el-tree-node__children" aria-expanded="true" data-old-padding-top="" data-old-padding-bottom="" data-old-overflow="" style=""></div>
                                            </div>
                                            <div role="treeitem" tabindex="-1" class="el-tree-node is-expanded is-focusable" aria-expanded="true">
                                                <div class="el-tree-node__content" style="padding-left: 36px;">
                                                    <span class="el-tree-node__expand-icon el-icon-caret-right is-leaf"></span>
                                                    <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                        <!----></label>
                                                    <!---->
                                                    <span class="custom-tree-node"><span>韶关市浈江区教育局</span><span class="el-icon-d-arrow-right"></span></span>
                                                </div>
                                                <div role="group" class="el-tree-node__children" aria-expanded="true" data-old-padding-top="" data-old-padding-bottom="" data-old-overflow="" style=""></div>
                                            </div>
                                            <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable is-checked" aria-checked="true">
                                                <div class="el-tree-node__content" style="padding-left: 36px;">
                                                    <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                                    <label role="checkbox" class="el-checkbox is-checked" aria-checked="true"><span aria-checked="mixed" class="el-checkbox__input is-checked"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                        <!----></label>
                                                    <!---->
                                                    <span class="custom-tree-node"><span>韶关市曲江区教育局</span><span class="el-icon-d-arrow-right"></span></span>
                                                </div>
                                                <!---->
                                            </div>
                                            <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                                <div class="el-tree-node__content" style="padding-left: 36px;">
                                                    <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                                    <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                        <!----></label>
                                                    <!---->
                                                    <span class="custom-tree-node"><span>韶关市始兴县教育局</span><span class="el-icon-d-arrow-right"></span></span>
                                                </div>
                                                <!---->
                                            </div>
                                            <div role="treeitem" tabindex="-1" class="el-tree-node is-expanded is-focusable" aria-expanded="true">
                                                <div class="el-tree-node__content" style="padding-left: 36px;">
                                                    <span class="el-tree-node__expand-icon el-icon-caret-right is-leaf"></span>
                                                    <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                        <!----></label>
                                                    <!---->
                                                    <span class="custom-tree-node"><span>韶关市仁化县教育局</span><span class="el-icon-d-arrow-right"></span></span>
                                                </div>
                                                <div role="group" class="el-tree-node__children" aria-expanded="true" data-old-padding-top="" data-old-padding-bottom="" data-old-overflow="" style=""></div>
                                            </div>
                                            <div role="treeitem" tabindex="-1" class="el-tree-node is-expanded is-focusable" aria-expanded="true">
                                                <div class="el-tree-node__content" style="padding-left: 36px;">
                                                    <span class="el-tree-node__expand-icon el-icon-caret-right is-leaf"></span>
                                                    <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                        <!----></label>
                                                    <!---->
                                                    <span class="custom-tree-node"><span>韶关市翁源县教育局</span><span class="el-icon-d-arrow-right"></span></span>
                                                </div>
                                                <div role="group" class="el-tree-node__children" aria-expanded="true" data-old-padding-top="" data-old-padding-bottom="" data-old-overflow="" style=""></div>
                                            </div>
                                            <div role="treeitem" tabindex="-1" class="el-tree-node is-expanded is-focusable" aria-expanded="true">
                                                <div class="el-tree-node__content" style="padding-left: 36px;">
                                                    <span class="el-tree-node__expand-icon el-icon-caret-right is-leaf"></span>
                                                    <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                        <!----></label>
                                                    <!---->
                                                    <span class="custom-tree-node"><span>韶关市乳源瑶族自治县教育局</span><span class="el-icon-d-arrow-right"></span></span>
                                                </div>
                                                <div role="group" class="el-tree-node__children" aria-expanded="true" data-old-padding-top="" data-old-padding-bottom="" data-old-overflow="" style=""></div>
                                            </div>
                                            <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                                <div class="el-tree-node__content" style="padding-left: 36px;">
                                                    <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                                    <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                        <!----></label>
                                                    <!---->
                                                    <span class="custom-tree-node"><span>韶关市新丰县教育局</span><span class="el-icon-d-arrow-right"></span></span>
                                                </div>
                                                <!---->
                                            </div>
                                            <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                                <div class="el-tree-node__content" style="padding-left: 36px;">
                                                    <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                                    <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                        <!----></label>
                                                    <!---->
                                                    <span class="custom-tree-node"><span>韶关市乐昌市教育局</span><span class="el-icon-d-arrow-right"></span></span>
                                                </div>
                                                <!---->
                                            </div>
                                            <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                                <div class="el-tree-node__content" style="padding-left: 36px;">
                                                    <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                                    <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                        <!----></label>
                                                    <!---->
                                                    <span class="custom-tree-node"><span>韶关市南雄市教育局</span><span class="el-icon-d-arrow-right"></span></span>
                                                </div>
                                                <!---->
                                            </div>
                                        </div>
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局729</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局884</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局468</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局440</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局502</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局797</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局560</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-expanded is-focusable" aria-expanded="true">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right is-leaf"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局646</span></span>
                                        </div>
                                        <div role="group" class="el-tree-node__children" aria-expanded="true" data-old-padding-top="" data-old-padding-bottom="" data-old-overflow="" style=""></div>
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局127</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局940</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局909</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局921</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局748</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局894</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局564</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局990</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局952</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局421</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局937</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局668</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局274</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局941</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局920</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局357</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局817</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局961</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局996</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局456</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局197</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局754</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局522</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局573</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局321</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局162</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局568</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局724</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局160</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局551</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局262</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局317</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局408</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局980</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局594</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局140</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局530</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局627</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局627</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局375</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局669</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局387</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局768</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局653</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局991</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试教育局807</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>CESHI</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>什么市教育局</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试机构</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试的教育局</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>侧是</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>测试用的教育局</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>深圳市教育局</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>珠海市教育局</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>汕头市教育局</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>佛山市教育局</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>江门市教育局</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>湛江市教育局</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-expanded is-focusable" aria-expanded="true">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right expanded"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>茂名市教育局</span></span>
                                        </div>
                                        <div role="group" class="el-tree-node__children" aria-expanded="true" data-old-padding-top="" data-old-padding-bottom="" data-old-overflow="" style="">
                                            <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                                <div class="el-tree-node__content" style="padding-left: 36px;">
                                                    <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                                    <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                        <!----></label>
                                                    <!---->
                                                    <span class="custom-tree-node"><span>测试教育局141</span><span class="el-icon-d-arrow-right"></span></span>
                                                </div>
                                                <!---->
                                            </div>
                                            <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                                <div class="el-tree-node__content" style="padding-left: 36px;">
                                                    <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                                    <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                        <!----></label>
                                                    <!---->
                                                    <span class="custom-tree-node"><span>茂名市茂南区教育局</span><span class="el-icon-d-arrow-right"></span></span>
                                                </div>
                                                <!---->
                                            </div>
                                            <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                                <div class="el-tree-node__content" style="padding-left: 36px;">
                                                    <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                                    <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                        <!----></label>
                                                    <!---->
                                                    <span class="custom-tree-node"><span>茂名市电白区教育局</span><span class="el-icon-d-arrow-right"></span></span>
                                                </div>
                                                <!---->
                                            </div>
                                            <div role="treeitem" tabindex="-1" class="el-tree-node is-expanded is-focusable" aria-expanded="true">
                                                <div class="el-tree-node__content" style="padding-left: 36px;">
                                                    <span class="el-tree-node__expand-icon el-icon-caret-right is-leaf"></span>
                                                    <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                        <!----></label>
                                                    <!---->
                                                    <span class="custom-tree-node"><span>茂名市高州市教育局</span><span class="el-icon-d-arrow-right"></span></span>
                                                </div>
                                                <div role="group" class="el-tree-node__children" aria-expanded="true" data-old-padding-top="" data-old-padding-bottom="" data-old-overflow="" style=""></div>
                                            </div>
                                            <div role="treeitem" tabindex="-1" class="el-tree-node is-expanded is-focusable" aria-expanded="true">
                                                <div class="el-tree-node__content" style="padding-left: 36px;">
                                                    <span class="el-tree-node__expand-icon el-icon-caret-right is-leaf"></span>
                                                    <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                        <!----></label>
                                                    <!---->
                                                    <span class="custom-tree-node"><span>茂名市化州市教育局</span><span class="el-icon-d-arrow-right"></span></span>
                                                </div>
                                                <div role="group" class="el-tree-node__children" aria-expanded="true" data-old-padding-top="" data-old-padding-bottom="" data-old-overflow="" style=""></div>
                                            </div>
                                            <div role="treeitem" tabindex="-1" class="el-tree-node is-expanded is-focusable" aria-expanded="true">
                                                <div class="el-tree-node__content" style="padding-left: 36px;">
                                                    <span class="el-tree-node__expand-icon el-icon-caret-right is-leaf"></span>
                                                    <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" /></span>
                                                        <!----></label>
                                                    <!---->
                                                    <span class="custom-tree-node"><span>茂名市信宜市教育局</span><span class="el-icon-d-arrow-right"></span></span>
                                                </div>
                                                <div role="group" class="el-tree-node__children" aria-expanded="true" data-old-padding-top="" data-old-padding-bottom="" data-old-overflow="" style=""></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>肇庆市教育局</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>惠州市教育局</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>梅州市教育局</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>汕尾市教育局</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>河源市教育局</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>阳江市教育局</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>清远市教育局</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>东莞市教育局</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>中山市教育局</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>潮州市教育局</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>揭阳市教育局</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>云浮市教育局</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>光北市教育局</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>323</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>ccc12</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                    <div role="treeitem" tabindex="-1" class="el-tree-node is-focusable">
                                        <div class="el-tree-node__content" style="padding-left: 18px;">
                                            <span class="el-tree-node__expand-icon el-icon-caret-right"></span>
                                            <label role="checkbox" class="el-checkbox"><span aria-checked="mixed" class="el-checkbox__input"><span class="el-checkbox__inner"></span><input type="checkbox" class="el-checkbox__original" value="" tabindex="-1" /></span>
                                                <!----></label>
                                            <!---->
                                            <span class="custom-tree-node"><span>aaac</span></span>
                                        </div>
                                        <!---->
                                    </div>
                                </div>
                            </div>
                            <!---->
                        </div>
                    </div>
                    <div class="container-table-right right">
                        <div class="el-table pd20 el-table--fit el-table--enable-row-hover el-table--enable-row-transition" style="width: 100%;">
                            <div class="hidden-columns">
                                <div></div>
                                <div></div>
                                <div></div>
                            </div>
                            <!---->
                            <div class="el-table__body-wrapper is-scrolling-none">
                                <table cellspacing="0" cellpadding="0" border="0" class="el-table__body" style="width: 770px;">
                                    <colgroup>
                                        <col name="el-table_1_column_1" width="180" />
                                        <col name="el-table_1_column_2" width="430" />
                                        <col name="el-table_1_column_3" width="160" />
                                    </colgroup>
                                    <tbody>
                                    <tr class="el-table__row">
                                        <td class="el-table_1_column_1  ">
                                            <div class="cell">
                                                机构名称
                                            </div></td>
                                        <td class="el-table_1_column_2  ">
                                            <div class="cell">
                                                韶关市曲江区教育局
                                            </div></td>
                                        <td class="el-table_1_column_3  ">
                                            <div class="cell">
                                                <!---->
                                                <!---->
                                            </div></td>
                                    </tr>
                                    <tr class="el-table__row">
                                        <td class="el-table_1_column_1  ">
                                            <div class="cell">
                                                机构地址
                                            </div></td>
                                        <td class="el-table_1_column_2  ">
                                            <div class="cell">
                                                广东省韶关市曲江区
                                            </div></td>
                                        <td class="el-table_1_column_3  ">
                                            <div class="cell">
                                                <!---->
                                                <!---->
                                            </div></td>
                                    </tr>
                                    <tr class="el-table__row">
                                        <td class="el-table_1_column_1  ">
                                            <div class="cell">
                                                机构邮编
                                            </div></td>
                                        <td class="el-table_1_column_2  ">
                                            <div class="cell">
                                                --
                                            </div></td>
                                        <td class="el-table_1_column_3  ">
                                            <div class="cell">
                                                <!---->
                                                <!---->
                                            </div></td>
                                    </tr>
                                    <tr class="el-table__row">
                                        <td class="el-table_1_column_1  ">
                                            <div class="cell">
                                                同级排序
                                            </div></td>
                                        <td class="el-table_1_column_2  ">
                                            <div class="cell">
                                                1
                                            </div></td>
                                        <td class="el-table_1_column_3  ">
                                            <div class="cell">
                                                <!---->
                                                <!---->
                                            </div></td>
                                    </tr>
                                    <tr class="el-table__row">
                                        <td class="el-table_1_column_1  ">
                                            <div class="cell">
                                                关联用户
                                            </div></td>
                                        <td class="el-table_1_column_2  ">
                                            <div class="cell">
                                                已关联：韶关市曲江区
                                            </div></td>
                                        <td class="el-table_1_column_3  ">
                                            <div class="cell">
                                                <button type="button" class="el-button el-button--primary el-button--default el-button--small">
                                                    <!---->
                                                    <!----><span>修改关联用户</span></button>
                                                <!---->
                                            </div></td>
                                    </tr>
                                    <tr class="el-table__row">
                                        <td class="el-table_1_column_1  ">
                                            <div class="cell">
                                                加入用户
                                            </div></td>
                                        <td class="el-table_1_column_2  ">
                                            <div class="cell">
                                                1人
                                            </div></td>
                                        <td class="el-table_1_column_3  ">
                                            <div class="cell">
                                                <!---->
                                                <!---->
                                            </div></td>
                                    </tr>
                                    <tr class="el-table__row">
                                        <td class="el-table_1_column_1  ">
                                            <div class="cell">
                                                机构添加人
                                            </div></td>
                                        <td class="el-table_1_column_2  ">
                                            <div class="cell">
                                                --
                                            </div></td>
                                        <td class="el-table_1_column_3  ">
                                            <div class="cell">
                                                <!---->
                                                <!---->
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
                                    <div style="width: 771px; height: 388px;"></div>
                                </div>
                                <div class="contract-trigger"></div>
                            </div>
                        </div>
                    </div>
                    <div id="orgsList" class="orgs-list" style="display: none;">
                        <div class="el-input el-input-group el-input-group--append">
                            <!---->
                            <input autocomplete="off" placeholder="请输入学校名称" type="text" rows="2" validateevent="true" class="el-input__inner" />
                            <!---->
                            <!---->
                            <div class="el-input-group__append">
                                <button type="button" class="el-button el-button--default">
                                    <!----><i class="el-icon-search"></i>
                                    <!----></button>
                            </div>
                        </div>
                        <!---->
                        <p style="text-align: center; line-height: 40px;">暂无数据</p>
                        <!---->
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
        <div class="el-dialog__wrapper user-org-dialog" style="display: none;">
            <div class="el-dialog el-dialog--center" style="width: 760px; margin-top: 15vh;">
                <div class="el-dialog__header">
                    <div>
                        新建机构
                    </div>
                    <button type="button" aria-label="Close" class="el-dialog__headerbtn"><i class="el-dialog__close el-icon el-icon-close"></i></button>
                </div>
                <!---->
                <div class="el-dialog__footer">
       <span class="dialog-footer"><button type="button" class="el-button el-button--default el-button--small is-plain">
         <!---->
           <!----><span>取 消</span></button> <button type="button" class="el-button el-button--primary el-button--small">
         <!---->
           <!----><span>确 定</span></button></span>
                </div>
            </div>
        </div>
        <div class="el-dialog__wrapper user-name-dialog" style="display: none;">
            <div class="el-dialog el-dialog--center" style="width: 650px; margin-top: 15vh;">
                <div class="el-dialog__header">
                    <span class="el-dialog__title">修改关联用户</span>
                    <button type="button" aria-label="Close" class="el-dialog__headerbtn"><i class="el-dialog__close el-icon el-icon-close"></i></button>
                </div>
                <!---->
                <!---->
            </div>
        </div>
        <div class="el-dialog__wrapper org-parent-dialog" height="500px" style="display: none;">
            <div class="el-dialog el-dialog--center" style="width: 600px; margin-top: 15vh;">
                <div class="el-dialog__header">
                    <span class="el-dialog__title">选择机构层级</span>
                    <!---->
                </div>
                <!---->
                <div class="el-dialog__footer">
       <span class="dialog-footer"><button type="button" class="el-button el-button--default el-button--small is-plain">
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
