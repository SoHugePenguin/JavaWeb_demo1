<%--
  @Author: SoHugePenguin
  Date: 2022/12/14
  Time: 18:48
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>账号注册</title>
</head>
<style type="text/css">
    body {
        background-color: #343131;
        color: orange;
    }
</style>
<body>
<h2>注册系统</h2>
<form action="register" method="post">
    <label>
        新·用户名:
        <input type="text" name="userName">
    </label><br/>
    <label>
        密码:
        <input type="password" name="userPwd" id="password">
    </label><br/>
    <button>注册</button>
</form>
<%
    String showText;
    showText = (String) request.getAttribute("message");
    if (showText == null) showText = "";
    Boolean back = (Boolean) request.getAttribute("back");
%>
<span style="color: red;font-size: 12px"><%=showText%></span>
</body>
<script>
    setTimeout(jump, 3000);

    function jump() {
        if ((<%=back%>) === true) {
            window.location.href = '1.4login.jsp';
        }
    }
</script>
</html>
