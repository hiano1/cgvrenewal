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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style type="text/css">
html, body {
	position: relative;
	height: 100%;
	width: 100%;
	margin: 0;
	padding: 0;
	vertical-align: baseline;
}

.container {
	display: flex;
	color: white;
}

.ticketcon {
	text-align: center;
	width: 100%;
}

.side_nav1 {
	flex-basis: 30%;
}

.side_nav2 .side_nav3 .side_nav4 {
	flex-basis: 15%;
}

.nextBtnclass {
	
}/*버튼 css*/

.tablel {
	margin-top: 50px;
}

.tkheader_container {
	display: flex;
	padding: 29px 21px;
	width: 273px;
	height: 98px;
	background-color: black;
	padding: 29px 21px;
}

.logo {
	width: 168px;
	margin: 0px 31px;
}

.side_nav1 {
	padding: 14px;
	width: 315px;
	height: 329px;
}

.side_nav1 img {
	width: 135px;
	height: 180px;
	margin: 11px 80px 15px;
}

.side_navvv {
	width: 315px;
	height: 275px;
	padding: 0px 21px;
}

.side_nav2 .side_nav3 .side_nav4 {
	padding: 13.3px 21px 14px 0px;
}

#selL #selM #selT {
	width: 252px;
	height: 24px;
	font: 21px;
}

.tklabel {
	width: 252px;
	height: 24px;
	margin: 0px 0px 7px;
	font: 15.75px;
}

.container {
	width: 315px;
	height: 100%;
	flex-direction: column;
	background-color: black;
}

.wrap {
	width: 100%;
	height: 100%;
	margin: 0 auto;
	background-color: white;
	display: flex;
	margin: 0 auto;
}

.seat {
	width: 30px;
	height: 30px;
}

.clicked {
	background-color: red;
	color: white;
}

.seatsdiv {
	width: 100%;
}
</style>

</head>
<body>
	<div class="wrap">
		<div class="container">
			<div class="tkheader_container">
				<div>
					<a href="${root}/"><img class="logo"
						src="${root}/resources/image/cgv_logo.png" /></a>
				</div>
			</div>

			<div class="side_nav1">
				<!-- 선택된 영화 -->
				<c:forEach var="smv" items="${smv}" varStatus="status">
					<img src="${smv.mv_p}">
					<h3 style="text-align: center;">${smv.mv_nm}</h3>
				</c:forEach>
			</div>
			<div class="side_navvv">
				<div class="side_nav2">
					<!-- 선택된 지역 / 영화관 -->
					<p class="tklabel">선택된 지역 :</p>
					<p id="selL"></p>
					<p class="tklabel">선택된 영화관 :</p>
					<p id="selM"></p>
				</div>
				<div class="side_nav3">
					<!-- 선택된 시간표 -->
					<p class="tklabel">선택된 시간표 :</p>
					<p id="selT"></p>
				</div>
				<div class="side_nav4">
					<!-- 선택된 좌석 -->
					<p class="tklabel">선택된 좌석 :</p>
					<p id="selS"></p>
				</div>
			</div>
		</div>

		<div class="ticketcon">
			<table class="tablel">
				<thead>
					<tr>
						<th>지역이름</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="llist" items="${largeList}" varStatus="status">
						<tr id="sel_l">

							<td><a href="#" id="lcode${status.count}">${llist.tl_nm}</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

			<table id="mid_table">

			</table>

		</div>
		<div class="nextBtnclass">
			<button id="nextBtn">next</button>
		</div>
		<div class="seatsdiv"></div>



		<!-- ticketcon -->


		<script type="text/javascript" src="${root}/resources/js/ticket.js"></script>
	</div>

</body>
</html>