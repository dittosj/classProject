<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/views/include/basicset.jsp"  %>
<style>
	.table{
		width : 100%;
	}
	
	td, th{
		border-bottom: 1px solid #ddd;
		text-align: center;
		padding : 5px;
	}
	
	.nowpage {
		font-size: 1.5em;
		font-weight: bold;
	}
	
	.paging{
		text-align: center;
	}
	
	.searchBox {
		text-align : right;
		border : 1px solid #ddd;
		magin : 15px 0;
		padding : 10px 20px;
		background-color: #eee;
	}
</style>

</head>
<body>
	<%@ include file="/WEB-INF/views/include/header.jsp"%>
	<%@ include file="/WEB-INF/views/include/nav.jsp"%>

	<div class="contents">
		<h2 class="content_title">회원 리스트</h2>
		<hr>
		<div class="content">
		
			<div class="searchBox">
				<form>
					검색타입 
					<select name="searchType">
						<option value="id">아이디</option>
						<option value="name">이름</option>
						<option value="both">아이디+이름</option>
					</select>
					검색 키워드 
					<input type="text" name="keyword">
					<input type="submit" value="검색">					
				</form>
			</div>
			<table class="table">
				<tr>
					<td>idx</td>
					<td>id</td>
					<td>name</td>
					<td>photo</td>
					<td>registdate</td>
					<td>삭제</td>
				</tr>
				<c:forEach items="${listView.memberList}" var="member">
				<tr>
					<td>${member.idx}</td>
					<td>${member.memberid}</td>
					<td>${member.membername}</td>
					<td> 
						<img src="<c:url value="/fileupload/member/${member.memberphoto}"/>">
					</td>
					<td>
						<fmt:formatDate value="${member.regdate}" pattern="yyyy.MM.dd"/>
					</td>
					<td><a href="javascript:deleteMember(${member.idx});">삭제</a></td>
				</tr>		
				</c:forEach>		
			</table> 
			<div class="paging">
			
				<c:if test="${listView.totalMemberCount > 0}">
				<c:forEach var="num" begin="1" end ="${listView.totalPageCount}">
					[ <a class="${listView.pageNumber eq num ? 'nowpage' : ''}" href="<c:url value="/member/list" />?p=${num}&searchType=${param.searchType}&keyword=${param.keyword}">${num}</a> ]
				</c:forEach>
				</c:if>
			</div>
		</div>
	</div>

	<%@ include file="/WEB-INF/views/include/footer.jsp"%>

<script type="text/javascript">
	function deleteMember(idx){
		if(confirm('정말로 삭제하시겠습니까?')){
			location.href = '<c:url value="/member/delete?idx="/>' + idx;
		}
		
	}
</script>
</body>
</html>