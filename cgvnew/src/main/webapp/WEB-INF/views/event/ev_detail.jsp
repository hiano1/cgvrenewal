<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="${root}/resources/css/header_navi.css">
<link rel="stylesheet" type="text/css" href="${root}/resources/css/body.css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@600&display=swap" rel="stylesheet">

<style type="text/css">
body{
color: white;
}

.ev_nm{
margin-top: 40px;
margin-bottom: 20px;
}
.event_date{
text-align: right;
margin-right: 40px;
margin-bottom: 50px;
}
.ev_p2{
text-align: center;
}
</style>
</head>
<body>


<div class="wrap">
		<div class="header_container">
			<%@ include file="../header_navi.jsp"%>
		</div>
		
<div class="container">
		<div><a href="${root}">홈</a>  >  <a href="${root}/ev1">이벤트</a>  >  상세보기 </div>

      <h1 class="ev_nm">${event_detail.ev_nm}</h1>
    <div class="mov_container">
    <div class="event_date">${event_detail.ev_sdate} - ${event_detail.ev_edate}</div>
   <div class="ev_p2"> <img src="${event_detail.ev_p2}"></div> 
   
     
</div>
</div>
</div>
<div class="footer_container">
			<%@ include file="../home_footer.jsp"%>
		</div>


</body>
</html>