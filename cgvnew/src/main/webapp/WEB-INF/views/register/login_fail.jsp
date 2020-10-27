<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login_fail</title>
</head>
<body>
	
	<h2>로그인 실패</h2>
	<h2>${fail_msg}</h2>
	<h2>
		<a href="${root}/registerForm">
			회원가입 바로가기
		</a>
	</h2>
	<h2>
		<a href="${root}/home">
			홈 바로가기
		</a>
	</h2>
	
</body>
</html>