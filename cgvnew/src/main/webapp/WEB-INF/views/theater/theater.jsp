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
</head>
<body>

<script type="text/javascript">


$(document).ready(function() {

	
	$("a[id^=lcode]").click(function(){
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
				$("#mid_table").empty();
				$.each(data, function(index, dto) {
					$("#mid_table").append(
							"<tr>"+
							"<td>"+ 
							"<a href='#' id='middle_"+index+"' value='"+dto.tm_num+"'>"+ dto.tm_nm+"</a>"+
							"</td>"+
							"</tr>"
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
												"<tr>"+
												"<td>"+ dto.tm_num+"</td>"+
												"<td>"+ dto.tm_nm+"</td>"+
												"<td>"+ dto.th_add+"</td>"+
												"<td>"+ dto.th_addn+"</td>"+
												"<td>"+ dto.th_bus+"</td>"+
												"<td>"+ dto.th_sub+"</td>"+
												"</tr>"
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
	
});//ready
</script>


	<div class="wrap">
		<div class="header_container">
			<%@ include file="../home_header2.jsp"%>
		</div>
		<div class="form-inline mt-5 mb-5">
	 			<h4  class="mr-5" >전체극장</h4>
				<h6><a href="${root}/thea/spT" >특별관</a></h6>
		</div>
		<div class="form-inline">
			<ul class="nav nav-tabs">
					<c:forEach var="llist" items="${largeList}" varStatus="status">
						<li class="mr-5" id="sel_l">
							<a href="#" id="lcode${status.count}">${llist.tl_nm}</a>
						</li>
					</c:forEach>
				</ul>
		</div>
			<div class="tab-content">
				<div id="mid_table" class="container tab-pane active">
					
				</div>
			</div>

				<div class="container">
					<br>
					<!-- Nav tabs -->
					<ul class="nav nav-tabs mt-5">
						<li class="nav-item"><a class="nav-link active"
							data-toggle="tab" href="#mid_detail">극장 정보</a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#menu2">상영 시간표</a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#menu3">관 람 료</a></li>
					</ul>

					<!-- Tab panes -->
					<div class="tab-content">
						<div id="mid_detail" class="container tab-pane active">
							<h5 class="mt-5 text-center">극장을 선택해주세요.</h5>
						</div>
						<div id="menu2" class="container tab-pane fade">
							<br>
							<!-- 상영 시간표 -->
							<h3>Menu 1</h3>
							<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco
								laboris nisi ut aliquip ex ea commodo consequat.</p>
						</div>
						<div id="menu3" class="container tab-pane fade">
							<br>
							<!-- 교통 정보 -->
							<h3>Menu 2</h3>
							<p>Sed ut perspiciatis unde omnis iste natus error sit
								voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
						</div>
					</div>

				</div>


		<div class="footer-container">
			<%@ include file="../home_footer.jsp"%>
		</div>
	</div>
</body>
</html>