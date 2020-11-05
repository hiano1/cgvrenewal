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
.container {
	display: flex
}

.sidecon {
	display: flex;
	flex-direction: column;
	justify-content: flex-start;
	align-content: space-around;
	flex-basis: 20%;
	border: 1px solid black;
}

.ticketcon {
	display: flex;
	justify-content: space-around;
	flex-basis: 80%;
	border: 1px solid black;
}

.side_nav1 {
	flex-basis: 30%;
}	

.side_nav2 {
	flex-basis: 15%;
}

.side_nav3 {
	flex-basis: 15%;
}

.side_nav4 {
	flex-basis: 15%;
}
#nextBtn{
}
.tablel{
	margin-top: 50px;
}
</style>

</head>
<body>


	<div class="container">
		<div class="sidecon">
			<div class="side_nav1">
				<!-- 선택된 영화 -->
				<c:forEach var="smv" items="${smv}" varStatus="status">
					<h3>선택된 영화 : ${smv.mv_nm}</h3>
					<img src="${smv.mv_p}">
				</c:forEach>
			</div>
			<div class="side_nav2">
				<!-- 선택된 지역 / 영화관 -->
				선택된 지역 :
				<pre id="selL"></pre>
				선택된 영화관 :
				<p id="selM"></p>
			</div>
			<div class="side_nav3">
				<!-- 선택된 시간표 -->
				선택된 시간표 :
				<p id="selT"></p>
			</div>
			<div class="side_nav4">
				<!-- 선택된 좌석 -->
				선택된 좌석 :
				<p id="selS"></p>
			</div>
		</div>
		<!-- sidecon -->
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
			<button id="nextBtn">next</button>
		</div>
		<div class="seatsdiv">
		
		
		</div>
		
		<!-- ticketcon -->

	</div>
	<script type="text/javascript" src="${root}/resources/js/ticket.js"></script>
</body>
</html>