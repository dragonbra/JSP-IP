<%--
  Created by IntelliJ IDEA.
  User: cyd
  Date: 2020/5/20
  Time: 15:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="indi.cyd.InformationPortal.dao.Account" %>
<%@ page import="java.util.Date" %>
<%@ page import="indi.cyd.InformationPortal.dao.Operation" %>
<%@ page import="indi.cyd.InformationPortal.dao.Article" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>编辑文章</title>
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
</head>
<body style="width: 100%">
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
<%
    if (request.getSession(true).getAttribute("Account") == null) {
%>
<a href="login.jsp">请先登录</a>
<%
} else {

    Account account = (Account) session.getAttribute("Account");
    if (account.getPermissions() < 1) {
        out.print("<script type=\"text/javascript\">");
        out.println("alert('您没有权限');");
        out.print("window.location.href='login.jsp';");
        out.print("</script>");
    } else {

        request.setCharacterEncoding("UTF-8");
        Article article = (Article) session.getAttribute("Article");
        String gx = request.getParameter("gx");//0更新文章 1新文章
        if (gx.equals("1")) {
            article = new Article();
        }
%>
<table width="1002" align="center">
    <tr>
        <td width="100%" height="100%" class="enbed">
            <div style="align-content: center;width: 100%">

                <div style="width: 40%;align-content: center;margin: 50px 10px">
                    <script type="text/javascript" src="ckeditor/ckeditor.js"></script>
                    <form method="post" action="">
                        <h3>标题:<input type="text" id="title1" name="title1"
                                      style="width:900px;height:35px" value="<%=article.getTitle()%>">
                        </h3><br>
                        <h3>模块选择:</h3><select id="first" name="rootpartof" onChange="change()">
                        <option value="实验教学" selected="selected">实验教学</option>
                        <option value="中心概况">中心概况</option>
                        <option value="设备环境">设备环境</option>
                        <option value="成果展示">成果展示</option>
                        <option value="实验队伍">实验队伍</option>
                    </select>
                        <select id="second" name="partof">
                            <option value="实验教学" selected="selected">实验教学</option>
                            <%
                                List<String> ans=Operation.getPartof("实验教学");
                                for( String str:ans)
                                {
                            %>
                            <option value="<%=str%>" ><%=str%></option>
                            <%
                                }
                            %>
                        </select><br><br>

                        <h3>是否把文章放到首页 </h3>
                        <input type="radio" name="toindex" value="1" checked>是
                        <input type="radio" name="toindex" value="0">否
                        <br><br>

                        <script>
                            var rootpartof = ["实验教学", "中心概况", "设备环境", "成果展示", "实验队伍"];
                            var t = [];
                            function change() {
                                var x = document.getElementById("first");
                                var y = document.getElementById("second");
                                y.options.length = 0; // 清除second下拉框的所有内容

                                if (x.selectedIndex == 0) {
                                    y.options.add(new Option("实验教学", "实验教学", false, true));
                                    //y.options.add(new Option("课程列表", "课程列表"));
                                    //y.options.add(new Option("教学模式", "教学模式"));
                                }
                                if (x.selectedIndex == 1) {
                                    y.options.add(new Option("中心概况", "中心概况", false, true));
                                }
                                if (x.selectedIndex == 2) {
                                    y.options.add(new Option("设备环境", "设备环境", false, true));
                                    //y.options.add(new Option("实验室介绍及环境照片等", "实验室介绍及环境照片等"));
                                }
                                if (x.selectedIndex == 3) {
                                    y.options.add(new Option("成果展示", "成果展示", false, true));
                                    //y.options.add(new Option("相关管理制度", "相关管理制度"));
                                }
                                if (x.selectedIndex == 4) {
                                    y.options.add(new Option("实验队伍", "实验队伍", false, true));
                                    //y.options.add(new Option("队伍建设情况", "队伍建设情况"));
                                }
                                <%
                                String[] rootpartof =  {"实验教学", "中心概况", "设备环境", "成果展示", "实验队伍"};
                                for (int i=0;i<5;i++)
                                {
                                    ans=Operation.getPartof(rootpartof[i]);
                                    for( String str:ans)
                                    {
                                %>
                                if (x.selectedIndex == <%=i%>) {
                                    y.options.add(new Option("<%=str%>", "<%=str%>"));
                                }
                                <%
                                    }
                                }
                                %>
                            }
                        </script>

                        <textarea name="editor1" id="editor1" rows="10" cols="80">
                            <%=article.getContent()%>
                        </textarea>

                        <input type="hidden" name="gx" value="<%=gx%>">

                        <input type="submit" class="search" onclick="javascript:this.form.action='addArticle?sc=0';" value="增加文章">
                        <%
                            if (gx.equals("0")) {
                        %>
                        <input type="submit" class="search" onclick="javascript:this.form.action='addArticle?sc=1';" value="删除文章">
                        <%
                            }
                        %>
                        <script>
                            CKEDITOR.replace('editor1', {
                                //'kama', 'v2', 'office2003'
                                height: 600,
                                width: 950
                            });
                        </script>
                    </form>
                </div>

            </div>
        </td>
    </tr>
</table>
<%

        }
    }
%>
</body>
</html>