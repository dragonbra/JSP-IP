<%--
  Created by IntelliJ IDEA.
  User: cyd
  Date: 2020/5/19
  Time: 17:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Politics Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="css/bootstrap-3.1.1.min.css" rel="stylesheet" type="text/css">
    <!-- Custom Theme files -->
    <link href="css/owl.carousel.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/style.css" rel='stylesheet' type='text/css' />
    <link href="css/login.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery.min.js"> </script>
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
    <!--/script-->
    <link href='http://fonts.googleapis.com/css?family=Hammersmith+One' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Libre+Baskerville:400,400italic,700' rel='stylesheet' type='text/css'>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},900);
            });
        });
    </script>
</head>
<body onload="initBody()">
<%
    request.setCharacterEncoding("utf8");
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    String e = request.getParameter("error");
%>
<div class="header" id="home">
    <div class="content white">
        <nav class="navbar navbar-default" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <!--	<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>-->
                    <a class="navbar-brand" href="index.jsp">河海大学实验中心</a>
                </div>
                <!--/.navbar-header-->

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="index.jsp">首页</a></li>
                        <li><a href="exp_teach.jsp">实验教学</a></li>
                        <li><a href="man_mode.jsp">管理模式</a></li>
                        <li><a href="exp_envir.jsp">设备环境</a></li>
                        <li><a href="award_show.jsp">成果展示</a></li>
                        <li><a href="exp_team.jsp">实验队伍</a></li>
                    </ul>
                    <div class="social-icons">
                        <ul>
                            <li><a href="login.jsp" class="	"> 登录</a></li>/
                            <li><a href="register.jsp" class=""> 注册</a></li>
                        </ul>
                    </div>
                </div>
                <!--/.navbar-collapse-->
                <!--/.navbar-->
            </div>
        </nav>
    </div>
</div>
<div class="banner1">
    <div class="container">
    </div>
</div>

<script type="text/javascript">

    document.getElementById("btn").onclick = function () {
        // 获取img元素
        // 为了让浏览器发送请求到servlet, 所以一定要改变src
        changeImg();
    };

    function initBody() {
        changeImg();
        if (<%=e!=null%>) {
            document.getElementById("error").innerHTML =<%='\"'+e+'\"'%>;
        }
    }

    function changeImg() {
        document.getElementById("verify").src =
            "./CaptchaServlet?time=" + new Date().getTime();
    }
</script>
<%
    // 获取浏览器发送过来的cookie, 获取用户信息
    Cookie[] cookies = request.getCookies();
    String username = "";
    if (cookies != null) {
        for (Cookie cookie : cookies) {
            if ("username".equals(cookie.getName())) {
                username = cookie.getValue();
            }
        }
    }
%>

<div id="content">
    <div class="login-header">
        <img src="images/logo.png">
    </div>
    <form action="RegisterServlet" method="post">
        <div class="login-input-box">
            <span class="icon icon-user"></span>
            <input type="text" type="text" name="Account" value="<%=request.getParameter("Account")==null?"":request.getParameter("Account")%>"
                   placeholder="请输入用户名">
        </div>
        <div class="login-input-box">
            <span class="icon icon-mail"></span>
            <input type="text" name="Email" value="<%=request.getParameter("Email")==null?"":request.getParameter("Email")%>"
                   placeholder="请输入邮箱">
        </div>
        <div class="login-input-box">
            <span class="icon icon-password"></span>
            <input type="password" name="Password" value="<%=request.getParameter("Password")==null?"":request.getParameter("Password")%>"
                   placeholder="请输入密码">
        </div>
        <div class="login-input-box">
            <span class="icon icon-password"></span>
            <input type="password" placeholder="请再次输入密码">
        </div>
        <div class="captcha" >
            <span class="icon "></span>
            <input input type="text" name="CAPTCHA">
            <img id="verify">
            <input type="button" value="看不清? 换一张" id="btn">
        </div>

        <div class="login-button-box">
            <button   type="submit" value="注册" onclick="
                 if(Account.value===''){
                    alert('用户名不能为空');
                    return false;
                }else if(Password.value===''){
                    alert('密码不能为空');
                    return false;
                }else if(Check.value===''){
                    alert('确认密码不能为空');
                    return false;
                }else if(CAPTCHA.value===''){
                    alert('验证码不能为空');
                    return false;
                }else if(Password.value!==Check.value){
                    alert('密码不一致');
                    return false;
                }" >
                注册
            </button>
        </div>
    </form>
    <div class="logon-box">
        <a href="login.jsp">登录</a>
    </div>
</div>
<span style="color: red" class="mes">
    <%
        if(request.getAttribute("error")!=null){
    %>
        此用户名已存在
    <%
        }
        if(request.getAttribute("verifyerror")!=null){
    %>
        验证码错误
    <%
        }
        if(request.getAttribute("wrongemail")!=null){
    %>
        非法邮箱地址
    <%
            ;
        }
    %>
</span>
<script type="text/javascript">

    document.getElementById("btn").onclick = function () {
        // 获取img元素
        // 为了让浏览器发送请求到servlet, 所以一定要改变src
        changeImg();
    };

    function initBody() {
        changeImg();
    }

    function changeImg() {
        document.getElementById("verify").src =
            "./CaptchaServlet?time=" + new Date().getTime();
    }
</script>
</body>
</html>
