<%--
  Created by IntelliJ IDEA.
  User: cyd
  Date: 2020/5/20
  Time: 16:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="indi.cyd.InformationPortal.dao.Operation" %>
<%@ page import="indi.cyd.InformationPortal.dao.Article" %>
<%@ page import="javax.xml.crypto.Data" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="indi.cyd.InformationPortal.dao.Account" %><%--
  Created by IntelliJ IDEA.
  User: WZL
  Date: 2019/5/23
  Time: 21:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    long id = Long.valueOf(request.getParameter("article_id"));
    Article article = Operation.getArticle(id);
    String DateTime = new SimpleDateFormat("yyyy-MM-dd").format(new Date(article.getMydate()));
    session.setAttribute("Article", article);
%>
<html>
<head>
    <title><%=article.getTitle()%></title>
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
    <link rel="stylesheet" type="text/css" href="js/login.css">
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
    <style>

        #mtitle {
            align-content: center;
            height: 60px;
            width: 100%;
            border-bottom-color: #3b3b1f;
            border-bottom-width: 2px;
            border-bottom-style: double;
        }

        #mtitle2 {
            margin: 30px auto;
            text-align: center;
        }

        #mtitle3 {
            font-family: 微软雅黑;
            font-size: larger;
        }

        .fg {
            background-image: url(images/arrow.png);
            background-repeat: no-repeat;
            background-position: left center;
            text-indent: 22px;
            background-position: center;
            width: 10px;
            display: inline-block;
            border: 0px solid red;
        }
    </style>
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
                        <li><a href="man_mode.jsp">中心概况</a></li>
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

<table width="1002" align="center">
    <tr>
        <td width="100%" height="100%" class="enbed">
            <div style="margin: 0px">
                <a href="index.jsp" style="font-family: 宋体;color: grey;">首页</a>
                <span class="fg">&nbsp;&nbsp;</span>
                <a href="getrootpart.jsp?rootpartof=<%=article.getRootpartof()%>"
                   style="font-family: 宋体;color: grey;"><%=article.getRootpartof()%>
                </a>
                <%
                    if (!article.getRootpartof().equals(article.getPartof())) {
                %>
                <span class="fg">&nbsp;&nbsp;</span>
                <a href="getpart.jsp?partof=<%=article.getPartof()%>"
                   style="font-family: 宋体;color: grey;"><%=article.getPartof()%>
                </a>
                <%
                    }
                %>
            </div>
            <div id="mtitle">

                <div id="mtitle2">
                    <text id="mtitle3">
                        <%
                            Account acc = null;
                            if (session.getAttribute("Account") != null)
                                acc = (Account) session.getAttribute("Account");
                            if (acc != null && (acc.getPermissions() >= 1)) {
                        %>
                        <a style="color: black" id="mtitle3" href="ekeditor.jsp?gx=0"><%=article.getTitle()%>
                        </a>
                        <%
                            } else out.print(article.getTitle());
                        %>
                    </text>
                </div>
                <div style="border-width:20px ;margin-top: 50px">
                    <div class="title03" style="width: 80%;align-content: center;margin: 0 auto">
                        <spen class="articletitle" style="margin-left:70%; color: #000;"><%="发布人: " + article.getAuthor()%>
                        </spen>
                        <test class="date"><%=DateTime%>
                        </test>
                        <br><br><br>
                    </div>
                </div>
                <div style="margin-left: 10%">
                    <%=article.getContent()%>
                </div>
                <div style="height: 100px;margin: 10px"></div>
            </div>
        </td>
    </tr>
</table>

</body>
</html>
