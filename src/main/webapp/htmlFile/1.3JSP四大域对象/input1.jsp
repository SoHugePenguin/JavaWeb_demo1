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
<%--setAttribute--%>
<%
    pageContext.setAttribute("userName1" , "张三");
    request.setAttribute("userName2" , "李四");
    session.setAttribute("userName3" , "王五");
    application.setAttribute("userName4" , "赵六");
%>
<%--客户端跳转界面--%>
<a href="out.jsp">确认提交</a>
<%--客户端跳转无法获取Requst数据--%>
</body>
</html>
