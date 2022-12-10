<%--
  @Author: SoHugePenguin
  Date: 2022/12/10
  Time: 21:17
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<div style="background-color: cadetblue; border: 2px solid orangered">
    <h1>我是头部内容</h1>
</div>
<%
    out.println(request.getParameter("userName"));
    out.println(request.getParameter("userAccount"));
%>
</body>
</html>
