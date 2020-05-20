<%@ page import="indi.cyd.InformationPortal.dao.Operation" %>
<%@ page import="java.util.List" %>
<%@ page import="indi.cyd.InformationPortal.dao.Article" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="indi.cyd.InformationPortal.dao.Account" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%
    String rootpartof = request.getParameter("rootpartof");
    //rootpartof = "实验教学";
    List<String> partof=Operation.getPartof(rootpartof);
%>
<head>
    <title><%=rootpartof%></title>
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
                        <li class="active"><a href="exp_teach.jsp">实验教学</a></li>
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
<!--/start-banner-->
<div class="banner1">
    <div class="container">
    </div>
</div>
<table width="1002" align="center">
    <tr>
        <td width="100%" height="100%" class="enbed">
            <div style="align-content: center;width: 100%">

                <div style="float: left;width: 20%">

                    <text  style="font-size: 30px" class="title02"><%=rootpartof%></text>
                    <br>
                    <%
                        for(String str:partof)
                        {
                    %>
                        <a class="articletitle" style="color: #000;font-size: 20px" href="getpart.jsp?partof=<%=str%> "
                            title="<%=str%>"><%=str%>
                        </a>
                    <br>
                    <%
                        }
                    %>
                </div>
                <div style="float: right;width: 80%">
                    <%
                        int onepagenum=25;
                        int thispage = 0;
                        if (request.getParameter("thispage") != null && !request.getParameter("thispage").equals(""))
                            thispage = Integer.valueOf(request.getParameter("thispage"));
                        if (request.getParameter("jy")!=null&&request.getParameter("jy").equals("1"))thispage--;
                        int count = Operation.getArticleRootpartofNum(rootpartof);
                        int lastpage = (count + onepagenum-1) / onepagenum - 1;
                        if (lastpage < 0) lastpage = 0;
                        if (thispage < 0) thispage = 0;
                        if (thispage > lastpage) thispage = lastpage;
                        List<Article> articles = Operation.getArticleRootpartof(rootpartof, thispage * onepagenum, onepagenum);
                        int cot=0;
                        for (Article article : articles) {
                            cot++;
                            String title = article.getTitle();
                            long data = article.getMydate();
                            long id = article.getId();
                            String DateTime = new SimpleDateFormat("yyyy-MM-dd").format(new Date(data));
                    %>
                    <div class="title03" style="width: 100%;align-content: center;margin: 0 auto">
                        <a class="articletitle" style="color: #000;" href="getarticle.jsp?article_id=<%=id%> "
                           title="<%=title%>"><%=title%>
                        </a>
                        <test class="date"><%=DateTime%>
                        </test>
                    </div>
                    <%
                        }
                        while (cot<onepagenum)
                        {
                            cot++;
                    %>
                    <div class="title03" style="width: 100%;align-content: center;margin: 0 auto">
                        <a class="articletitle" style="color: #000;">
                        </a><br>
                        <test class="date">
                        </test>
                    </div>
                    <%
                        }
                    %>
                    <div>
                        <ul>
                            <li>
                                <span>每页&nbsp;<em><%=onepagenum%></em>&nbsp;记录&nbsp;</span>
                                <span>总共&nbsp;<em><%=count%></em>&nbsp;记录&nbsp;</span>
                            </li>
                            <li >
                                <a style="color: black" href="getrootpart.jsp?rootpartof=<%=rootpartof%>&thispage=0" target="_self"><span>第一页</span></a>
                                <a style="color: black" href="getrootpart.jsp?rootpartof=<%=rootpartof%>&thispage=<%=thispage-1%>" target="_self"><span>&lt;&lt;上一页</span></a>
                                <a style="color: black" href="getrootpart.jsp?rootpartof=<%=rootpartof%>&thispage=<%=thispage+1%>" target="_self"><span>下一页&gt;&gt;</span></a>
                                <a style="color: black" href="getrootpart.jsp?rootpartof=<%=rootpartof%>&thispage=<%=lastpage%>" target="_self"><span>尾页</span></a>
                            </li>
                            <li>
                                <span>页码&nbsp;<em><%=thispage + 1%></em>/<em><%=lastpage + 1%></em></span>
                                <form action="getrootpart.jsp" method="post">
                                <span><input type="text" name="thispage" id="thispage"><input type="hidden"
                                                                                              value=""></span>
                                    <input type="hidden" name="rootpartof" value="<%=rootpartof%>">
                                    <input type="hidden" name="jy" value="1">
                                    <span><input type="submit" value="跳转"></span>
                                </form>
                            <br><br><br>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </td>
    </tr>
</table>
</body>
</html>
