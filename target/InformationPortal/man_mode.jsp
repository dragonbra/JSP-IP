<%@ page import="indi.cyd.InformationPortal.dao.Account" %><%--
  Created by IntelliJ IDEA.
  User: cyd
  Date: 2020/5/19
  Time: 14:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>管理模式</title>
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
                        <li class="active"><a href="man_mode.jsp">管理模式</a></li>
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
<!--/start-banner-->
<div class="banner1">
    <div class="container">
    </div>
</div>
<!--//end-banner-->
<!-- contact -->
<div class="contact">
    <div class="container">
        <h3>管理模式</h3>
        <div class="contact-bottom">
            	<iframe
                        src="https://map.baidu.com/poi/%E6%B2%B3%E6%B5%B7%E5%A4%A7%E5%AD%A6(%E6%B1%9F%E5%AE%81%E6%A0%A1%E5%8C%BA)/@13224056.54779473,3731682.359528433,13.3z?uid=a404432faa3c773e3be4a6b5&ugc_type=3&ugc_ver=1&device_ratio=2&compat=1&querytype=detailConInfo&da_src=shareurl"
                        frameborder="0" style="border:0" allowfullscreen></iframe>
        </div>
        <div class="col-md-4 contact-left">
            <h4>地址</h4>
            <p>
                江苏省南京市江宁区佛城西路8号
                <span>No. 8, Focheng West Road, Jiangning District, Nanjing City, Jiangsu Province</span></p>
            <ul>
                <li>联系方式：+86 17671747126</li>
                <li>微信：weitommy</li>
                <li>传真：+86 078 4589 2456</li>
                <li><a href="mailto:tommy514@foxmail.com">tommy514@foxmail.com</a></li>
            </ul>
        </div>
        <div class="col-md-8 contact-left">
            <h4>留言</h4>
            <form>
                <input type="text" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required="">
                <input type="email" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="">
                <input type="text" value="Telephone" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Telephone';}" required="">
                <textarea type="text"  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message...';}" required="">Message...</textarea>
                <input type="submit" value="Submit" >
                <input type="reset" value="Clear" >

            </form>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>

</body>
</html>
