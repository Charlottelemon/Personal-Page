<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2020/9/4
  Time: 13:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.text.*" session="true" %>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//UTF-8">
<html>
<head>
    <title>Personal-Page</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta charset="utf-8" http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="keywords" content="Personal-Page" />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
        function checkMvalue() {
            if(document.form.mvalue.value == "") {
                alert("留言不能为空！");
                return false;
            }
        }
    </script>
    <!--// Meta tag Keywords -->

    <!-- Custom-Files -->
    <link type="text/css" href="css/locate.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/bootstrap.css">
    <!-- Bootstrap-Core-CSS -->
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
    <!-- Style-CSS -->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <!-- Font-Awesome-Icons-CSS -->
    <link rel="stylesheet" href="css/an-skill-bar.css">
    <link rel="stylesheet" href="css/main.css">

</head>

<body>
<header id="navigator">
    <div class="nav-left">
        <span class="nav_name">Personal-Page</span>
        <span class="nav_list"><a href="${pageContext.request.contextPath}/VisitorServlet?method=logout">返回</a></span>
    </div>
    <div class="nav_right">
        <div id="drop-name">
            <span>${vname}</span>
        </div>
    </div>
</header>
<!-- home -->
<div id="home">
    <!-- banner -->
    <div class="banner_w3lspvt">
        <div class="banner-top1">
            <div class="container">
                <div class="banner-text text-center">
                    <h1>CharlotteLemon</h1>
                    <p class="text-bl text-li mt-3">高山仰止，景行行止。虽不能至，心向往之。</p>
                    <div class="social-icons mt-4">
                        <ul class="list-unstyled">
                            <li>
                                <a href="http://www.cnblogs.com/lemon-567/">
                                    <span class="fa fa-chrome"></span>
                                </a>
                            </li>
                            <li>
                                <a href="momoqinghan@qq.com">
                                    <span class="fa fa-envelope-open"></span>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <a href="#about" class="btn button-style mt-5">阅读更多</a>
                </div>
            </div>
        </div>
    </div>
    <!-- //banner -->
</div>
<!-- //home -->

<!-- header -->
<header class="py-2">
    <div class="container d-flex">
        <h4 class="mt-2 let">我的资料</h4>
        <!-- menu -->
        <ul id="menu">
            <li>
                <input id="check02" type="checkbox" name="menu" />
                <label for="check02"><span class="fa fa-bars" aria-hidden="true"></span></label>
                <ul class="submenu">
                    <li><a href="#about">简介</a></li>
                    <li><a href="#hire">留言</a></li>
                </ul>
            </li>
        </ul>
        <!-- //menu -->
    </div>
</header>
<!-- //header -->

<!-- about -->
<section class="about py-5 position-relative" id="about">
    <div class="container pt-lg-4 pb-4">
        <h3 class="tittle-2">关于我</h3>
        <div class="row">
            <div class="col-lg-6 about-img text-center">
                <img class="img-fluid" src="images/ab2.png" alt="">
            </div>
            <div class="col-lg-6 about-right">
                <h4 class="about-tit">你好！<br>我叫张鹏。</h4>
                <p class="my-4">中国海洋大学17级计算机科学与技术专业，学号17020031099</p>
                <p>生日8月24日，故乡是山西</p>
                <li>
                    <a href="http://www.cnblogs.com/lemon-567/">
                        <span class="fa fa-chrome"></span>      http://www.cnblogs.com/lemon-567/
                    </a>
                </li>
                <li>
                    <a href="mailto:momoqinghan@qq.com">
                        <span class="fa fa-envelope-open"></span>      momoqinghan@qq.com
                    </a>
                </li>
                <li>
                    <a href="https://user.qzone.qq.com/10000">
                        <span class="fa fa-qq"></span>      10000
                    </a>
                </li>
                <a href="#hire" class="btn button-style-2 mt-5">留言</a>
            </div>
        </div>
    </div>
</section>
<!-- //about -->

<!-- testimonials -->
<section class="testimonials py-5">
    <div class="container py-xl-5 py-lg-3">
        <div class="testimonials_grid d-flex">
            <div class="offset-lg-4 offset-md-3 testi_grid">
                <p class="sub-test">凡事只要看得淡些，就没有什么可忧虑的了；只要不因愤怒而夸大事态，就没有什么事情值得生气的了。
                </p>
                <div class="d-flex">
                    <span class="fa fa-user" aria-hidden="true"></span>
                    <h5>屠格涅夫</h5>
                </div>
            </div>
        </div>
        <div class="testimonials_grid d-flex mt-4">
            <div class="offset-lg-4 offset-md-3 testi_grid">
                <p class="sub-test">我们必须有恒心，尤其要有自信力！我们必须相信我们的天赋是要用来作某种事情的，无论代价多麽大，这种事情必须作到。
                </p>
                <div class="d-flex">
                    <span class="fa fa-user" aria-hidden="true"></span>
                    <h5>居里夫人</h5>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- //testimonials -->

