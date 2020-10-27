<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>register_form</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	
	<div class="container">
	
	
	<script type="text/javascript">
	
	$(document).ready(function() {
		$("#btn_register").click(function() {
			
			if( $.trim( $("#mb_id").val() ) == "" ){
				alert("아이디를 입력 해 주세요.");
				return;
			}
			if( $.trim( $("#mb_pwd").val() ) == "" ){
				alert("패스워드를 입력 해 주세요.");
				return;
			}
			if( $.trim( $("#mb_pwdre").val() ) == "" ){
				alert("패스워드 확인을 입력 해 주세요.");
				return;
			}
			if( $("#mb_pwd").val() != $("#mb_pwdre").val() ){
				alert("패스워드와 패스워드 확인이 서로 다릅니다.\n"
						+ "패스워드를 확인 해 주세요.");
				return;
			}
			if( $.trim( $("#mb_nm").val() ) == "" ){
				alert("이름을 입력 해 주세요.");
				return;
			}
			
			//gender
			
			if( $.trim( $("#mb_birth1").val() ) == ""
				|| $.trim( $("#mb_birth2").val() ) == ""
				|| $.trim( $("#mb_birth3").val() ) == "" ){
				alert("생년월일을 확인 해 주세요.");
				return;
			}
			
			if( $.trim( $("#mb_tel1").val() ) == ""
				|| $.trim( $("#mb_tel2").val() ) == ""
				|| $.trim( $("#mb_tel3").val() ) == "" ){
				alert("전화번호를 확인 해 주세요.");
				return;
			}
			if( $.trim( $("#mb_email1").val() ) == ""
				|| $.trim( $("#mb_email2").val() ) == "" ){
				alert("이메일을 확인 해 주세요.");
				return;
			}
			
			$("#register_form").submit();
			
		});//click
	});//ready
	
	</script>
	
	
	
	
	<h2>회원 가입</h2>
	
	<form id="register_form" method="post"
		  action="${root}/register">
	
	<table class="table">
	<tr>
		<td>ID</td>
		<td>
		<input type="text" maxlength="20" id="mb_id" name="mb_id">
		</td>
	</tr>
	<tr>
		<td>PassWord</td>
		<td>
		<input type="password" maxlength="20" id="mb_pwd" name="mb_pwd">
		</td>
	</tr>
	<tr>
		<td>PassWord 확인</td>
		<td>
		<input type="password" maxlength="20" id="mb_pwdre" name="mb_pwdre">
		</td>
	</tr>
	
	<tr>
		<td>Name</td>
		<td>
		<input type="text" maxlength="20" id="mb_nm" name="mb_nm">
		</td>
	</tr>
	
	<tr>
		<td>Gender</td>
		<td>
		<input type="radio" name="mb_gen1" value="Male"> Male
   		<input type="radio" name="mb_gen2" value="Female"> Female
		</td>
	</tr>
	
	<tr>
		<td>Birth</td>
		<td>
		<input type="text" maxlength="4" size="4" id="mb_birth1" name="mb_birth1">
		년 <input type="text" maxlength="2" size="2" id="mb_birth2" name="mb_birth2">
		월 <input type="text" maxlength="2" size="2" id="mb_birth3" name="mb_birth3">일
		</td>
	</tr>
	
	
	<tr>
		<td>Telephone</td>
		<td>
		<input type="text" maxlength="3" size="3" id="mb_tel1" name="mb_tel1">
		 - <input type="text" maxlength="4" size="4" id="mb_tel2" name="mb_tel2">
		 - <input type="text" maxlength="4" size="4" id="mb_tel3" name="mb_tel3">
		</td>
	</tr>
	
	<tr>
		<td>Email</td>
		<td>
		<input type="text" maxlength="25" id="mb_email1" name="mb_email1">
		 @ <input type="text" maxlength="25" id="mb_email2" name="mb_email2">
		</td>
	</tr>
	
	</table>
	
	</form>
	
	<button type="button" id="btn_register"> 회 원 가 입 </button>
	
	</div>
	
</body>
</html>