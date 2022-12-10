<%--
  @Author: SoHugePenguin
  Date: 2022/12/10
  Time: 22:06
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>四大域对象获取数据</title>
</head>
<body>
<%--getAttribute--%>
<%
    out.print("<p>" + pageContext.getAttribute("userName1") + "</p>");
    out.print("<p>" + request.getAttribute("userName2") + "</p>");
    out.print("<p>" + session.getAttribute("userName3") + "</p>");
    out.print("<p>" + application.getAttribute("userName4") + "</p>");

%>
</body>
</html>