<!-- contact -->
<section class="contact py-5" id="hire">
    <div class="container py-xl-5 py-lg-3">
        <h3 class="tittle text-center text-bl mb-sm-5 mb-4">留言</h3>
        <div class="contact-form mx-auto text-center">
            <form action="${pageContext.request.contextPath}/MessageServlet?method=add" method="post" name="form" onsubmit="return checkMvalue()">
                <div class="form-group">
                    <textarea name="mvalue" class="form-control" placeholder="Message" required=""></textarea>
                    <input name="vid" type="hidden" value="${visitor.vno}">
                </div>
                <button type="submit" name="submit" class="btn submit-button mt-md-4 mt-3">提交</button>
            </form>
        </div>
    </div>
</section>

<!-- //contact -->
<section class="contact py-5" id="hire1">
    <div class="container py-xl-5 py-lg-3">
        <h3 class="tittle text-center text-bl mb-sm-5 mb-4">留言列表</h3>
        <div class="contact-form mx-auto text-center">
        <c:forEach items="${messageList}" var="item" >
            <div class="row">
                <div class="col-lg-6 form-group">
                    <h4 class="form-control">${item.vname}</h4>
                </div>
                <div class="col-lg-6 form-group">
                    <em>Published ${item.mtime}</em>
                </div>
            </div>
            <div class="form-group">
                <h5 class="form-control">${item.mvalue}</h5>
            </div>
        </c:forEach>
        </div>
    </div>
</section>
<!-- footer -->
<footer class="text-center py-5">
    <div class="container py-xl-5 py-lg-4">
        <div class="logo-2">
            <h2>Charlottelemon</h2>
            <p class="foot-para mx-auto mt-3">鱼跃此时海，花开彼岸天。</p>
        </div>
        <div class="w3pvt-webinfo_social_icons mt-lg-5 mt-4">
            <h3 class="footer-title text-wh mb-lg-4 mb-3">联系我</h3>
            <ul class="w3pvt-webits_social_list list-unstyled">
                <li>
                    <a href="http://www.cnblogs.com/lemon-567/">
                        <span class="fa fa-chrome"></span>
                    </a>
                </li>
                <li>
                    <a href="mailto:momoqinghan@qq.com">
                        <span class="fa fa-envelope-open"></span>
                    </a>
                </li>
            </ul>
        </div>
        <div class="cpy-right text-center mx-auto py-3">
            <p class="border-top mt-lg-5 mt-4">© 2019 Dell. My Resume | Design by Lemon</p>
        </div>
    </div>
</footer>
<!-- //footer -->
<!-- move top icon -->
<a href="#home" class="move-top text-center"></a>
<!-- //move top icon -->
<script src="js/jquery-1.11.0.min.js" type="text/javascript"></script>
<script src="js/an-skill-bar.js"></script>
<script src="js/main.js"></script>
<script type="text/javascript">
    /*7Core-CN - 网页鼠标点击特效（爱心）*/
    !function (e, t, a) {function r() {for (var e = 0; e < s.length; e++) s[e].alpha <= 0 ? (t.body.removeChild(s[e].el), s.splice(e, 1)) : (s[e].y--, s[e].scale += .004, s[e].alpha -= .013, s[e].el.style.cssText = "left:" + s[e].x + "px;top:" + s[e].y + "px;opacity:" + s[e].alpha + ";transform:scale(" + s[e].scale + "," + s[e].scale + ") rotate(45deg);background:" + s[e].color + ";z-index:99999");requestAnimationFrame(r)}function n() {var t = "function" == typeof e.onclick && e.onclick;e.onclick = function (e) {t && t(), o(e)}}function o(e) {var a = t.createElement("div");a.className = "heart", s.push({el: a,x: e.clientX - 5,y: e.clientY - 5,scale: 1,alpha: 1,color: c()}), t.body.appendChild(a)}function i(e) {var a = t.createElement("style");a.type = "text/css";try {a.appendChild(t.createTextNode(e))} catch (t) {a.styleSheet.cssText = e}t.getElementsByTagName("head")[0].appendChild(a)}function c() {return "rgb(" + ~~(255 * Math.random()) + "," + ~~(255 * Math.random()) + "," + ~~(255 * Math.random()) + ")"}var s = [];e.requestAnimationFrame = e.requestAnimationFrame || e.webkitRequestAnimationFrame || e.mozRequestAnimationFrame || e.oRequestAnimationFrame || e.msRequestAnimationFrame || function (e) {setTimeout(e, 1e3 / 60)}, i(".heart{width: 10px;height: 10px;position: fixed;background: #f00;transform: rotate(45deg);-webkit-transform: rotate(45deg);-moz-transform: rotate(45deg);}.heart:after,.heart:before{content: '';width: inherit;height: inherit;background: inherit;border-radius: 50%;-webkit-border-radius: 50%;-moz-border-radius: 50%;position: fixed;}.heart:after{top: -5px;}.heart:before{left: -5px;}"), n(), r()}(window, document);
</script>
</body>

</html>
