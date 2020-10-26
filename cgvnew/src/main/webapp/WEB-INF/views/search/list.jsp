<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<h1 class="text-mute mt-3 mb-3 text-center">영화리스트</h1>
		<table class="table">
			<thead>


			</thead>
			<tr>
				
				<th>영화이름</th>
				<th>포스터사진</th>
			
			</tr>
			<tbody>
				<c:forEach items="${search_list}" var="dto">
					<tr>
						
						<td><a href="${root}/mdetail?mv_num=${dto.mv_num}">${dto.mv_nm}</a></td>
						<td>${dto.mv_p}</td>
					
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>