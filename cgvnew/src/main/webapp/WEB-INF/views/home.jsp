<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<html>
<head>
<title>Home</title>
<style type="text/css">
.wrap {
	width: 1200px;
	margin: 0 auto;
	background-color: gray;
}
</style>
</head>
<body>
	<div class="wrap">
		<div class="header_container">
			<%@ include file="./home_header.jsp"%>
		</div>
	
		<h1>Hello world!</h1>
		<h1>${root}</h1>
		<P>The time on the server is ${serverTime}.</P>

		<div class="slider_container">
			<%@ include file="./home_slider.jsp"%>
		</div>

	</div>
</body>
</html>
