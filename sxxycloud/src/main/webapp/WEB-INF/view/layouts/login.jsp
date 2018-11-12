<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>书香校园</title>
    <link href="${pageContext.request.contextPath}/style/layouts/login.css" rel="stylesheet" type="text/css">

    <script src="${pageContext.request.contextPath}/script/bootstrap3/js/jquery-1.11.2.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function(){
            parent.location.reload;
            //得到焦点
            $("#password").focus(function(){
                $("#left_hand").animate({
                    left: "150",
                    top: " -38"
                },{step: function(){
                    if(parseInt($("#left_hand").css("left"))>140){
                        $("#left_hand").attr("class","left_hand");
                    }
                }}, 2000);
                $("#right_hand").animate({
                    right: "-64",
                    top: "-38px"
                },{step: function(){
                    if(parseInt($("#right_hand").css("right"))> -70){
                        $("#right_hand").attr("class","right_hand");
                    }
                }}, 2000);
            });
            //失去焦点
            $("#password").blur(function(){
                $("#left_hand").attr("class","initial_left_hand");
                $("#left_hand").attr("style","left:100px;top:-12px;");
                $("#right_hand").attr("class","initial_right_hand");
                $("#right_hand").attr("style","right:-112px;top:-12px");
            });
        });

        function checkForm(){
            var userName=$("#userName").val();
            var password=$("#password").val();
            if(userName==null||userName==""){
                $("#error").html("用户名不能为空！");
                return false;
            }
            if(password==null||password==""){
                $("#error").html("密码不能为空！");
                return false;
            }
            return true;
        }
    </script>
</head>

<body>
<div class="top_div">

</div>
<form action="${pageContext.request.contextPath}/index/login" method="post" onsubmit="return checkForm()">
    <div class="content-div">
        <div class="div-img">
            <div class="tou"></div>
            <div class="initial_left_hand" id="left_hand">
            </div>
            <div class="initial_right_hand" id="right_hand">
            </div>
        </div>
        <p class="p-loginName">
            <span class="u_logo"></span>
            <input id="userName" name="loginName" class="ipt" type="text" placeholder="请输入用户名" value="cs_qixin">
        </p>
        <p class="position-relative">
            <span class="p_logo"></span>
            <input id="password" name="loginPassword" class="ipt"  type="password" placeholder="请输入密码" value="qixin123" >
        </p>
        <div class="tip-div">
            <p style="margin: 0px 35px 20px 45px;">
                <span style="float: left;">书香校园管理系统</span>
                <span><font color="red" id="error">${errorInfo }</font></span>
                <span style="float: right;">
                      <input type="submit" value="登录" class="span-btn"/>
                 </span>
            </p>
        </div>
    </div>
</form>
<div class="button-div">Copyright © 2016-2018 版权所有</div>
</body>
</html>