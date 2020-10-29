<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<html>
<head>
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style type="text/css">
.wrap {
	width: 1200px;
	margin: 0 auto;
	background-color: gray;
}
</style>
</head>
<body>
	<div class="wrap">
		<div class="header_container">
			<%@ include file="./home_header.jsp"%>
		</div>
		<div class="slider_container">
			<%@ include file="./home_slider.jsp"%>
		</div>
		<nav class="navbar navbar-expand-sm bg-dark">
			<ul class="navbar-nav">
				<li class="nav-item"><a
					class="nav-link text-white font-weight-bold ml-3"
					href="${root}/ticket/main">영화예매</a></li>

				<li class="nav-item"><a
					class="nav-link text-white font-weight-bold ml-3"
					href="${root}/theater">영화관</a></li>

				<li class="nav-item"><a
					class="nav-link text-white font-weight-bold ml-3"
					href="${root}/ev1">이벤트</a></li>

				<li class="nav-item"><a
					class="nav-link text-white font-weight-bold ml-3"
					href="${root}/list">영화검색</a></li>

			</ul>
		</nav>

<table class="table table-hover">
			<thead>
				<tr>
				
					<th>영화이름</th>
				<th>포스터사진</th>
				</tr>
			</thead>
			<c:forEach var="dto" items="${home_list}">
				<tr>
					<td><a href="${root}/mdetail?mv_nm=${dto.mv_nm}">${dto.mv_nm}</a></td>
						<td>${dto.mv_p}</td>
				</tr>
			</c:forEach>
		</table>


		<%@ include file="./home_footer.jsp"%>
	</div>
</body>
</html>
