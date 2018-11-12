<%@ taglib prefix="c" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><g:message message="云主机列表"/></title>
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
        <c:form id="exportForm" controller="" action="export" method="post" class="search-form">
            <input type="text" name="name" id="name" placeholder="请输入云主机名称" autocomplete="off" value="">
            <input type="text" name="addr" id="addr" placeholder="请输入私有IP地址" autocomplete="off" value="">
            <select name="status" id="status" style="border: 1px solid #d3d3d3;width: 90px;border-radius: 4px;padding: 5px 5px;">
                <option value="">运行状态</option>
                <option value="active">运行中</option>
                <option value="shutoff">关机</option>
            </select>
            <button name="" class="btn btn-success" type="button" onClick="search()"><i class="Hui-iconfont">&#xe665;</i>查询</button>
            <button name="" class="btn btn-default" type="button" onClick="refresh()"><i class="Hui-iconfont">&#xe644;</i>更新数据</button>
            <button name="" class="btn btn-primary" type="button" onClick="addGroup()"><i class="Hui-iconfont">&#xe644;</i>添加进云主机组</button>
            <%--<button name="" class="btn btn-primary" type="button" onClick="exportData()"><i class="Hui-iconfont">&#xe644;</i>导出</button>--%>
        </c:form>
        <div class="jqGrid_wrapper mt-10">
            <table id="table_list"></table>
            <div id="pager_list"></div>
        </div>
    </article>
</div>
<script type="text/javascript">
    //添加进云主机组
    function addGroup() {
        var ids = $("#table_list").jqGrid('getGridParam','selarrrow');
        if(ids.length==0){
            layer.msg('请选择要添加进云主机组的主机');
        }else{
            $.post("${pageContext.request.contextPath}/ecsGroup/groups",function (data) {
                var html = '<select name="roleIds" style="width: 150px;" size="10">';
                var len = data.length;
                for(var i=0;i<len;i++){
                    html += '<option value="'+data[i].id+'" ';
                    if((data[0].selected==undefined ) || (data[0].selected==false)){
                        html += ' >';
                    }else if((data[0].selected==true)){
                        html += ' selected="selected" >';
                    }
                    html += data[i].groupName+'</option>';
                }
                html += '</select>';
                $("#select").html(html);
                layer.open({
                    type: 1,
                    title: '云主机组列表',
                    shadeClose: true,
                    content: $('#radiation')
                });
            });
        }
    }

    // 提交数据
    function onSubmit() {
        var group = $('#radiation').find(":selected").val();
        var ecsIds = $("#table_list").jqGrid('getGridParam','selarrrow');
        if(group===undefined){
            layer.msg("请选择要添加进的云服务器组");
        }else{
            $.ajax({
                url: "${pageContext.request.contextPath}/ecsGroup/groupaddEcs",
                type: "POST",
                data: {groupId:group,ecsIds:ecsIds},
                traditional: true,//这里设置为true
                success: function(data) {
                    if(data.success){
                        layer.msg(data.msg);
                    }else{
                        layer.msg(data.msg)
                    }
                }
            });
        }
    }


    // 导出数据
    function exportData(){
        $('#exportForm').submit();
    }
    //查询
    function search() {
        $("#table_list").setGridParam({
            postData: {//查询参数
                "name":$("#name").val(),
                "addr":$("#addr").val(),
                "status":$("#status").val()
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
            url: '${pageContext.request.contextPath}/cloudecs/listData',
            datatype: "json",
            height: tableHeight,
            mtype:"POST",//提交方式
            autowidth: true,
            autoScroll: true,
            shrinkToFit: true,
            rowNum: 15,
            rowList: [15, 50, 100],
            rownumbers:true,
            rownumWidth: 50,
            colNames: [
                '<div style="text-align: center;">云服务器名称</div>',
                '<div style="text-align: center;">私有IP地址</div>',
                '<div style="text-align: center;">状态</div>',
                '<div style="text-align: center;">云服务器唯一标识</div>',
                '<div style="text-align: center;">状态数据更新时间</div>',
                '<div style="text-align: center;">状态最近一次更新时间</div>'
            ],
            colModel: [
                {name:'name',index:'name', width: 50, sortable: false},
                {name:'addr',index:'addr', width: 30,sortable: false},
                {name:'status',index:'status', width: 20,sortable: false},
                {name:'id',index:'id', width: 60,sortable: false},
                {name:'updateTime',index:'updateTime', width: 30,sortable: false},
                {name:'lastUpdateTime',index:'lastUpdateTime', width: 30,sortable: false}
            ],
            pager: "#pager_list",
            viewrecords: true,
            multiselect: true,//复选框
            hidegrid: false
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
    //刷新数据
    function refresh() {
        $.getJSON('${pageContext.request.contextPath}/cloudecs/refresh',function (data) {
            jQuery("#table_list").trigger("reloadGrid");//刷新整个列表代码
        });
    }
</script>
<div class="page-container" id="radiation" style="display: none;">
    <form action="" method="post" class="form form-horizontal">
        <div class="row cl">
            <label class="form-label col-xs-4">组列表：</label>
            <div class="formControls col-xs-8" id="select">

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
