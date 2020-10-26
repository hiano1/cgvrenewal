<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list_search</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		
		<h1 class="text-muted text-center mt-3 mb-3">
			자유 게시판 검색
		</h1>
		<!-- search start -->
		<ul class="pagination justify-content-center mt-5 mb-5">
			<li class="mr-1">
				<select id="search_option" class="form-control">
					<option value="title"
<c:if test="${search_dto.search_option == 'title'}">
	selected="selected"
</c:if>
					> 제 목 </option>
					<option value="writer"
<c:if test="${search_dto.search_option == 'writer'}">
	selected="selected"
</c:if>
					> 작 성 자 </option>
				</select>
			</li>
			<li class="mr-1">
				<input	type="text" id="search_word"
						value="${search_dto.search_word}"
						class="form-control">
			</li>
			<li>
				<button type="button" id="btn_search"
						class="btn btn-primary">
					s e a r c h </button>
			</li>
		</ul>
		<script type="text/javascript">
		$(document).ready(function() {
			$("#btn_search").click(function() {
				location.href="${root}/board/list_search"
					+"?search_option="+$("#search_option").val()
					+"&search_word="+$("#search_word").val()
			});//click
			$("#search_word").keyup(function() {
				if(event.keyCode == 13){
					$("#btn_search").click();
				}
			});//keyup
		});//ready
		</script>
		<!-- search end -->
		<table class="table table-hover">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>조회수</th>
					<th>작성일</th>
				</tr>
			</thead>
			<c:forEach var="dto" items="${board_list}">
				<tr>
					<td>${dto.bno}</td>
					<td>${dto.title}</td>
					<td>${dto.writer}</td>
					<td>${dto.view_cnt}</td>
					<td>${dto.write_date}</td>
				</tr>
			</c:forEach>
		</table>







/////////////////////////////////////////////////////////////////////////////////









	</div>
</body>
</html>







