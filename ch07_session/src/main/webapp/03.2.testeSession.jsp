<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
   Enumeration name = session.getAttributeNames();
   while(name.hasMoreElements()) {
      String sName = (String)name.nextElement();
      String value = (String)session.getAttribute(sName);
      out.print("seesion name : " + sName + "<p/>");
      out.print("seesion vlaue : " + value + "<p/>");
   }
%>

</body>
</html>