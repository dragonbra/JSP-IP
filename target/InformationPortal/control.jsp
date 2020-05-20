<%--
  Created by IntelliJ IDEA.
  User: cyd
  Date: 2020/5/20
  Time: 13:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="indi.cyd.InformationPortal.dao.Account" %>
<%@ page import="indi.cyd.InformationPortal.dao.Operation" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>权限管理</title>
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
<body>
<script src="js/ajax1.js"></script>
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
<div class="banner1">
    <div class="container">
    </div>
</div>
<div id="content" style="height: auto;margin-bottom: 30px;">
    <img src="images/timg.jpg" width="60px" style="margin-left: 170px;margin-bottom: 10px">
    <div style="width: 80%;align-content: center;margin: auto">

        <%
            request.setCharacterEncoding("UTF-8");
            if (request.getSession(true).getAttribute("Account") == null) {
                response.sendRedirect("index.jsp");
                return;
            }
            Account acc = (Account) request.getSession().getAttribute("Account");
            if (acc.getPermissions() < 2) {
        %>
        <a style="color: black" href="index.jsp">权限不足！</a>
        <%
                return;
            }
        %>
        <form action="control.jsp" method="get">
            <input id="searchuser" type="text" name="acc" placeholder="请输入用户名">
            <input class="search" type="submit"  value="查找用户" onclick="
    if(acc.value===''){
        alert('用户名不能为空');
    }">
        </form>
        <%
            String aim = request.getParameter("acc");
            if (aim == null) return;
            Account res = Operation.getAccount(aim);
            if (acc.getPermissions() <= res.getPermissions()) {
        %>
        <a style="color: black" href="index.jsp">您无权修改比您权限高或与您权限相同的用户！</a>
        <%
                return;
            }
            if (res.getId() == -1) {
        %>
        查无此人
        <%
                return;
            }
        %>
        <form action="" method="post">
            <%=res.getName()%><br>
            <br>
            <font class="upinput">电子邮箱</font><br>
            <input class="control-input" type="text" name="email" value="<%=res.getEmail()%>" placeholder="请输入电子邮箱">
            <br>
            <font class="upinput">密码</font><br>
            <input class="control-input" type="text" name="text" value="<%=res.getPassword()%>" placeholder="请输入密码">
            <br>
            <font class="upinput">权限</font><br>
            <input class="control-input" type="number" name="permission" value="<%=res.getPermissions()%>" placeholder="权限">
            <br>
            <font class="upinput"> 个人信息</font><br>
            <textarea name="profile" placeholder="个人信息" style="border:1px solid #000000;border-radius:5px;
                    margin-bottom: 15px;width: 300px;height: 200px;padding: 10px;resize: none;"
            ><%=res.getInfo()%></textarea>
            <br>
            <input type="hidden" name="aim" value="<%=res.getName()%>">
            <input type="submit" class="search" value="确认修改" onclick="javascript:this.form.action='ModifyServlet?sc=2'">
            <%
                if (acc.getPermissions() >= 3) {
            %>
            <input type="submit" class="search" value="删除账户" onclick="javascript:this.form.action='ModifyServlet?sc=1'">
            <%
                }
            %>
        </form>


    </div>
</div>

</body>
</html>
