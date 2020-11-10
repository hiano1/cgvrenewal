<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>theater</title>
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
<link rel="stylesheet" type="text/css" href="${root}/resources/css/body.css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@600&display=swap" rel="stylesheet">
<style type="text/css">


.tab-wrap {
	transition: 0.3s box-shadow ease;
	border-radius: 6px;
	max-width: 100%;
	display: flex;
	flex-wrap: wrap;
	position: relative;
	list-style: none;
	background-color: #fff;
	margin: 40px 0;
	box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);
}

.tab-wrap:hover {
	box-shadow: 0 3px 6px rgba(0, 0, 0, 0.18), 0 5px 5px
		rgba(0, 0, 0, 0.19);
}

.tab {
	display: none;
}

.tab:checked:nth-of-type(1) ~ .tab__content:nth-of-type(1) {
	opacity: 1;
	transition: 0.5s opacity ease-in, 0.8s transform ease;
	position: relative;
	top: 0;
	z-index: 100;
	transform: translateY(0px);
	text-shadow: 0 0 0;
}

.tab:checked:nth-of-type(2) ~ .tab__content:nth-of-type(2) {
	opacity: 1;
	transition: 0.5s opacity ease-in, 0.8s transform ease;
	position: relative;
	top: 0;
	z-index: 100;
	transform: translateY(0px);
	text-shadow: 0 0 0;
}

.tab:checked:nth-of-type(3) ~ .tab__content:nth-of-type(3) {
	opacity: 1;
	transition: 0.5s opacity ease-in, 0.8s transform ease;
	position: relative;
	top: 0;
	z-index: 100;
	transform: translateY(0px);
	text-shadow: 0 0 0;
}

.tab:checked:nth-of-type(4) ~ .tab__content:nth-of-type(4) {
	opacity: 1;
	transition: 0.5s opacity ease-in, 0.8s transform ease;
	position: relative;
	top: 0;
	z-index: 100;
	transform: translateY(0px);
	text-shadow: 0 0 0;
}

.tab:checked:nth-of-type(5) ~ .tab__content:nth-of-type(5) {
	opacity: 1;
	transition: 0.5s opacity ease-in, 0.8s transform ease;
	position: relative;
	top: 0;
	z-index: 100;
	transform: translateY(0px);
	text-shadow: 0 0 0;
}

.tab:first-of-type:not (:last-of-type ) +label {
	border-top-right-radius: 0;
	border-bottom-right-radius: 0;
}

.tab:not (:first-of-type ):not (:last-of-type ) +label {
	border-radius: 0;
}

.tab:last-of-type:not (:first-of-type ) +label {
	border-top-left-radius: 0;
	border-bottom-left-radius: 0;
}

.tab:checked+label {
	background-color: #fff;
	box-shadow: 0 -1px 0 #fff inset;
	cursor: default;
}

.tab:checked+label:hover {
	box-shadow: 0 -2px 0 #fff inset;
	background-color: #fff;
}

.tab+label {
	box-shadow: 0 -1.5px 0 #e41a12 inset;
	border-radius: 6px 6px 0 0;
	cursor: pointer;
	display: block;
	text-decoration: none;
	color: #333;
	flex-grow: 3;
	text-align: center;
	background-color: #f2f2f2;
	user-select: none;
	text-align: center;
	transition: 0.3s background-color ease, 0.3s box-shadow ease;
	height: 50px;
	box-sizing: border-box;
	padding: 15px;
}

.tab+label:hover {
	background-color: #f9f9f9;
	box-shadow: 0 1px 0 #f4f4f4 inset;
}

.tab__content {
	padding: 10px 25px;
	background-color: transparent;
	position: absolute;
	width: 100%;
	z-index: -1;
	opacity: 0;
	left: 0;
	transform: translateY(-3px);
	border-radius: 6px;
}

.chz { /*  관람료 박스  */
	margin-top: 50px;
	margin-bottom: 70px;
	text-align: center;
	auto:0;
}
.llist{
	display:flex;
	min-width:50px;
	justify-content: space-between;
}

.fee-table-box {
	width: 100%;
	overflow: hidden;
	margin-bottom: 30px;;
}

