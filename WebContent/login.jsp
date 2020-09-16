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
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="我的个人网页">
    <meta name="author" content="dell">
    <title>Web Of OUCer</title>
    <script type="text/javascript" src="./js/login.js"></script>
    <link href="./css/login.css" rel="stylesheet" type="text/css" />

</head>
<style>
    #main{
        width:300px;
        height:200px; background-color:red; position:absolute; left:50%; top:50%; margin-left:-150px; margin-top:-100px;

    }
</style>
<body>

<div id="container">
    <div class="login">
        <div class="logo">欢迎来到CharlotteLemon的个人网站</div>
        <form method="post" action="${pageContext.request.contextPath}/VisitorServlet?method=login" name="form" onsubmit="return verifyLogin()">
            <div class="public-input">
                <input class="username has-border" name="vname" type="text" placeholder="用户名">
            </div>
            <div class="public-input ">
                <input class="password has-border" name="password" type="password" placeholder="密码">
            </div>
            <div class="register">
                <input type="checkbox"  checked>
                <label class="checkmark">记住密码</label>
            </div>
            <input name="Submit" type="submit" class="btnLogin public-input" value="登录访问">
            <div>没有注册？ <strong><a href="register.jsp">创建一个</a></strong></div>
        </form>
        <form method="post" action="${pageContext.request.contextPath}/VisitorServlet?method=login" name="form1">
            <input type="hidden" type="text" name="vname" value="游客0001">
            <input type="hidden" type="password" name="password" value="123456">
            <input type="submit" name="submit" class="btnLogin public-input" value="游客访问">
        </form>
    </div>
</div>
<!-- COMMON SCRIPTS -->
<script language="JavaScript" type="text/javascript">
    //验证用户名和密码是否为空
    function verifyLogin() {
        if (document.form.vname.value == ""||document.form.vname.value == null) {
            alert("用户名不能为空！");
            return false;
        }

        if (document.form.password.value == ""||document.form.password.value == null) {
            alert("密码不能为空！");
            return false;
        }
    }
</script>
</body>
</html>
