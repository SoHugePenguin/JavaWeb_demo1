<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%--
  @Author: SoHugePenguin
  Date: 2022/12/11
  Time: 20:34
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<style type="text/css">
    body {
        background-color: black;
        color: #dfdfdf;
    }

    h3 {
        color: red;
    }
</style>
<body>
<%
    String text = "text1";
    pageContext.setAttribute("user", "zhangSan");
    request.setAttribute("user", "liSi");
    session.setAttribute("user", "wangWu");
    application.setAttribute("user", "zhaoLiu");

    List<String> list = new ArrayList<>();
    list.add("str1");
    list.add("str2");
    list.add("str3");
    request.setAttribute("list", list);

    Map map = new HashMap<>();
    map.put("qwq", 1);
    map.put("awa", "qwq");
    request.setAttribute("map", map);
%>
<h3>局部变量不能获取[应用&lt;%=str%&gt;来获取局部变量]</h3>
<h4>文本${text}</h4>
<h3>获取域对象：取到即停止，取不到再往下找</h3>
<h4>${user}</h4>
<h3>Scope获取指定域范围的域对象：</h3>
<h4>${pageScope.user}&nbsp;
    ${requestScope.user}&nbsp;
    ${sessionScope.user}&nbsp;
    ${applicationScope.user}</h4>

<h3>获取List数组</h3>
<h4>list: ${list.size()}个长度</h4>
<h4>${list}</h4>
<h4>${map}</h4>

<h3>EL表达式运算符/逻辑符</h3>
${"a" == "a"}<br/>
${1+1}<br/>
${"a" >= "b"}<br/>
${"a" eq "b"}<br/>
eq等同于==<br/>
${1+1 == 2 && 2+2 == 4 && 3+3 == 5}<br/>
${1+1 == 2 || 2+2 == 4 || 3+3 == 5}<br/>


</body>
</html>
