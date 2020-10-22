<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cgv_moviedetail</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<table class="table">
			<thead>
				<tr>
					<th>영화번호</th>
					<th>영화이름</th>
					<th>줄거리</th>
					<th>트레일러</th>
					<th>장르</th>
					<th>런타임</th>
					<th>관람가</th>
					<th>감독</th>
					<th>개봉일</th>
					<th>출연진</th>
					<th>평점</th>
					<th>예매율</th>
					<th>누적관객수</th>
					<th>포스터사진</th>
					<th>제작사</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="dto" items="${movie_detail}" varStatus="status">
					<tr>
						<td>${dto.mv_num}</td>
						<td>${dto.mv_nm}</td>
						<td>${dto.mv_cont}</td>
						<td>${dto.mv_tr}</td>
						<td>${dto.mv_genre}</td>
						<td>${dto.mv_rt}</td>
						<td>${dto.mv_age}</td>
						<td>${dto.mv_dt}</td>
						<td>${dto.mv_rdate}</td>
						<td>${dto.mv_ac}</td>
						<td>${dto.mv_sc}</td>
						<td>${dto.mv_rate}</td>
						<td>${dto.mv_att}</td>
						<td>${dto.mv_p}</td>
						<td>${dto.mv_m}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
</body>
</html>