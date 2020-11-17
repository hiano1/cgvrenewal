<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ticket</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="${root}/resources/css/header_navi.css">
<link rel="stylesheet" type="text/css" href="${root}/resources/css/body.css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@600&display=swap" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style type="text/css">

/* .container {
	display: flex;
	color: white;
	width: 315px;
	flex-direction: column;
	background-color: black;
} */
body {
	color: white;
	min-height: 1000px;
	font-family: 'Noto Sans KR', sans-serif;
}

.ticketBox {
	width: 90%;
	height: 800px;
	margin: 20px auto;
}

.ticketBox>h1 {
	text-align: center;
}

.left-ticketBox {
	position: relative;
	width: 23%;
	height: 800px;
	background-image: linear-gradient(to top, #4d4d4d 0%, black 100%);
	float: left;
}

.side_nav1 {
	padding: 20px 10px;
}

.right-ticketBox {
	width: 77%;
	height: 800px;
	background-color: #333333;
	float: right;
}

.rightTopWrap {
	display: flex;
}

.TopWrap {
	width: 100%;
}

.rightTopLabel {
	display: block;
	padding: 15px 32px;
	border-bottom: 1px solid grey;
}

.selLarge a {
	color: white;
	font-weight: normal;
	font-size: 15px;
	padding: 10px 15px;
}

.selLarge a:hover {
	color: red;
	border-bottom: 4px solid red;
	padding: 12px 15px;
}

table tr td a {
	color: white;
	font-weight: normal;
	font-size: 15px;
	padding: 10px 15px;
}

table tr td a:hover {
	color: red;
	border-bottom: 4px solid red;
	padding: 12px 15px;
}

.rightmidLabel {
	display: block;
	padding: 12px 25px;
	min-height: 25px;
	border-bottom: 1px solid grey;
	color: white;
}

#sel_l {
	text-align: center;
}

tr td a {
	color: white;
}

.day {
	background-color: #fa2525;
	border-radius: 28px;
	display: inline-block;
	cursor: pointer;
	color: #ffffff;
	font-family: Arial;
	font-size: 17px;
    padding: 5px 6px;
	text-decoration: none;
	font-weight: bold;
}

.day:hover {
	background-color: #f22222;
}

.day:active {
	position: relative;
	top: 1px;
}

.ticketcon {
	text-align: center;
	width: 100%;
}

.myButton {
	background: linear-gradient(to bottom, #ff0000 5%, #bc3315 100%);
	background-color: #ff0000;
	border: 1px solid #942911;
	display: inline-block;
	cursor: pointer;
	color: #ffffff;
	font-family: Arial;
	font-size: 16px;
	padding: 42px 18px;
	text-decoration: none;
	font-weight: bold;
}

.myButton:hover {
	background: linear-gradient(to bottom, #bc3315 5%, #ff0000 100%);
	background-color: #bc3315;
}

.myButton:active {
	position: relative;
	top: 1px;
}

.tablel {
	margin-top: 50px;
}

.tkheader_container {
	display: flex;
	background-color: black;
}

.tkheader_container>div {
	margin: 0 auto;
}

.side_nav1 {
	text-align: center;
}

.side_nav2 {
	flex-basis: 23%;
	border-top: 1px solid white;
	min-height: 80px;
	padding: 0px 10px;
}

.tklabel {
	font: 15px;
}

#selL #selM #selT {
	font: 20px;
	;
}

.seat {
	background-color: #595959;
	color: white; height : 30px; width : 40px; margin : 3px;
	border-top-left-radius : 10px;
	border-top-right-radius: 10px;
	height: 30px;
	width: 40px;
	margin: 3px;
	border-top-left-radius: 10px;
}

.clicked {
	background-color: #ff0000;
	color: white;
	-moz-appearance: none;
	-webkit-appearance: none;
	appearance: none;
}

.seatsdiv {
	padding: 80px 70px; width : 100%;
	margin: 0 auto;
	width: 100%;
}

#mid_table {
	display: flex;
	justify-content: space-evenly;
}

