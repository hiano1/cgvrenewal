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
	$("#sel_l").click(function(){
		$.get(
			"${root}/ticketrest/middle"
			,{ mcode : $("#sel_m").val() }
			,function(data,status){
				$("#sel_m").empty();
				$.each(data, function(index, dto) {
					$("#sel_m").append(
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
						<th>번호</th>
						<th>지역이름</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="llist" items="${largeList}" varStatus="status">
						<tr id="sel_l">
							<td class="imsi"><a href="#">${llist.tl_num}</a></td>
							<td><a href="#">${llist.tl_nm}</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>