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
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<link rel="stylesheet" type="text/css" href="${root}/resources/css/header_navi.css">
<link rel="stylesheet" type="text/css" href="${root}/resources/css/body.css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@600&display=swap" rel="stylesheet">
<style type="text/css">
.consearchlist {
	display: inline-block;
	padding: 5px;
	text-align: center;

	width: 250px;
	height: 350px;
}
.list_b {
	text-align: center;
}
.divsearch {
	display: inline-grid;
}



.poster {
	width: 100%;
	height: 80%;
}

.wraplist {
	width: 1200px;
	margin: 0 auto;
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

					$(".list_b").empty();
					$.each(data, function(index, dto) {

						$(".list_b").append(
								"<div class='consearchlist'>"

								+ "<div class = 'poster'>"
										+ "<a href='${root}/mdetail?mv_nm="
										+ dto.mv_nm + "'>"
										+ "<img src ='"
										+ dto.mv_p 
										+"'>"
										+ "</a>" + "</div>"

										+ "</div>");//append
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
		});//click
		 $("#id_search").keydown(function(event) {
				if(event.keyCode == 13){
					$("#btn_search").click();
					return false;

				}				
			});//keyup

	
	});//ready

	</script>

</head>
<body>
	<div class="wrap">
	
		<div class="header_container">
			<%@ include file="../header_navi.jsp"%>
		</div>
		<div class="container">


			<form class="pagination justify-content-center  mb-5">
				<div class="divsearch">


					<button type="button" id="btn_search" class="btn btn-dark">
					영 화 검 색</button>

					<input type="text" id="id_search" class="form-control">

				</div>
			
				
		
			
				
			</form>
			<div class="list_b"></div>
		</div>
	</div>
</body>
</html>