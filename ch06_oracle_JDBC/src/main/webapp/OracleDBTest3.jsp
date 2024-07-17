<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Connection con = null;
	Statement st = null;
	ResultSet rs = null;
	try{
		Class.forName("oracle.jdbc.OracleDriver");
		con =  DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","tjoeun", "1234");
	}catch(Exception e){
		e.printStackTrace();
	}
%>
</body>
</html>