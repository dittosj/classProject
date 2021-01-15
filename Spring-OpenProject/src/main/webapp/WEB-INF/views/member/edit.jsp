<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${result eq 1}">}">
<script>
	alert("요청하신 회원정보가 수정되었습니다.");
	location.href = '<c:url value="/member/list"/>';
</script>
</c:if>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/views/include/basicset.jsp"  %>
<style>
	div.contents>h1{
		text-align: center;
	}
</style>
</head>
<body >
	<%@ include file="/WEB-INF/views/include/header.jsp"  %>
		
	<%@ include file="/WEB-INF/views/include/nav.jsp"  %>
	
	<div class="contents">
		<h1>
			요청하신 인덱스의 회원 정보가 존재하지 않습니다. <br>
			다시 확인 후 시도해주세요.
		</h1>
	</div>
	
	<%@ include file="/WEB-INF/views/include/footer.jsp" %>

</body>
</html>