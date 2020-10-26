<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>searh</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<style type="text/css">
	.divsearch{
	display: inline-grid;
	}
	
	</style>
</head>

<body>
<div class="container">
		
	
	
		<form class="pagination justify-content-center mt-5 mb-5">
			<div class="divsearch">
			
			
				<button type="button" id="btn_search"
						class="btn btn-primary">
			 		s e a r c h </button>
			
				<input	type="text" id="id_search"
					
						class="form-control">
		
			</div>
		</form>
		<script type="text/javascript">
		$(document).ready(function() {
			$("#btn_search").click(function() {
				location.href="${root}/search?mv_nm="+$("#id_search").val()
					
			});//click
	
	});//ready
		</script>
		
		<table class="table table-hover">
			<thead>
				<tr>
				
					<th>영화이름</th>
				<th>포스터사진</th>
				</tr>
			</thead>
			<c:forEach var="dto" items="${search_list}">
				<tr>
					<td><a href="${root}/mdetail?mv_nm=${dto.mv_nm}">${dto.mv_nm}</a></td>
						<td>${dto.mv_p}</td>
				</tr>
			</c:forEach>
		</table>
	
		</div>

</body>
</html>