<%@ page import="java.util.Random" %><%--
  @Author: SoHugePenguin
  Date: 2022/12/10
  Time: 20:05
  动态包含相当于方法的调用效率高，与静态包含不同之处在于产生的文件是多个的
  动态包含如果不传参不要放任何内容否则会报错
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>动态包含</title>
</head>
<body>

<div>
    <h2>主题部分</h2>
</div>
<%--
无参动态包含
--%>
<jsp:include page="1.2JSP动态包含_zuoCe.jsp">
    <jsp:param name="" value=""/>
</jsp:include>
<%--
有参动态包含
--%>
<%
    Random ran = new Random();
    String str = "yourName";
    Long account = ran.nextLong(88888888) + 11111111;
%>
<jsp:include page="1.2JSP动态包含_touBu.jsp">
    <jsp:param name="userName" value="<%=str%>"/>
    <jsp:param name="userAccount" value="<%=account%>"/>
</jsp:include>
</body>
</html>
