<%--
  @Author: SoHugePenguin
  Date: 2022/11/27
  Time: 22:42
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<pre style="color: red">
JSP中一种有两种类型的注释:
显式注释
能够在客户端查看的注释
1.继承HTML风格的注释   &lt;!-- HTML注释 --&gt;
    <!-- HTML注释 -->
2.隐式注释
不能在客户端查看的注释
    1.JSP自己的注释  &lt;%--JSP自己的注释--%&gt;
        <%--JSP自己的注释--%>
    2.继承Java风格的注释
// 单行注释
/*多行注释 */
</pre>

<%--以下是内嵌java脚本--%>
<%
    //这是单行注释，客户端看不见的
    /*
    这是多行注释，客户端看不见的
     */
%>

<a href="hello-servlet"> hello-servlet </a>
<br/>
<a href="index.jsp"> index.jsp </a>
<br/>
<a href="qwq.jsp"> qwq.jsp </a>
<br/>
</body>
</html>
