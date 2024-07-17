<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, ch06.*" %>
<jsp:useBean id="pool" class="ch06.UseBeanDBPool7" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
		<tr>
			<th>사원번호</th>
			<th>사원명</th>
			<th>이메일</th>
			<th>전화번호</th>
			<th>직급코드</th>
		</tr>
	<%
		ArrayList<bean2> alist = pool.getList();
		for(int i=0; i<alist.size(); i++) {
			bean2 bean = alist.get(i);
	%>
		<tr>
			<td><%=bean.getEmp_id() %></td>
			<td><%=bean.getEmp_name() %></td>
			<td><%=bean.getEmail() %></td>
			<td><%=bean.getPhone() %></td>
			<td><%=bean.getJob_code() %></td>
		</tr>
	<%
		}
	%>
	</table>
</body>
</html>