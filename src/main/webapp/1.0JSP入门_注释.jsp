<%--
  @Author: SoHugePenguin
  Date: 2022/11/28
  Time: 17:36
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" %>
<html>
<head>
    <title>Title</title>
    <style type="text/css">
        body {
            background-color: black;
            color: antiquewhite;
        }
    </style>
</head>
<body>
//写ScriptLet小程序要先导入jsp-api依赖,tomcat的lib自带
<%--
JSP一共有三种Scriptlet脚本小程序:
第一种: java脚本段，可以写Java代码，定义局部变量、编写语句等
<%
    // 可以写Java代码
%>
第二种:声明，声明全局变量、方法、类等
<%!
    // 声明全局变量
%>
第三种:输出表达式，可以输出变量或字面量<%=数值 %>
--%>
<%!
    String str = "qwq";
%>
<%
    out.write("<p>" + str + "</p>");
    //在浏览器中写入信息
%>
</body>
</html>
