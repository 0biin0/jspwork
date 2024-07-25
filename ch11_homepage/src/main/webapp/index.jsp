<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="resources/css/index.css" rel="stylesheet">
<%
	String id = (String)session.getAttribute("idKey");
%>
</head>
<body>
	<header>
		<div class="logo">
			<img src="https://www.tjoeun.co.kr/images/logo.gif?v=20190918" alt="로고">
		</div>
		<nav>
			<ul class="nav">
				<li><a href="vote/voteList.jsp">투표프로그램</a></li>
				<li><a href="board/list.jsp">게시판</a></li>
				<%if(id == null) {%>
				<li><a href="member/login.jsp">로그인</a></li>
				<%}else{%>
				<li><a href="member/logout.jsp">로그인</a></li>
				<%}%>
			</ul>
		</nav>
		<div id="login">
		<%if(id == null) {%>
			<p>[<%=id %>님 로그인 상태]</p>
		<%} %>
		</div>
	</header>
	<article>
		<section>
			<img src="resources/img/슈메인사진1.png" alt="슈 사진">
		</section>
	</article>
</body>
</html>