<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="product" class="test.Product" scope="session"/>
	${product}
	<form action ="selectProject.jsp" method="post">
		<select name="sel">
		<%
			for(String item : product.getProductList()){
				
				out.println("<option>" + item + "</option>");
			}
			
		%>
			
		</select>
		<input type="submit" value="send">
	
	</form>
</body>
</html>