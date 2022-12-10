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
    </style>
</head>
<body>
<p>测试账号：qwq   测试密码：123456</p>
<form action="login" method="post">
    <label>
        姓名:
        <input type="text" name="userName">
    </label><br/>
    <label>
        密码:
        <input type="password" name="userPwd">
    </label><br/>
    <button>登录</button>
    <%
        String showText;
        showText = (String) request.getAttribute("message");
    if(showText == null) showText = "";
    %>
    <span style="color: red;font-size: 12px"><%=showText%></span>
</form>
</body>
</html>
