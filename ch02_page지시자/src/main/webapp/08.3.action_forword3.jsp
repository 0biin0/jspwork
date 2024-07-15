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
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
	%>
	당신의 아이디는 <%=id %>이고,<p/>
	 당신의 비밀번호는 <%=pw %>입니다
</body>
</html>