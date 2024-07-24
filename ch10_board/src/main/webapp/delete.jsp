<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="board.*"%>
    
    <%
	int num = Integer.parseInt(request.getParameter("num"));
    String nowPage = request.getParameter("nowPage");
	Board board = (Board)session.getAttribute("bean");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
table th{
	background-color: #FA5858; 
    color: white;
    text-align: center;
    padding: 10px; 
}
</style>
<body>
<form action="boardDelete" method="post">
		<table align="center">
			<tr>
				<th colspan="2"  >사용자의 비밀번호를 입력해주세요</th>
			</tr>
			<tr>
			<td align="center"><input type="password" name="pass"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="삭제완료">&emsp;
					<input type="reset" value="다시쓰기">&emsp;
					<input type="button" value="뒤로" onclick="history.go(-1)">
				</td>
			</tr>
			
		</table>
	<input type="hidden" name="num" value="<%=num %>">
	<input type="hidden" name="nowPage" value="<%=nowPage %>">
	</form>
</body>
</html>