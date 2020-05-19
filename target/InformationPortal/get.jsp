<%--
  Created by IntelliJ IDEA.
  User: cyd
  Date: 2020/5/18
  Time: 22:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    out.println(request.getParameter("editor1"));
%>
</body>
</html>