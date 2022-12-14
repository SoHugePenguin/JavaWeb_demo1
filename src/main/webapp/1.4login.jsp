<%--
  @Author: SoHugePenguin
  Date: 2022/12/10
  Time: 23:11
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>简易用户登录界面</title>
    <style type="text/css">
        body {
            background-color: #343131;
            color: orange;
        }

        #zhuCe {
            text-decoration: none;
            color: greenyellow;
        }

        #zhuCe:hover {
            text-shadow: 1px 1px 2px red;
        }
    </style>
</head>
<body>
<h2>图书馆管理员登录系统</h2>
<form action="login" method="post">
    <label>
        姓名:
        <input type="text" name="userName">
    </label><br/>
    <label>
        密码:
        <input type="password" name="userPwd" id="password">
    </label><br/>
    <button>登录</button>
</form>
<%
    String showText;
    showText = (String) request.getAttribute("message");
    if (showText == null) showText = "";
%>
<span style="color: red;font-size: 12px"><%=showText%></span>
<div>
    <span style="color: #8c8c8c; font-size: 0.8em">没有账号？</span>
    <a href="1.4注册界面.jsp" id="zhuCe">这里注册！</a>
</div>
</body>
</html>
