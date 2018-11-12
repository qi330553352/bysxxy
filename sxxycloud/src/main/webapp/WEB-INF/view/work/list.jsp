<%@ taglib prefix="c" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><g:message message="工单列表"/></title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/plugins/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/plugins/h-ui/css/H-ui.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/plugins/h-ui.admin/css/H-ui.admin.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/plugins/Hui-iconfont/1.0.8/iconfont.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/plugins/h-ui.admin/skin/green/skin.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/plugins/jqgrid/ui.jqgrid.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/script/jquery-easyui-1.3.3/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/script/plugins/jqgrid/jquery.jqGrid.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/script/plugins/jqgrid/i18n/grid.locale-cn.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/script/plugins/layer/2.4/layer.js"></script>
    <style>
        input[type=text]{border: 1px solid #d3d3d3;width: 130px;border-radius: 4px;padding: 5px 5px;}
    </style>
</head>

<body>
<div class="Hui-article">
    <article class="cl pd-10">
        <%--<input type="text" name="loginName" id="loginName" placeholder="请输入手机号" value="" maxlength="11">
        <button name="" class="btn btn-success" type="button" onClick="search()"><i class="Hui-iconfont">&#xe665;</i>查询</button>--%>
        <button name="" class="btn btn-primary" type="button" onClick="addGroupInfo()"><i class="Hui-iconfont">&#xe644;</i>上传工单</button>
        <div class="jqGrid_wrapper mt-10">
            <table id="table_list"></table>
            <div id="pager_list"></div>
        </div>
    </article>
</div>

<script type="text/javascript">

    function editById(groupId) {

    }
    //添加云组机主
    function addGroupInfo() {
        layer.open({
            type: 1,
            title: '上传工单',
            shadeClose: true,
            content: $('#addUI')
        });
    }

    //查询
    function search() {
        $("#table_list").setGridParam({
            postData: {//查询参数
                "loginName":$("#loginName").val()
            },page:1
        }).trigger("reloadGrid");
    }

    //文档加载完成
    $(function () {
        $.jgrid.defaults.styleUI = 'Bootstrap';
        //获取浏览器高度
        var browserHeight = $(window).height();
        var tableHeight = browserHeight * 0.70 ;
        //请求table数据
        $("#table_list").jqGrid({
            url: '${pageContext.request.contextPath}/workInstance/listData',
            datatype: "json",
            height: tableHeight,
            mtype:"POST",//提交方式
            autowidth: true,
            autoScroll: true,
            shrinkToFit: false,
            rowNum: 15,
            rowList: [15, 50, 100],
            rownumbers:true,
            //rownumWidth: 50,
            colNames: [
                '<div style="text-align: center;">对象ID</div>',
                '<div style="text-align: center;">提出人</div>',
                '<div style="text-align: center;">日期</div>',
                '<div style="text-align: center;">类型</div>',
                '<div style="text-align: center;">诉求描述</div>'
            ],
            colModel: [
                {name:'id',index:'id', width: 60, sortable: false},
                {name:'introducer',index:'introducer', width: 100, sortable: false},
                {name:'createTime',index:'createTime', width: 80,sortable: false},
                {name:'workType',index:'workType', width: 80,sortable: false},
                {name:'describes',index:'describes', width: 900,sortable: false}
            ],
            pager: "#pager_list",
            sortname: 'id',
            viewrecords: true,
            hidegrid: false,
            editurl : 'server.php?t=',
            multiselect : false,
            subGridModel : [{
                name : [
                    '<div style="text-align: center;">编号</div>',
                    '<div style="text-align: center;">云服务器名称</div>',
                    '<div style="text-align: center;">私有IP地址</div>',
                    '<div style="text-align: center;">状态</div>'
                ],
                width : [ 35, 200, 80, 80]
            }]
        });
        jQuery("#table_list").closest(".ui-jqgrid-bdiv").css({ 'overflow-x' : 'scroll' });
        jQuery("#table_list").jqGrid('navGrid',"#pager_list",{edit:false,add:false,del:false});
        // Add responsive to jqGrid
        $(window).bind('resize', function () {
            var width = $('.jqGrid_wrapper').width();
            $('#table_list').setGridWidth(width);
        });
    });

    //回车提交事件
    $("body").keydown(function(e) {
        var e = e||event;
        if (e.keyCode == "13") {//keyCode=13是回车键
            search();
            return false;
        }
    });

</script>
<div class="page-container" id="addUI" style="display: none;">
    <form action="${pageContext.request.contextPath}/workInstance/upload" method="post" class="form form-horizontal" enctype="multipart/form-data">
        <div class="row cl">
            <div class="col-xs-9 col-xs-offset-0">
                <input type="file" name="filename" value="请选择文件" accept="xlsx" size="80" style="margin-left: 10px;margin-bottom: 15px;"/>
            </div>
        </div>
        <div class="row cl">
            <div class="col-xs-9 col-xs-offset-0">
                <input type="hidden" name="id" value="">
                <button class="btn btn-success save" type="submit"><i class="Hui-iconfont">&#xe632;</i>保存</button>
                <button onClick="layer.closeAll();" class="btn btn-warning radius ml-15" type="button"><i class="Hui-iconfont">&#xe66b;</i>取消</button>
            </div>
        </div>
    </form>
</div>
</body>
</html>