table, td, th {
	border: 1px solid #ddd;
	text-align: center;
}

table {
	width: 100%;
	margin: 0;
	border: 0;
	table-layout: fixed;
	border-collapse: collapse;
}

th, td {
	padding: 10px;
}

.fee-table-box {
	width: 100%;
	overflow: hidden;
	margin-bottom: 70px;
	margin-right: 20px;
}

.fee-table-box .fee-table {
	width: 450px;
	float: left;
	margin-right: 10px;
	margin-left: 10px;
}

.data-table thead th {
	background-color: #f2f2f2;
}

.data-table tbody th {
	
}

/* boring stuff */
body {
	
	padding: 30px 0;
	font-weight: 300;
	font-size: 15px;
	
}


.contentBox {
	max-width: 1500px;
    margin: 4em auto;
    padding: 4em;
    background: #fff;
    border-radius: 7px;

}

.litTitle {
	font-size: 12px;
	letter-spacing: 2px;
	opacity: 0.9;
	color: #595959;
	
}

h1, h2 {
	margin: 0;
	color: #444;
	/* text-align: center; */
	font-weight: 400;
	padding: 0 160px;
}

h2 {
	font-size: 1em;
	margin-bottom: 30px;
}

h3 {
	font-weight: 400;
}

h5 {
	font-weight: bold;
}

p {
	line-height: 1.6;
	margin-bottom: 20px;
	color: f2f2f2;
}
ul{
	list-style-type: none;
}
ul li a{
 text-decoration: none;
}ul li a:hover{
 text-decoration: none;
}
</style>
</head>
<body>


<script type="text/javascript">


