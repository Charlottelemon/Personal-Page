<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2020/9/4
  Time: 13:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//UTF-8">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" >
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>注册</title>
    <script type="text/javascript" src="./js/register.js"></script>
    <link href="./css/register.css" rel="stylesheet" type="text/css" />
</head>
    <style>
        #main{
            width:300px;
            height:200px; background-color:red; position:absolute; left:50%; top:50%; margin-left:-150px; margin-top:-100px;

        }
    </style>
<body>

<div id="container">
    <div class="register">
        <div class="logo">访客注册</div>
        <form method="post" action="${pageContext.request.contextPath}/VisitorServlet?method=reg" autocomplete="off" name="form" onsubmit="return checkInput()">
            <div class="public-input">
                <input class="username has-border" name="vname" type="text" placeholder="用户名">
            </div>

            <div class="register">
                <label class="radio">性别</label>
                <label><input name="vsex" type="radio" value="1" checked="checked"/>男</label>
                <label><input name="vsex" type="radio" value="0"/>女</label>
            </div>
            <!-- 此处不能将name命名为css中没有的名字，会导致不对齐-->
            <div class="public-input">
                <input class="password has-border" name="password" type="password" placeholder="密码">
            </div>

            <div class="public-input">
                <input class="password has-border" name="repassword" type="password" placeholder="确认密码" >
            </div>
            <input name="Submit" type="submit" class="btnLogin public-input" value="注册" onclick="checkpassword()"/>
            <div align="center">已经注册过了 <strong><a href="login.jsp">登录</a></strong></div>

        </form>
    </div>
</div>

<!-- COMMON SCRIPTS -->
<script language="JavaScript" type="text/javascript">
    function checkpassword() {

        if(document.form.password.value == document.form.repassword.value&&document.form.password.value != "") {
            alert("密码一致");
            return true;

        }else if(document.form.password.value != document.form.repassword.value&&document.form.password.value != ""){
            alert("密码不一致");
            return false;
        }
    }
</script>

<script>
    function checkInput() {
        //验证输入是否为空
        if (document.form.vname.value == null||document.form.vname.value == "") {
            alert("用户名不能为空！");
            return false;
        }

        if (document.form.password.value == null||document.form.password.value == "") {
            alert("密码不能为空！");
            return false;
        }
        if (document.form.repassword.value == null||document.form.repassword.value == "") {
            alert("确认密码不能为空！");
            return false;
        }
    }
</script>
</body>
</html>
