<%@ page import="com.example.javawebdemo1.data.Account" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  @Author: SoHugePenguin
  Date: 2022/12/11
  Time: 21:43
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Title</title>
    <style type="text/css">
        body {
            background-color: black;
            color: #dfdfdf;
        }

        h3 {
            color: red;
        }
    </style>

</head>
<body>
<%
    //javaBean
    Account member1 = new Account("zhangSan", "12345678", "男");
    Account member2 = new Account();
    pageContext.setAttribute("member1", member1);
    pageContext.setAttribute("member2", member2);

    //str
    pageContext.setAttribute("str1", "str1");
    pageContext.setAttribute("str2", null);
    pageContext.setAttribute("str3", "");

    //list
    List<String> list1 = new ArrayList<>();
    List<String> list2 = new ArrayList<>();
    list2.add("qwq1");
    pageContext.setAttribute("list1", list1);
    pageContext.setAttribute("list2", list2);
    pageContext.setAttribute("list3", null);

%>
<h3>empty返回JavaBean是否为空</h3>
<h4>对象只要生成了就不为空，尽管数据可能都是null，但empty返回就是false</h4>
${empty member1} ${member1}<br/><%--false--%>
${empty member2} ${member2.toString()}<br/><%--false--%>

<h3>empty返回String是否为空</h3>
${empty str1} ${str1}<br/><%--false--%>
${empty str2} ${str2}<br/><%--true--%>
${empty str3} ${str3}<br/><%--true--%>

<h3>empty返回List是否为空</h3>
${empty list1} ${list1}<br/><%--true--%>
${empty list2} ${list2}<br/><%--false--%>
${empty list3} ${list3}<br/><%--true--%>

<h3>剩下的自己举一反三...</h3>
</body>
</html>
