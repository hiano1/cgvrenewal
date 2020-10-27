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


	<div class="container">
		
		<div class="form-inline">
			<table class="table table-hover">
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
			
			
			<!--  -->
			<table >
			<thead>
				<td>nm</td>
				<td>nm</td>
				<td>nm</td>
				<td>nm</td>
				<td>nm</td>
				<td>nm</td>
			</thead>
<tbody id="mid_detail">
	
</tbody>			
			</table>
		</div>
	</div>
</body>
</html>