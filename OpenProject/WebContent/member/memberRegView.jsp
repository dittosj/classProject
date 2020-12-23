<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	//int result = (Integer)request.getAttribute("result");

%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%-- <link rel="styleSheet" href="${pageContext.request.contextPath}/css/default.css"> --%>
<link rel="styleSheet" href="${url_defaultCss}">
<style>
</style>
</head>
<body >


	<%@ include file="/include/header.jsp"  %>
		
	<%@ include file="/include/nav.jsp"  %>
	
	<div class="contents">
		<h2 class="content_title">회원 가입</h2>
		<hr>
		<div class="content">
		
			<c:if test="${result>0}">
			회원가입이 정상적으로 완료되었습니다.
			</c:if>
			<c:if test="${result==0}">
			회원가입이 실패하였습니다.
			</c:if>
<%--

	if(result > 0){
		out.println("회원가입이 정상적으로 완료되었습니다.");
	}
	else{
		out.println("회원가입이 실패하였습니다.");
	}
--%>		
		
		</div>
	</div>
	
	<%@ include file="/include/footer.jsp" %>

	
	
	
	
	
	
	
	
	


</body>
</html>