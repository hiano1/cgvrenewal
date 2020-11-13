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
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap"	rel="stylesheet">
<link	href="https://fonts.googleapis.com/css2?family=Poppins:wght@600&display=swap"	rel="stylesheet">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<style type="text/css">
body {
	background-image: linear-gradient(to top, #f2f2f2 0%, white 100%);
	padding: 15px 0;
	font-weight: 300;
	font-size: 15px;
}

a{
	text-decoration: none;
}
a:hover{
	text-decoration: none;
}
.wrap {
	width: 1200px;
	margin: 0 auto;
}
header {
	width: 100%;
	min-height: 80%;
	display: flex;
	justify-content: space-between;
	align-items: center;
	position: relative;
	margin-bottom: 60px;
	margin-top: 10px;
	padding-bottom:15px;
	border-bottom: 1px solid grey;
}


.logo {
	width: 150px;
}


span{
	margin-top: 4px;
	font-weight: bold;
	color: grey;
	font-size: 10px;
}
.urlcolor {
	margin-top: 5px;
}

.urlcolor a {
	color: grey;
	text-decoration: none;
	font-size: 13px;
	font-family: 'Poppins', sans-serif;
	margin-left: 15px;
	margin-right: 15px;
	
}

.urlcolor a:hover {
	color: red;
	text-decoration: none;
}

.navi_ul {
	flex: 2;
	text-align: center;
	/* margin-right: 50x; */
	margin-top: 40px;
	font-family: 'Noto Sans KR', sans-serif;
}

.navi_li {
	list-style: none;
	display: inline-block;
}

.navi_li a {
	text-decoration: none;
	color: grey;
	padding: 10px 40px;
	font-size: 20px;
}

.navi_ul .navi_li a:hover {
	text-decoration: none;
	color: red;
	bottom: 2px;
	padding-bottom:29px;
	border-bottom: 4px solid red;
}
/* header css*/

h1, h2, h3, h4, h5, h6 {
	font-family: 'Noto Sans KR', sans-serif;
}
.contentBox {
	min-height: 1000px;
}
.mbrbox {/*회원카드*/
	width: 95%;
	height: 500px;
	margin: 4em auto;
	
	
}

.mbrboxTop {/*회원카드 윗부분*/
	position: relative;
	width: 100%;
	height: 300px;
	padding: 70px 100px;
	background-color: #f2f2f2;
	border-radius: 10px 10px 0px 0px;
	border-bottom: 5px solid white;
}
.profileImg{
	float:left;
	position:relative;
	height:100%;
	margin-top: 20px;
	margin-right: 50px;
}
.info{
	margin-top: 20px;
	margin-bottom: 25px;
}
.rate{
	color: #F46D0D;
	float:left;
	font-weight: bold;
}
h6 a{
	text-decoration: none;
	color: #4d4d4d;
}
h6 a:hover{
	text-decoration:underline;
}

.mbrboxBottom {/*회원카드 아랫부분*/
	width: 100%;
	height: 200px;
	padding: 30px 100px;
	background-color: #f2f2f2;
	border-radius: 0px 0px 10px 10px;
}
.listContents{
	width: 90%;
	margin: 50px auto;
	margin-top: 80px;
}
.list-card{
	margin-top: 80px;
	border-bottom: 1px solid grey;
}
.list-Title{
	border-bottom: 5px solid grey;
}
.list-cnt{
	margin-top: 50px;
	margin-bottom: 50px;
	text-align: center;
	auto: 0;
}
.foot{

color : grey;
 width: 100%;
 height: 100px;
 text-align: center;

 }
.copyright{
 margin-top: 70px;
 }

</style>
</head>
<body>
	<div class="wrap">
		<%@ include file="../header_navi.jsp"%>
		<div class="contentBox">
		<c:forEach var="info" items="${myInfo}">
			<div class="mbrbox"><!-- 회원카드 -->
				<div class="mbrboxTop"><!-- 회원카드 윗부분 -->
					<div class="profileImg">
						<i class="fas fa-user-circle"  aria-hidden="true" 
						style="font-size:120px; color:#ADADAD;"></i>
					</div>
					<div class="info"><!-- 간단정보 -->
							
							<c:choose>
								<c:when test="${info.mb_Rpoint >= 30000}">
									<h2>${info.mb_nm}님은 </h2>
									<h1 class="rate mr-2">GOLD</h1>
									<h1>등급 입니다.</h1>
								</c:when>
								<c:when test="${info.mb_Rpoint >= 10000}">
									<h2>${info.mb_nm}님은 </h2>
									<h1 class="rate mr-2">SILVER</h1>
									<h1>등급 입니다.</h1>
								</c:when>
								<c:otherwise>
									<h2>${info.mb_nm}님은 </h2>
									<h1 class="rate mr-3">일반등급</h1>
									<h1>입니다.</h1>
								</c:otherwise>
							</c:choose>
					</div>
							<h6><a href="infoupdateForm">개인 정보 수정 ></a></h6>
				</div><!-- 회원카드 윗부분 -->
				<div class="mbrboxBottom"><!-- 회원카드 아랫부분 -->
						<h4>사용가능 포인트 : ${info.mb_point} </h4>
						<h4>누적 포인트 : ${info.mb_Rpoint} </h4>
				</div><!-- 회원카드 아랫부분 -->

			</div><!-- 회원카드 -->
			</c:forEach>
			<div class="listContents">
				<div class="list-card"><!-- 나의 예매 내역 -->
					<div class="list-Title">
						<h4 class="ml-5">나의 예매 내역</h4>
					</div>
					<div class="list-cnt">
						<h5>예매 내역이 없습니다.</h5>
					</div>
				</div><!-- 나의 예매 내역 -->
				<div class="list-card"><!-- 나의 쿠폰 내역 -->
					<div class="list-Title">
						<h4 class="ml-5">나의 쿠폰 내역</h4>
					</div>
					<div class="list-cnt">
						<c:choose>
							<c:when test="${empty myInfo2}">
								<h5>쿠폰 내역이 없습니다.</h5>
							</c:when>
							<c:when test="${not empty myInfo2}">
								<table class="table table">
									<thead>
										<tr>
											<th>구분</th>
											<th>쿠폰명</th>
											<th>유효기간</th>
										</tr>
									</thead>
									<c:forEach var="cpn" items="${myInfo2}">
										<tbody>
											<tr>
												<td>${cpn.cpn_kind}</td>
												<td>
												${cpn.cpn_nm}<br>
												${cpn.mcpn_code}
												</td>
												<td>${cpn.cpn_sdate} ~ ${cpn.cpn_edate}</td>
											</tr>
										</tbody>
									</c:forEach>
								</table>
							</c:when>
						</c:choose>
					</div>
				</div><!-- 나의 쿠폰 내역 -->
				<div class="list-card"><!-- 나의 구매 내역 -->
					<div class="list-Title">
						<h4 class="ml-5">나의 구매 내역</h4>
					</div>
					<div class="list-cnt">
						<h5>구매 내역이 없습니다.</h5>
					</div>
				</div><!-- 나의 구매 내역 -->
			</div>
			
				
			
		</div>
		<div class="foot">

			<h5 class="copyright">&copy;2020 CGV. All Rights Reserved</h5>
			<div class="links">
				<a href="#">Terms of Service</a> <a href="#">Privacy Policy</a>
			</div>
		</div>
	</div>
</body>
</html>