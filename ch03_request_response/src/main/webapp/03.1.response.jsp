<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>sendRedirect Ex</h1>
	<%
		response.sendRedirect("03.2.response.jsp");
	    //response.sendRedirect("https://www.tjoeun.co.kr"); --> 링크로 바로 연결됨
	%>
</body>
</html>