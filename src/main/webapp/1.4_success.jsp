<%--
  @Author: SoHugePenguin
  Date: 2022/12/11
  Time: 1:59
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title> 登录成功界面</title>
</head>
<body>
<h1>登录成功</h1>
<h2>亲爱的<%=session.getAttribute("userName")%>，欢迎回家！</h2>
</body>
</html>
