<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
			#slider-wrap{
				width: 1000px;
				margin : 0 auto;
			}
			.slide{
			height : 800px;
				width:1080px;
			}
	</style>
</head>
<body>
	<div id="slider-wrap">
		<div class="slide">
			<img 
				src="${root}/resources/image/3.JPG"/>
		</div>
		<div class="slide">
			<img
				src="${root}/resources/image/1.jpg" />
		</div>
		<div class="slide">
			<img
				src="${root}/resources/image/2.JPG" />
		</div>
		<div class="slide">
			<img
				src="${root}/resources/image/4.jpg"  />
		</div>
	</div>

	<script type="text/javascript">
		$(function() {
			$('#slider-wrap')
					.slick(
							{
								slide : 'div', //슬라이드 되어야 할 태그 ex) div, li 
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

							});
		
			
		});
	</script>
</body>
</html>