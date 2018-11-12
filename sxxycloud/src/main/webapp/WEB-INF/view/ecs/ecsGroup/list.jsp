<%@ taglib prefix="c" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><g:message message="云主机组列表"/></title>
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
            <button name="" class="btn btn-primary" type="button" onClick="addGroupInfo()"><i class="Hui-iconfont">&#xe644;</i>添加</button>
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
            title: '添加云主机组',
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
            url: '${pageContext.request.contextPath}/ecsGroup/listData',
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
                '<div style="text-align: center;">云服务器组名称</div>',
                '<div style="text-align: center;">状态</div>',
                '<div style="text-align: center;">创建时间</div>',
                '<div style="text-align: center;">备注</div>',
                '<div style="text-align: center;">开关机</div>',
                '<div style="text-align: center;">操作</div>'
            ],
            colModel: [
                {name:'id',index:'id', width: 60, sortable: false},
                {name:'groupName',index:'groupName', width: 100, sortable: false},
                {name:'status',index:'status', width: 60,sortable: false},
                {name:'createTime',index:'createTime', width: 160,sortable: false},
                {name:'remarks',index:'remarks', width: 300,sortable: false},
                {name:'options',index: 'options', formatter:function(cellvalue, options, row){
                    var html = '';
                    if(row.statustag=='active'){
                        html += '<a href="javascript:editShutoff('+row.id+');" title="关机"><span class="glyphicon glyphicon-off"></span></a>&nbsp;&nbsp;&nbsp;&nbsp;';
                    }else if(row.statustag=='shutoff'){
                        html += '<a href="javascript:editActive('+row.id+');" title="开机"><span class="glyphicon glyphicon-play-circle"></span></a>&nbsp;&nbsp;&nbsp;&nbsp;';
                    }
                    return html;
                }},
                {name:'options',index: 'options', formatter:function(cellvalue, options, row){
                        var html = '';
                            html += '<a href="javascript:editById('+row.id+');" title="修改"><span class="glyphicon glyphicon-edit"></span></a>&nbsp;&nbsp;&nbsp;&nbsp;';
                            html += '<a href="javascript:deleteById('+row.id+');" title="删除"><span class="glyphicon glyphicon-trash"></span></a>&nbsp;&nbsp;&nbsp;&nbsp;';
                        return html;
                }}
            ],
            pager: "#pager_list",
            sortname: 'id',
            viewrecords: true,
            hidegrid: false,
            editurl : 'server.php?t=',
            multiselect : false,
            subGrid : true,
            subGridUrl : '${pageContext.request.contextPath}/ecsGroup/listDataChild',
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
<script type="text/javascript">
    //删除
    function deleteById(groupId) {
        $.getJSON('${pageContext.request.contextPath}/ecsGroup/deleteById',{groupId:groupId},function (data) {
            layer.confirm(data.msg, function(index){
                layer.close(index);
                jQuery("#table_list").trigger("reloadGrid");//刷新整个列表代码
            });
        });
    }
    //开关机
    function editShutoff(groupId) {
        $.getJSON('${pageContext.request.contextPath}/ecsGroup/editStatus',{groupId:groupId,status:"shutoff"},function (data) {
            layer.confirm(data.msg, function(index){
                layer.close(index);
                jQuery("#table_list").trigger("reloadGrid");//刷新整个列表代码
            });
        });
    }
    function editActive(groupId) {
        $.getJSON('${pageContext.request.contextPath}/ecsGroup/editStatus',{groupId:groupId,status:"active"},function (data) {
            layer.confirm(data.msg, function(index){
                layer.close(index);
                jQuery("#table_list").trigger("reloadGrid");//刷新整个列表代码
            });
        });
    }
</script>
<div class="page-container" id="addUI" style="display: none;">
    <form action="" method="post" class="form form-horizontal">
        <div class="row cl">
            <div class="col-xs-9 col-xs-offset-2">
                <label>云主机名称:</label><input type="text" name="aa" style="margin-left: 10px;margin-bottom: 15px;"/>
                <label>云主机名称:</label><input type="text" name="aa" style="margin-left: 10px;margin-bottom: 15px;"/>
                <label>云主机名称:</label><input type="text" name="aa" style="margin-left: 10px;margin-bottom: 15px;"/>
                <label>云主机名称:</label><input type="text" name="aa" style="margin-left: 10px;margin-bottom: 15px;"/>
            </div>
        </div>
        <div class="row cl">
            <div class="col-xs-9 col-xs-offset-2">
                <input type="hidden" name="id" value="">
                <button onClick="return onSubmit();" class="btn btn-secondary radius" type="button"><i class="Hui-iconfont">&#xe632;</i>保存</button>
                <button onClick="layer.closeAll();" class="btn btn-warning radius ml-15" type="button"><i class="Hui-iconfont">&#xe66b;</i>取消</button>
            </div>
        </div>
    </form>
</div>
</body>
</html>
