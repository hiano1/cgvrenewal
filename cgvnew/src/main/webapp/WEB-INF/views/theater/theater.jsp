<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<h1>중분류</h1>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>번호</th>
					<th>이름</th>
					<th>좌표</th>
					<th>주소</th>
					<th>버스</th>
					<th>지하철</th>
					<th>대분류번호</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="mtd" items="${mtheaterdetail}" varStatus="status">
					<tr>
						<td>${mtd.tm_num}</td>
						<td>${mtd.tm_nm}</td>
						<td>${mtd.th_add}</td>
						<td>${mtd.th_addn}</td>
						<td>${mtd.th_bus}</td>
						<td>${mtd.th_sub}</td>
						<td>${mtd.tl_num}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>