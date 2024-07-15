<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String bloodtype = request.getParameter("bloodtype");
%>
<%=name %>님의 혈액형은 <%=bloodtype %>이고
<h1><%=bloodtype %>형의 특징</h1>
<li>
<ol>우유부단하다</ol>
<ol>처음보는 사람과도 이야기를 잘한다</ol>
<ol>노력하는 타입이다</ol>
</li>

</body>
</html>