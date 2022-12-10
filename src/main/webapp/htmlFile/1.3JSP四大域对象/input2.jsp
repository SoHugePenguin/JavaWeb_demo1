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
<%--服务器跳转界面--%>
<jsp:forward page="out.jsp">
  <jsp:param name="" value=""/>
</jsp:forward>
<%--服务端跳转除了page数据不能获取其余都能--%>
</body>
</html>
