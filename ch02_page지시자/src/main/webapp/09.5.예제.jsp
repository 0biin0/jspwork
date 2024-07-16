<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>혈액형</title>
</head>
<body>
<%

	String bloodtype = request.getParameter("bloodtype");
%>
 
 	<% if(bloodtype.equals("A")){%>
 		<jsp:forward page="09.1.A.jsp">
 	<% }else if(bloodtype.equals("B")){%>
 		<jsp:forward page="09.2.B.jsp">
 	<%}else if(bloodtype.equals("O")){%>
 		<jsp:forward page="09.3.O.jsp">
 	<% }else{%>
 		<jsp:forward page="09.4.AB.jsp">
 	<%} %>
 	
 

</body>
</html>