<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>special</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="${root}/resources/css/header_navi.css">
<link rel="stylesheet" type="text/css" href="${root}/resources/css/theater.css">
<link rel="stylesheet" type="text/css" href="${root}/resources/css/body.css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@600&display=swap" rel="stylesheet">

</head>
<body>
		<div class="wrap">
				<%@ include file="../header_navi.jsp"%>
		</div>
		
		<div class="backimg">
			<img src="${root}/resources/image/theaterimg.png" />
		</div>
		
		<div class="wrap">
		<div class="contentBox">
			<div class="form-inline mb-3">
				<h5 class="mr-5">특별관</h5>
				<h6>
					<a href="${root}/theater">전체극장</a>
				</h6>
			</div>
				<p class="litTitle">영화, 그 이상의 감동</p>
			<div class="titleBox">
				<h6 class="pt">CGV SPECIAL</h6>
				<h3 class="bigTitle">CGV만의 특별함을 느껴보세요.</h3>
			</div>

			<section class="cards">
				<article class="vertical card">
					<img class="card__img"
						src="${root}/resources/image/cinefore.jpg" class="card__image">
				</article>
				<article class="horizontal card">
					<img class="card__img"
						src="${root}/resources/image/special4DX.jpg" class="card__image">
				</article>
				<article class="small card">
					<img class="card__img"
						src="${root}/resources/image/cinekids.jpg" class="card__image">
				</article>
				<article class="vertical card">
					<img class="card__img"
						src="${root}/resources/image/sweetbox.jpg" class="card__image">
				</article>
				<article class="reverse-horizontal card">
					<img class="card__img"
						src="${root}/resources/image/cineliving.jpg" class="card__image">
				</article>
				
				
				
			</section>
		</div>
	</div>
</body>
</html>