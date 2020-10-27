<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login_form</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
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


	<form id="loginForm" method="post" action="${root}/login">
		<table border="1">
			<tr>
				<td>ID</td>
				<td><input type="text" maxlength="20" id="mb_login_id" name="mb_login_id">
				</td>
			</tr>
			<tr>
				<td>PassWord</td>
				<td><input type="password" maxlength="20" id="mb_login_pwd"
					name="mb_login_pwd"></td>
			</tr>
		</table>
		<button type="button" id="btn_login">Login</button>
	</form>




</body>
</html>