<%@page import="util.CookieBox"%>
<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 쿠키 객체를 생성 
	Cookie c1 = new Cookie("userId", "dittosj");
	Cookie c2 = new Cookie("userName", URLEncoder.encode("이수진", "utf-8"));
	
	// 20분 지속
	c2.setMaxAge(60*20);
	
	// response.addCookie(쿠키객체)
	response.addCookie(c1);
	response.addCookie(c2);
	
	response.addCookie(CookieBox.createCookie("nicName", "dittosj"));
	response.addCookie(CookieBox.createCookie("age", "38", "/", -1));
	
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>쿠키 생성, 저장</h1>
	<h3>
		<%=c1.getName() %>=<%=c1.getValue() %><br>
		<%=c2.getName() %>=<%=URLDecoder.decode(c2.getValue(), "utf-8") %><br>
		<a href="viewCookie.jsp">쿠키 정보보기</a>
	</h3>
</body>
</html>