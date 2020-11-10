<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cgv_ev</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/css/header.css">
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

<style type="text/css">

.slider-event{
   width:100%;
  margin:0px auto;
  position:relative;
}
.slider-event .ev_name{
  text-align:center;
  margin:30px auto;
}
.slider-event .next{
  position:absolute;
  top:49%;
  right:30px;
  font-size:2em;
  color:gray;
  cursor: pointer;
}
.slider-event .prev{
  position:absolute;
  top:49%;
  left:30px;
  font-size:2em;
  color:gray;
    cursor: pointer;
}
.slider-event .ev_postwapp{

  width:84%;
  height:100%;
  margin:0px auto;
  overflow: hidden;
  padding:10px 0px 10px 0px;
}

.slider-event .ev_postwapp .ev_post{
  width:300px;
  height:100%;
  margin:0px 10px;
  display:inline-block;
  background:white;
  border-radius: 5px;
}
.slider-event .ev_postwapp .ev_post {
  font-size:15px;
  height:100%;
  padding-left:10px;
}
.slider-event .ev_postwapp .post .ev_post {
  width:100%;
  height:100%;
  border-top-left-radius:5px;
  border-top-right-radius:5px;
}
.ev_wrap {
	width: 1200px;
	margin: 0 auto;
background-image: linear-gradient(to top, #4d4d4d 0%, black 100%);
}


</style>

</head>
<body>
<script type="text/javascript">
$(function() {
$('.ev_postwapp').slick({
  slidesToShow: 4,
  slidesToScroll: 1,
  autoplay: true,
  autoplaySpeed: 2000,
  nextArrow:$('.next'),
  prevArrow:$('.prev'),
});

	});
</script>
<div class="ev_wrap">
<div class="header_container">
			<%@ include file="../home_header.jsp"%>
		</div>
<div class="slider-event">

<h1 class="ev_name">${dto.ev_num}</h1>

<i class="fas fa-chevron-left prev"></i>  
<i class="fas fa-chevron-right next"></i> 

<div class="ev_postwapp">

<c:forEach var="dto" items="${event_list}" varStatus="status">
<div class="ev_post"><img width="100%" height="100%" src="${dto.ev_p}"></div>

</c:forEach>
</div>
</div>
<div class="slider-event">

<h1 class="ev_name">${dto.ev_num}</h1>
<i class="fas fa-chevron-left prev"></i>  
        <i class="fas fa-chevron-right next"></i> 
<div class="ev_postwapp">
<c:forEach var="dto" items="${event_list}" varStatus="status">
<div class="ev_post"><img width="100%" height="100%" src="${dto.ev_p}"></div>
</c:forEach>
</div>
</div>
<div class="slider-event">

<h1 class="ev_name">${dto.ev_num}</h1>
<i class="fas fa-chevron-left prev"></i>  
        <i class="fas fa-chevron-right next"></i> 
<div class="ev_postwapp">
<c:forEach var="dto" items="${event_list}" varStatus="status">
<div class="ev_post"><img width="100%" height="100%" src="${dto.ev_p}"></div>
</c:forEach>
</div>
</div>
<div class="footer-container">
		<%@ include file="../home_footer.jsp"%>
	</div>
</div>

</body>
</html>