<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.tjoeun.vo.Person" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL scope</title>
</head>
<body>
	<h3>1. 기존 방식대로 스크립트릿 표현식을 이용하여 각 scope에 담겨있는 값을 화면에 출력</h3>
	<%
		//.getAttribute는 Object타입으로 반환
		String classRoom = (String)request.getAttribute("classRoom");
		Person student = (Person)request.getAttribute("student");
		
		String academy = (String)session.getAttribute("academy");
		Person teacher = (Person)session.getAttribute("teacher");
	%>
	<p>
		학원명 : <%=academy %><br>
		강의장 : <%=classRoom %><br>
		강사 : <%=teacher.getName() %>
	</p>
</body>
</html>