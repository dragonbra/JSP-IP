<%--
  Created by IntelliJ IDEA.
  User: cyd
  Date: 2020/5/20
  Time: 11:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="indi.cyd.InformationPortal.dao.Account" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    String e = request.getParameter("error");
%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>账户管理</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Politics Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="css/bootstrap-3.1.1.min.css" rel="stylesheet" type="text/css">
    <!-- Custom Theme files -->
    <link href="css/owl.carousel.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/style.css" rel='stylesheet' type='text/css' />
    <script src="js/jquery.min.js"> </script>
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
    <link rel="stylesheet" type="text/css" href="css/login.css">
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
                        <li><a href="index.jsp">首页</a></li>
                        <li><a href="exp_teach.jsp">实验教学</a></li>
                        <li><a href="man_mode.jsp">管理模式</a></li>
                        <li><a href="exp_envir.jsp">设备环境</a></li>
                        <li><a href="award_show.jsp">成果展示</a></li>
                        <li><a href="exp_team.jsp">实验队伍</a></li>
                    </ul>
                    <div class="social-icons">
                        <ul>
                            <%
                                request.setCharacterEncoding("UTF-8");
                                if (request.getSession(true).getAttribute("Account") == null) {
                            %>

                            <li><a href="login.jsp" class="	"> 登录</a></li>/
                            <li><a href="register.jsp" class=""> 注册</a></li>


                            <%
                            } else {
                                Account acc = (Account) request.getSession().getAttribute("Account");
                            %>

                            <li><a> <%=acc.getName()%> </a></li>
                            <li><a href="manage.jsp" class="	">账户 </a></li>/
                            <li><a href="" onclick="logout()" class=""> 注销</a></li>

                            <%
                                }
                            %>
                        </ul>
                    </div>
                </div>
                <!--/.navbar-collapse-->
                <!--/.navbar-->
            </div>
        </nav>
    </div>
</div>
<script src="js/ajax1.js"></script>

<%
    request.setCharacterEncoding("UTF-8");
    if (request.getSession(true).getAttribute("Account") == null) {
        response.sendRedirect("index.jsp");
    } else {
        Account acc = (Account) request.getSession().getAttribute("Account");
%>

<div id="content">
    <div class="login-header">
        <img src="images/logo.png">
    </div>
    <form action="ModifyServlet" method="post">
        <div class="login-input-box">
            <span class="icon icon-user"></span>
            <input type="text" value="<%=acc.getName()%>" disabled="disabled" />
        </div>
        <div class="login-input-box">
            <span class="icon icon-mail"></span>
            <input type="text" name="email" value="<%=acc.getEmail()%>"
                   placeholder="电子邮箱">
        </div>
        <div class="login-input-box">
            <span class="icon icon-password"></span>
            <input type="password" name="Password" value="<%=request.getParameter("Password")==null?"":request.getParameter("Password")%>"
                   placeholder="密码">
        </div>
        <div class="login-input-box">
            <span class="icon icon-password"></span>
            <input type="password" placeholder="确认密码">
        </div>
        <textarea name="profile" placeholder="个人信息"><%=acc.getInfo()%></textarea>
        <input type="hidden" name="aim" value="">
        <div class="login-button-box">
            <button
                    type="submit" value="登录" onclick="
                    if(password.value!==check.value){
                        alert('密码不一致');
                        return false;
                    }" >修改信息
            </button>

        </div>
    </form>

</div>
<div style="width: 40%;align-content: center;margin: 50px auto">
    <%
        if (acc.getPermissions() >= 1) {
    %>
    <a style="color: black" href="ekeditor.jsp?gx=1">增加文章</a>
    <%
        }
        if (acc.getPermissions() >= 2) {
    %>
    <a style="color: black" href="control.jsp">设置账户</a>
    <%
        }
        if (acc.getPermissions() >= 3) {
    %>
    <a style="color: black" href="addpartof.jsp">设置模块</a>
    <%
            }
        }
    %>
</div>
</body>
</html>
