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
		var a;
		switch ($(this).text()){
		case '서울': a = 1; break;
		case '경기': a = 2; break;
		case '인천': a = 3; break;
		case '강원': a = 4; break;
		case '대전/충청': a = 5; break;
		case '대구': a = 6; break;
		case '부산/울산': a = 7; break;
		case '경상': a = 8; break;
		case '광주/전라/제주': a = 9; break;
		};
		
		
		$.get(
			"${root}/ticketrest/middle"
			,{ lcode : a}
			,function(data,status){
				$("#mid_table").empty();
				$.each(data, function(index, dto) {
					$("#mid_table").append(
							"<tr>"+
							"<td>"+ 
							dto.tm_nm+
							"</td>"+
							"</tr>"
						//추가
					);
				});//each
			},"json");
	});
});
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
		</div>
	</div>
</body>
</html>