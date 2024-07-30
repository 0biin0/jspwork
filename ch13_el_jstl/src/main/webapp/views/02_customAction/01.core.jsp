<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>JSTL Core Library</h1>
	
	<h3>1. 변수(속성 == attribute)</h3>
	<pre>
		* 변수 선언과 동시에 초기화 (c:set var="" value ="" [scope=""])
		 - 변수를 선언하고 초기값을 대입해두는 기능을 제공
		 - 해당 변수를 어떤 scope에 담아둘건지 지정가능(생략시 기본값은 pageScope에 담김)
		 	=> 해당 scope에 setAttribute를 통해 key-vlaue형태로 데이터를 담아 놓는것이라고 생각하면 됨
		 	=> c:set으로 선언된 변수는 EL로 접근하여 사용가능
		 	
		 - 변수 타입을 별도로 지정하지 않음
		 - 초기값은 반드시 지정해둬야 함!!! 
	</pre>
	
	<c:set var="num1" value="10"/> <!-- pageContext.setAttribute("num1", "10") -->
	<c:set var="num2" value="20" scope="request" />  <!-- request.setAttribute("num2", "20") -->
	
	num1 변수값 : ${ num1 } <br>
	num2 변수값 : ${ num2 } <br>
	
	<%-- <c:set var="result" value="num1+ num2"/>  그냥 문자열 출력됨 --%> 
	<c:set var="result" value="${num1+num2 }" scope="session"/>
	result 변수값 : ${ result } <br><br>
	
	pageScope.num1 : ${pageScope.num1 }<br>
	requestScope.num2 : ${requestScope.num2 }<br>
	sessionScope.result : ${sessionScope.result }<br>
	requestScope.result : ${requestScope.result } <!-- =>값이 없으므로 아무것도 안나옴 --%>
	
	<!-- value속성 대신에 시작태그와 종료태그 사이에 초기값 지정 가능 -->
	<c:set var="result" scope="request">
	  777777
	</c:set>
	requestScope.result : ${requestScope.result }<br><br>
	
	<hr>
	
	<h3>1.2. 변수 삭제</h3>
	<pre>
	 *변수 삭제 : (c:remove var="제거하고자하는 변수명" [scope=""])
     - 해당 scope영역에서 해당 변수를 찾아서 제거하는 태그
     - scope 지정 생략시 모든 scope에서 해당 변수를 다 찾아서 제거함
     	=> 해당 scope에 .removeAttribute를 통해 제거
	</pre>
	
	삭제전 result : ${result }<br>
	
	 1) 특정 scope지정하여 삭제<br>
	<c:remove var="result" scope="request"/>
	삭제후 result : ${result }<br> 
	
	2) 모든 scope에서 삭제<br>
	<c:remove var="result"/>
	삭제후 result : ${result }<br>
	
	<hr>
	
	<h3>1.3. 변수 출력</h3>
	
	<pre>
	 데이터를 출력하고자 할 때 사용하는 태그
	 *변수(데이터) 출력 : (c:out value="출력하고자하는 값" [default="기본값"] [escapeXml="true|false"])
	</pre>
	
	<c:out value="${num1 }"/><br>
	<c:out value="${abcd }" default="없음"></c:out> <!-- 없으면 없음 출력!! => default 설정해줬으니까~ --><br>
	
	<c:set var="outTest" value="<b>출력테스트</b>" />
	
	<c:out value="${outTest }" /> <br> <!-- escapeXml 생략시 기본값 = true 태그로 해석하지 않음(문자열로 취급) -->
	<c:out value="${outTest }" escapeXml="false" /><br> <!-- 태그 해석함 -->
	
	<hr>
	
	<h3>2. 조건문 - if</h3>
	<pre>
	* (c:if test="조건식")
	- java의 if문과 비슷한 역할을 하는 구문
	- 조건식은 test속성에 작성(단, EL구문으로 기술해야 됨)
	</pre>
	<%-- 
	 jsp 방식
	<%
		if(10 > 3){
			%>
			<b>10</b>
		<% }
	%> --%>
	<c:if test="${num1 > num2 }">
	 	<b>num1이 num2보다 크다</b>
	</c:if>
	
	
	
	
	
	<br><br><br><br><br><br><br><br>
</body>
</html>