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
	int totalBuffer = out.getBufferSize();
	int remainBuffer = out.getRemaining();
	int useBuffer = totalBuffer - remainBuffer;

%>
	총 버퍼 크기 : <%= totalBuffer %>byte<br>
	현재 버퍼 사용량 : <%=useBuffer %>byte<br>
	남은 버퍼 크기 : <%=remainBuffer %>byte
	
</body>
</html>