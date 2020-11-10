<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<script type="text/javascript"
	src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

<style type="text/css">
#slider-wrap {
	width: 1920px;
	height: 560px;
	overflow: hidden; /* 이거 안하면 위로 네비가 겹쳐서 나옴*/
	position: relative;
	margin: 0 auto;
}

.slide {
	width: 100%;
	height: 560px;
	position: relative;
}

.slide img {
	width: 100%;
	display: block;
	object-fit: cover;
}
</style>
</head>
<body>

	<div id="slider-wrap">
		<div class="slide">
			<a href="${root}/mdetail?mv_nm=삼진그룹영어토익반"> 
				<img src="${root}/resources/image/samjin.png" />
			</a>
		</div>
		<div class="slide">
			<a href="${root}/mdetail?mv_nm=도굴">
				<img src="${root}/resources/image/dogul.png" />
			</a>
		</div>
		<div class="slide">
			<a href="${root}/mdetail?mv_nm=더%20위치스">
				<img src="${root}/resources/image/thewitches.png" />
			</a>
		</div>
		<div class="slide">
			<a href="${root}/mdetail?mv_nm=살인의추억">
				<img src="${root}/resources/image/murder.png" />
			</a>
		</div>
	</div>

	<script type="text/javascript">
		$(function() {
			$('#slider-wrap').slick({
				slide : '.slide', //슬라이드 되어야 할 태그 ex) div, li 
				infinite : true, //무한 반복 옵션	 
				slidesToShow : 1, // 한 화면에 보여질 컨텐츠 개수
				slidesToScroll : 1, //스크롤 한번에 움직일 컨텐츠 개수
				speed : 100, // 다음 버튼 누르고 다음 화면 뜨는데까지 걸리는 시간(ms)
				arrows : false, // 옆으로 이동하는 화살표 표시 여부
				dots : false, // 스크롤바 아래 점으로 페이지네이션 여부
				autoplay : true, // 자동 스크롤 사용 여부
				autoplaySpeed : 1000, // 자동 스크롤 시 다음으로 넘어가는데 걸리는 시간 (ms)
				pauseOnHover : true, // 슬라이드 이동	시 마우스 호버하면 슬라이더 멈추게 설정
				vertical : false, // 세로 방향 슬라이드 옵션
				draggable : true, //드래그 가능 여부 
				accessibility : true, //탭이나 방향키로 오브젝트 선택 가능여부
				adaptiveHeight : false, //슬라이드 높이에 맞게 높이 자동조정 여부
				centerMode : false,
				variableWidth : false
			});

		});
	</script>
</body>
</html>