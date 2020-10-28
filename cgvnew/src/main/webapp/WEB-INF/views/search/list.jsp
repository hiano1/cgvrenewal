<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js">
	
</script>
<style type="text/css">
.divsearch {
	display: inline-grid;
}
</style>
<script type="text/javascript">
	function getList() {
		$.get(
				
		"${root}/rest/search?mv_nm=" + $("#id_search").val()

		, {}//data
		, function(data, status) {
			if (status == "success") {
				if (data.length > 0) {
					
					$("#list_b").empty();
					$.each(data, function(index, dto) {

						$("#list_b").append(
								"<tr>"

								+ "<td>" + "<a href='${root}/mdetail?mv_nm="
										+ dto.mv_nm + "'>" + dto.mv_nm + "</a>"
										+ "</td>" + "<td>" + dto.mv_p + "</td>"

										+ "</tr>"
										);//append
					});//each
				} else {
					alert("조회된 데이터가 없습니다.");
					}
				
			} else {
				alert("서버와의 연결이 불안합니다.");
				}

		}//function

		);//get
	}
	
	$(document).ready(function() {
		getList();
		$("#btn_search").click(function() {
			getList();

		});//

	});//click
</script>
</head>
<body>
	<div class="container">
		

		<form class="pagination justify-content-center mt-5 mb-5">
			<div class="divsearch">


				<button type="button" id="btn_search" class="btn btn-primary">
					s e a r c h</button>

				<input type="text" id="id_search" class="form-control">

			</div>
		</form>
		<table class="table table-hover">
			<thead >
				<tr>

					<th>영화이름</th>
					<th>포스터사진</th>
				</tr>

			</thead>
			<tbody id="list_b">
			</tbody>
		</table>
	</div>
</body>
</html>