$(document).ready(function() {

	
	$("label[id^=lcode]").click(function(){
		var mNum;
		switch ($(this).text()){
		case '서울': mNum = 1; break;
		case '경기': mNum = 2; break;
		case '인천': mNum = 3; break;
		case '강원': mNum = 4; break;
		case '대전/충청': mNum = 5; break;
		case '대구': mNum = 6; break;
		case '부산/울산': mNum = 7; break;
		case '경상': mNum = 8; break;
		case '광주/전라/제주': mNum = 9; break;
		};
		
		$.get(
			"${root}/Threst/middle"
			,{ lcode : mNum}
			,function(data,status){
				$("#mid_table").empty();//mid_detail
				$.each(data, function(index, dto) {
					$("#mid_table").append(
							"<ul>"+
							"<li>"+ 
							"<a href='#' id='middle_"+index+"' value='"+dto.tm_num+"'>"+ dto.tm_nm+"</a>"+
							"</li>"+
							"</ul>"
						//추가
					);
					$("#middle_"+index).on("click", function() {
						$.get(
							 	"${root}/Threst/detail"
								,{ mcode : $(this).attr("value") }
								,function(data,status){
									$("#mid_detail").empty();
									$.each(data, function(index, dto) {
										$("#mid_detail").append(
												"<div>"+
												/* "<h6>"+ dto.tm_num+"</h6>"+ */
												"<h1 class='mb-5'>"+ dto.tm_nm+"</h1>"+
												/* "<h2>"+ dto.th_add+"</h2>"+ */
												"<h2> 주소 "+ dto.th_addn+"</h2>"+
												"<h2 class='mb-3 tex'>교통안내</h1>"+
												"<h2> 버스"+ dto.th_bus+"</h2>"+
												"<h2> 지하철"+ dto.th_sub+"</h2>"+
												"</div>"
											//추가
										);
									});//each
								}
								,"json"
						);//get
					});//on
				});//each
			},"json");
	});//click lcode
	$("#lcode1").trigger('click');
});//ready
</script>

	<!-- <h1>전체극장</h1> -->

	<div class="container">
		<div class="header_container">
			<%@ include file="../header_navi.jsp"%>
		</div>
		
	
	<div class="contentBox">
	
	
		<div class="form-inline mb-3">
			<h5 class="mr-5">전체극장</h5>
			<h6>
				<a href="${root}/thea/spT">특별관</a>
			</h6>
		</div>
			<p class="litTitle">영화, 그 이상의 감동</p>
		<div class="tab-wrap">
			<c:forEach var="llist" items="${largeList}" varStatus="status">
				<input type="radio" id="tab" name="tabGroup2" class="tab">
				<label for="tab" class="llist" id="lcode${status.count}">${llist.tl_nm}</label>
			</c:forEach>
			
			<div class="tab__content">
				<div id="mid_table" ></div>
			</div>
		</div>
		
		<div class="tab-wrap"><!-- 극장상세  -->

			<!-- active tab on page load gets checked attribute -->
			<input type="radio" id="tab1" name="tabGroup1" class="tab" checked>
			<label for="tab1">극장정보</label> 
			
			<input type="radio" id="tab2" name="tabGroup1" class="tab"> 
			<label for="tab2">상영시간표</label>

			<input type="radio" id="tab3" name="tabGroup1" class="tab">
			<label for="tab3">관람료</label>

			<div class="tab__content">
				<div class="chz">
					<div id="mid_detail">
						<h3>극장을 선택해주세요</h3>
					</div>
				</div>
			</div>

			<div class="tab__content">
				<div class="chz">
					<h3>상영시간표</h3>
				</div>
			</div>

			<div class="tab__content">
				<h6>관람료</h6>
				<div class="fee-table-box">
					
						<!-- 관람료 -->
						<div class="fee-table">
							<p class="fee-table-tit">2D</p>
							<table class="data-table a-c">
								<colgroup>
									<col>
									<col style="width: 25%;">
									<col style="width: 25%;">
									<col style="width: 25%;">

								</colgroup>
								<thead>
									<tr>
										<th scope="col">요일</th>
										<th scope="col">상영시간</th>
										<th scope="col">일반</th>
										<th scope="col">청소년</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="rowgroup" rowspan="3">월~ 목</th>
										<td>조조 (06:00~)</td>
										<td>7,000</td>
										<td>6,000</td>
									</tr>
									<tr>
										<td>일반 (10:00~)</td>
										<td>11,000</td>
										<td>9,000</td>
									</tr>
									<tr>
										<td>심야 (24:00~)</td>
										<td>9,000</td>
										<td>7,000</td>
									</tr>
									<tr>
										<th scope="rowgroup" rowspan="3">금~일 <br> 공휴일
										</th>
										<td>조조 (06:00~)</td>
										<td>8,000</td>
										<td>7,000</td>
									</tr>
									<tr>
										<td>일반 (10:00~)</td>
										<td>12,000</td>
										<td>10,000</td>
									</tr>
									<tr>
										<td>심야 (24:00~)</td>
										<td>10,000</td>
										<td>8,000</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="fee-table">
							<p class="fee-table-tit">3D</p>
							<table class="data-table a-c">
								<colgroup>
									<col>
									<col style="width: 25%;">
									<col style="width: 25%;">
									<col style="width: 25%;">

								</colgroup>
								<thead>
									<tr>
										<th scope="col">요일</th>
										<th scope="col">상영시간</th>
										<th scope="col">일반</th>
										<th scope="col">청소년</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="rowgroup" rowspan="3">월~ 목</th>
										<td>조조 (06:00~)</td>
										<td>7,000</td>
										<td>6,000</td>
									</tr>
									<tr>
										<td>일반 (10:00~)</td>
										<td>11,000</td>
										<td>9,000</td>
									</tr>
									<tr>
										<td>심야 (24:00~)</td>
										<td>9,000</td>
										<td>7,000</td>
									</tr>
									<tr>
										<th scope="rowgroup" rowspan="3">금~일 <br> 공휴일
										</th>
										<td>조조 (06:00~)</td>
										<td>8,000</td>
										<td>7,000</td>
									</tr>
									<tr>
										<td>일반 (10:00~)</td>
										<td>12,000</td>
										<td>10,000</td>
									</tr>

									<tr>
										<td>심야 (24:00~)</td>
										<td>10,000</td>
										<td>8,000</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<!--영화관람료 표 -->
				</div>

		</div>

			<div class="demo-section">
			<p>ㆍ입장 지연에 따른 관람 불편을 최소화하기 위해 영화는 10분 후 상영이 시작됩니다.</p>
		</div>



	</div>
	</div>
	
</body>
</html>