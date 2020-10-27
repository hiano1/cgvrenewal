<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
</head>
<body>
	
	
	<script>
	$(document).ready(function() {
		
		$("#mb_login_pwd").keyup(function() {
			if(event.keyCode == 13) {
				$("#btn_login").click();
			}
		});//keyup
		
		$("#btn_login").click(function() {
			if( $.trim( $("#mb_login_id").val() ) == "" ) {
				alert("Check Your Id.");
				return;
			}
			if( $.trim( $("#mb_login_pwd").val() ) == "" ) {
				alert("Check Your PassWord.");
				return;
			}
			$("#loginForm").submit();
		});//click
	});//ready
	</script>
	
	
	
	<c:choose>
	<c:when test="${login_id_session != null
					&& login_id_session.length() > 0 }">
		<h3>${login_id_session}</h3>
		<a href="${root}/logout">
			<button> Logout </button>
		</a>
	</c:when>
	
	<c:otherwise>
		<form id="loginForm" method="post"
			  action="${root}/login">
			<table border="1">
				<tr>
					<td>ID</td>
					<td>
						<input	type="text" maxlength="20"
								id="mb_id" name="mb_id">
					</td>
				</tr>
				<tr>
					<td>PassWord</td>
					<td>
						<input	type="password" maxlength="20"
								id="mb_pwd" name="mb_pwd">
					</td>
				</tr>
			</table>
			<button type="button" id="btn_login"> Login </button>
		</form>
	</c:otherwise>
	</c:choose>
	
	
	
</body>
</html>