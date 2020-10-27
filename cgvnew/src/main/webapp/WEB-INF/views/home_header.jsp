<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!-- home_header start -->
<!-- header nav start -->

<nav class="navbar navbar-expand-sm float-right">
	<ul class="navbar-nav">
		<c:choose>
			<c:when test="${login_id_session !=null && login_id_session.length() > 0 }">
				<li>
				<a class="nav-link text-muted font-weight-bold" href="#">MyCGV</a>
				</li>
				<li>
				<a class="nav-link text-muted font-weight-bold"
				href="${root}/logout">Logout</a></li>
			</c:when>
			<c:otherwise>
				<li><a class="nav-link text-muted font-weight-bold"
					href="${root}/registerForm">SignUp</a></li>
				<li class="nav-item"><a
					class="nav-link text-muted font-weight-bold" 
					href="${root}/loginForm">Login</a></li>
			</c:otherwise>
		</c:choose>
	</ul>
</nav>

<!-- header nav end -->
<!-- home_header end -->