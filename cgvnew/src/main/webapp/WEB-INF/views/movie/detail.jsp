<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cgv_moviedetail</title>
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
<link rel="stylesheet" href="resources/css/header.css">

<style type="text/css">


body {
  background: #454545;
  font-family: Roboto;
  color: white;
}

.mov_box {
  text-align: center;
}


/*
btn 
*/
.btn,
.btn-hover,
.btn-active,
.btn-focus {
  border-radius: 0;
}         

.btn.btn-min-w {
  min-width: 105px;
}

.btn-web {
  background-color: rgb(254, 0, 0);
  color: #fff;
}

.btn-web:hover,
.btn-web:focus,
.btn-web:active {
  color: #fff;
}

.btn-grey {
  background: rgba(0, 0, 0, .4);
  border: 1px solid rgba(255, 255, 255, .4);
  -webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .3);
  -moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .3);
  box-shadow: 0 1px 2px rgba(0, 0, 0, .3);
  color: #FFF;
}

.btn-grey:hover,
.btn-grey:focus,
.btn-grey.focus {
  background: rgba(51, 51, 51, .4);
  color: #FFF;
}

.btn-s {
  margin-right: 5px;
}

</style>

</head>

<body>

	<div class="header_container">
		<%@ include file="../home_header.jsp"%>
	</div>


	<section class="mov_box">

  <main class="mov_card">
    <div class="billboard-layer"></div>
    <div class="hero" style="${movie_detail.mv_p}"></div>
    <div class="breaking-bad">
      <h1 class="mov_nm">${movie_detail.mv_nm}</h1>
      <ul class="mov_meta">
        <li class="mov_genre">${movie_detail.mv_genre}</li>
        <li class="mov_rdate">${movie_detail.mv_rdate}</li>
        <li class="mov_rate">${movie_detail.mv_rt}</li>
        <li class="mov_age">${movie_detail.mv_age}</li>
        <li class="mov_sc">${movie_detail.mv_sc}</li>
        <li class="mov_att">${movie_detail.mv_att}</li>
      </ul>
      <p class="mov_cont">${movie_detail.mv_cont}</p>
      <hr class="break" />
      
      
      
      
      
      
      
      
		 <div class="bottom-info">
        <a class="btn btn-min-w btn-web btn-s" href="${root}/ticket/main?mnum=${movie_detail.mv_num}" role="button">영 화 예 매 </a>
        <a class="btn btn-min-w btn-grey" href="#" role="button">트 레 일 러</a>
      </div>
		</div>
		</main>
	</section>


		<div class="footer_container">
		<%@ include file="../home_footer.jsp"%>
	</div>

</body>
</html>