.nextBtnclass {
	
}

.tt_itemWrap {
	width: 110px;
	
	text-align: center;
	padding: 5px;
	margin: 30px 50px;
	box-shadow:inset 0px 1px 0px 0px #ffffff;
	background:linear-gradient(to bottom, #ffffff 5%, #f6f6f6 100%);
	background-color:#ffffff;
	border-radius:6px;
	border:1px solid #dcdcdc;
	display:inline-block;
	cursor:pointer;
	color:#666666;
	font-family:Arial;
	font-size:15px;
	font-weight:bold;
	padding:6px 24px;
	text-decoration:none;
	text-shadow:0px 1px 0px #ffffff;
}

.Contentsdiv>h1 {
	text-align: center;
}

.ticketWrap {
	width: 100%;
	height: 300px;
	margin: 20px auto;
	display: inline-flex;
	color: white;
	padding-top: 100px;
	background-color: black;
}

.ticketImgWrap {
	margin-left: 350px;
}

.ticketInfoWrap {
	margin-top: 30px;
}
</style>

</head>
<body>
	<div class="wrap">
		<%@ include file="../header_navi.jsp"%>

		<div class="container">
			<div class="ticketBox">
				<!-- 전체박스 -->

				<div class="left-ticketBox">
					<!-- 오른쪽 박스 -->
					<div class="ticket-navi1">
						<div class="side_nav1">
							<!-- 선택된 영화 -->
							<c:forEach var="smv" items="${smv}" varStatus="status">
								<img id="poster" src="${smv.mv_p}">
								<!-- 포스터 -->
								<h3 id="selMV" style="text-align: center;">${smv.mv_nm}</h3>
								<script type="text/javascript">
									mv_num = "${smv.mv_num}";
								</script>
							</c:forEach>
						</div>
						<div class="side_navvv">
							<!-- 선택된 좌석 -->
							<div class="side_nav2">
								<!-- 선택된 지역 / 영화관 -->
								<p class="tklabel">선택된 지역 :</p>
								<p id="selL"></p>
							</div>
							<div class="side_nav2">
								<!-- 선택된 시간표 -->
								<p class="tklabel">선택된 영화관 :</p>
								<p id="selM"></p>
							</div>
							<div class="side_nav2">
								<p class="tklabel">선택된 시간표 :</p>
								<p id="selT"></p>
							</div>
							<div class="side_nav2">
								<p class="tklabel">선택된 좌석 :</p>
								<p id="selS"></p>
							</div>
						</div>
						<!-- 선택된 좌석 -->
					</div>
				</div>
				<!-- 오른쪽 박스 -->
				<div class="right-ticketBox">
					<!-- 위쪽 박스 -->
					<div class="rightTopWrap">
						<div class="TopWrap">
							<div class="rightTopLabel">
								<!-- 선택정보1 -->
								<div id="sel_l">
									<c:forEach var="llist" items="${largeList}" varStatus="status">
										<span class="selLarge"><a href="#"
											id="lcode${status.count}">${llist.tl_nm}</a></span>
									</c:forEach>
								</div>
							</div>
							<!-- 선택정보 -->
							<div class="rightmidLabel">
								<!-- 선택정보2 -->
								<table id="mid_table"></table>
							</div>
						</div>

						<div class="nextBtnclass">
							<a href="#" class="myButton" id="nextBtn">NEXT</a>
						</div>

					</div>

					<!-- 위쪽 박스 -->
					<div class="Contentsdiv"></div>
				</div>
			</div>

		</div>
		<!-- 전체박스 -->
	</div>

	<div class="ticketcon">
		<!-- ticketcon -->

		<script type="text/javascript">
			let mv_num;
		</script>
		<script type="text/javascript" src="${root}/resources/js/ticket.js"></script>
	</div>
	<div class="footer-container">
			<%@ include file="../home_footer.jsp"%>
		</div>
</body>
</html>