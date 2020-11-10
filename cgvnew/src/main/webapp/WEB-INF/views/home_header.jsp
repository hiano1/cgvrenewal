<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!-- home_header start -->
<!-- header nav start -->

<div class="onehead">
	<c:choose>
		<c:when
			test="${login_id_session !=null && login_id_session.length() > 0 }">
			<div ><a href="${root}/"><img class="logo" src="${root}/resources/image/cgv_logo.png" /></a></div>
			<div>
			
			</div>
			<div class="urlcolor">
				<a class="" href="#">MyCGV</a>
			</div>
			<span>|</span>
			<div class="urlcolor">
				<a class="" href="${root}/logout">Logout</a>
			</div>
		</c:when>
		<c:otherwise>
			<div><a href="${root}/"><img class="logo" src="${root}/resources/image/cgv_logo.png" /></a></div>
			<div></div>
			<div class="urlcolor">
				<a class="" href="${root}/registerForm">SignUp</a>
			</div >
			<span>|</span>
			<div class="urlcolor">
				<a class="" href="${root}/loginForm">Login</a>
			</div>
		</c:otherwise>
	</c:choose>
</div>


<!-- header nav end -->
<!-- home_header end -->