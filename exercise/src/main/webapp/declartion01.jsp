<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- <%! 선언문  %> : 자바 변수나 메소드를 정의하는데 사용한다 --%>
<%-- <% 스크립틀릿(scriptlet)%> : 저버 로직코드를 작성하는데 사용한다  --%>
<%-- <%=표현문 %> : 변수, 계산식, 메소드 로출 결과를 문자열 형태로 출력하는데 사용한다 --%>

<%! int count = 0; %>

Page Count is

<%
	out.println(++count);
%>

</body>
</html>