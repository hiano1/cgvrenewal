<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>register_form</title>
</head>
<body>
	
	<h2>회원 가입</h2>
	
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
	<button type="button"> 회 원 가 입 </button>
	
</body>
</html>