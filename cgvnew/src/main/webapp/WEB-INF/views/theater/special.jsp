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
<link rel="stylesheet" type="text/css"
	href="${root}/resources/css/header.css">
<style type="text/css">
body {
	padding: 30px 0;
	font-weight: 300;
	font-size: 15px;
	background-image: linear-gradient(to top, #4d4d4d 0%, black 100%);
}


* {
	/* box-sizing: border-box; */
}

.contentBox {
	max-width: 948px;
	margin: 4em auto;
	padding: 4em;
	background: #fff;

}

section.cards {
	margin: 0 auto;
	display: grid;
	grid-auto-flow: row dense;
	grid-template-columns: repeat(3, 256px);
	grid-template-rows: repeat(12, 196px);
	grid-gap: 16px;
}

.card {
	display: flex;
	border: 1px solid rgba(0, 0, 0, 0);
	transition: all 0.25s ease;
}

.card:hover {
	transform: scale(1.05);
}

.vertical {
	flex-direction: column;
	grid-row: span 2; 
	grid-column: span 1;
}
.small {
	flex-direction: column;
	grid-row: span 1; 
	grid-column: span 1;
}

.horizontal {
	flex-direction: row;
	grid-row: span 1;
	grid-column: span 2;
}

.reverse-horizontal {
	flex-direction: row-reverse;
	grid-row: span 1;
	grid-column: span 2;
}

.horizontal .card__img, .reverse-horizontal .card__img {
	height: 100%;
}

.vertical .card__img {
	width: 100%;
}
.titleBox{

	margin-bottom: 40px;
}


.litTitle {
	font-size: 12px;
	letter-spacing: 2px;
	opacity: 0.9;
	color: #595959;
	
}

.bigTitle {
	color: #f46D0D;
	font-size: 40px;
	opacity: 0.8;
	font-weight: 700;
	padding-bottom: 0.5em;
	transition: all 0.25s ease;
	
}

.card__excerpt {
	font-size: 16px;
	padding-bottom: 0.5em;
}



/* font */
h5 {
	font-weight: bold;
}
</style>
</head>
<body>
	<div class="container">
		<div class="header_container">
			<%@ include file="../home_header.jsp"%>
		</div>
		<div class="contentBox">
			<div class="form-inline mb-3">
				<h5 class="mr-5">특별관</h5>
				<h6>
					<a href="${root}/theater">전체극장</a>
				</h6>
			</div>
				<p class="litTitle">영화, 그 이상의 감동</p>
			<div class="titleBox">
				<h1 class="bigTitle">CGV SPECIAL</h1>
				<h6>CGV만의 특별함을 느껴보세요.</h6>
			</div>

			<section class="cards">
				<article class="vertical card">
					<img class="card__img"
						src="https://picsum.photos/256/196/?image=990" class="card__image">
					<div class="card__content">
						<div class="card__type">세로</div>
						<div class="card__title">Test Post: Electric Boogaloo</div>
						<div class="card__date">14 March 2011 &middot; 5 min read</div>
						<div class="card__excerpt">This is a test article, in a
							perculiar context, to see whether grid and flexbox works to make
							a blog...</div>
						<div class="card__tags">
							<div class="tag">
								<i class="fa fa-tag"></i>test
							</div>
							<div class="tag">
								<i class="fa fa-tag"></i>test
							</div>
						</div>
					</div>
				</article>
				<article class="horizontal card">
					<img class="card__img"
						src="${root}/resources/image/special4DX.jpg" class="card__image">
				
				</article>
				<article class="small card">
					<img class="card__img"
						src="https://picsum.photos/256/196/?image=123" class="card__image">
				</article>
				<article class="small card">
					<img class="card__img"
						src="https://picsum.photos/256/196/?image=421" class="card__image">
				</article>
				<article class="reverse-horizontal card">
					<img class="card__img"
						src="https://picsum.photos/256/196/?image=161" class="card__image">
					<div class="card__content">
						<div class="card__type">가로</div>
						<div class="card__title">Test Post: Electric Boogaloo</div>
						<div class="card__date">14 March 2011 &middot; 5 min read</div>
						<div class="card__excerpt">This is a test article, in a
							perculiar context, to see whether grid and flexbox works to make
							a blog...</div>
						<div class="card__tags">
							<div class="tag">
								<i class="fa fa-tag"></i>test
							</div>
							<div class="tag">
								<i class="fa fa-tag"></i>test
							</div>
						</div>
					</div>
				</article>
				<article class="small card">
					<img class="card__img"
						src="https://picsum.photos/256/196/?image=721" class="card__image">
				</article>
				
				
			</section>
		</div>
	</div>
</body>
</html>