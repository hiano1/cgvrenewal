<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CGV>MyCGV</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${root}/resources/css/header_navi.css">
<link rel="stylesheet" type="text/css"
	href="${root}/resources/css/body.css">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@600&display=swap"
	rel="stylesheet">
<style type="text/css">
.contentBox {
	height: 1000px;
}

.mbrbox {
	width: 95%;
	height: 500px;
	margin: 4em auto;
	border-radius: 7px;
	background-color: white;
}

.mbrboxTop {
	position: relative;
	width: 100%;
	height: 250px;
	border: 1px solid red;
}

.mbrboxBottom {
	overflow: hidden;
	width: 100%;
	height: 250px;
	border: 1px solid red;
}
</style>
</head>
<body>
	<div class="wrap">
		<%@ include file="../header_navi.jsp"%>
		<div class="contentBox">
			<div class="mbrbox">
				<div class="mbrboxTop">
					<div>
						<c:forEach var="info" items="${myInfo}">
									<h1>${info.mb_no}    </h1>
									<h1>${info.mb_id}    </h1>
									<h1>${info.mb_pwd}   </h1>
									<h1>${info.mb_nm}    </h1>
									<h1>${info.mb_gen}   </h1>
									<h1>${info.mb_birth} </h1>
									<h1>${info.mb_tel}   </h1>
									<h1>${info.mb_email} </h1>
									<h1>${info.mb_point} </h1>
						</c:forEach>
					</div>
				</div>
				<div class="mbrboxBottom"></div>

			</div>
			
			<div class="infoUpdate">
				<h1><a href="${root}/infoupdate">회원 정보 수정</a></h1>
			</div>
		</div>
		<%@ include file="../home_footer.jsp"%>
	</div>
</body>
</html>