<%--
  Created by IntelliJ IDEA.
  User: cyd
  Date: 2020/5/18
  Time: 22:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home Page</title>
</head>
<body>
Hello World<br>
<script type="text/javascript"src="ckeditor/ckeditor.js"></script>
<form method="post" action="get.jsp">
    <textarea name="editor1" id="editor1" rows="10" cols="80">
                This is my textarea to be replaced with CKEditor.
    </textarea>

    <input type="submit">
    <script>
        // Replace the <textarea id="editor1"> with a CKEditor
        // instance, using default configuration.
        CKEDITOR.replace( 'editor1' );
    </script>
</form>
</body>
</html>
