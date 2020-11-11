<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!-- home_header start -->
<!-- header nav start -->
<header>

	<div>
		<a href="${root}/"><img class="logo"
			src="${root}/resources/image/cgv_logo.png" /></a>
	</div>
	<ul class="navi_ul">
				<li class="navi_li"><a href="${root}/ticket/main">영화예매</a></li>
				<li class="navi_li"><a href="${root}/theater">영화관</a></li>
				<li class="navi_li"><a href="${root}/ev1">이벤트</a></li>
				<li class="navi_li"><a href="${root}/list">영화검색</a></li>
			</ul>
	<c:choose>
		<c:when
			test="${login_id_session !=null && login_id_session.length() > 0 }">
			<div></div>
			<div class="urlcolor">
				<a class="" href="${root}/mycgv">MyCGV</a>
			</div>
			<span>|</span>
			<div class="urlcolor">
				<a class="" href="${root}/logout">Logout</a>
			</div>
		</c:when>
		<c:otherwise>
			<div class="urlcolor">
				<a href="${root}/registerForm">SignUp</a>
			</div>
			<span>|</span>
			<div class="urlcolor">
				<a href="${root}/loginForm">Login</a>
			</div>
		</c:otherwise>
	</c:choose>
			

</header>
<!-- header nav end -->
<!-- home_header end -->