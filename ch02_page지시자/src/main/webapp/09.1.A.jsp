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
<ol>소심하다</ol>
<ol>모든 일에 완벽을 추구한다</ol>
<ol>섬세하다</ol>
</li>

</body>
</html>