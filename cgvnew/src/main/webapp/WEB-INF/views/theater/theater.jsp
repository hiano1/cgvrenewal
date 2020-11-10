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
<link rel="stylesheet" type="text/css" href="${root}/resources/css/theater.css">
<link rel="stylesheet" type="text/css" href="${root}/resources/css/body.css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@600&display=swap" rel="stylesheet">

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