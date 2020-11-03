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
<style type="text/css">

</style>
</head>
<body>
	
	<div class="container">
	
	
	<script type="text/javascript">
	$(document).ready(function() {
		
		var ck = 0; //아이디 중복 체크 변수
		
		
		$("#btn_idChk").click(function() {
		//아이디를 적지 않고 중복 체크 버튼 눌렀을 때
		if( $("#mb_id").val().trim() == "" ) {
			alert("아이디를 입력 해 주세요.");
			return false;
		}
		//아이디 중복 체크
		$.get(
			"./idChk"
			,{mb_id:$("#mb_id").val()}
			,function(data, status){
				if(status == "success")
					if(data == 0){
						$("#id_desc").text("사용 가능한 아이디 입니다.");
						$("#id_desc").css("color","blue");
						$("#mb_id").focus();
						ck = 1;
					} else {
						$("#id_desc").text("이미 사용 중인 아이디 입니다.");
						$("#id_desc").css("color","red");
						$("#mb_id").focus();
					} else {
						alert("잠시 후 다시 시도해 주세요.");
					}
				}//function
			);//get
		});//click
		
		//중복 체크 후 다시 아이디 변경 할 때
		$("#mb_id").keydown(function() {
			ck = 0;
		});//keydown
		
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
			if( $('input:radio[name=mb_gen]').is(':checked') != true ) {
				alert("성별을 선택 해 주세요.");
				return;
			}
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
			if(ck == 0) {
				alert('아이디 중복 여부를 확인 해 주세요.');
				return false;
			}else {
				
			$("#register_form").submit();
			}
		});//click
	});//ready
	
	</script>
	
	
	
	<h2 class="text-center text-muted">회원 가입</h2>
	
	<form id="register_form" method="post"
		  action="${root}/register">
	
	<div class="form-group">
		<label for="mb_id">ID<span id="id_desc"></span></label>
 		<div class="form-inline">
			<input type="text" class="form-control inputEng mr-1"
				id="mb_id" name="mb_id" maxlength="20">
 			<button type="button" id="btn_idChk"
 				class="btn btn-primary">중복 확인</button>
 		</div>
	</div>
	<div class="form-group">
		<label for="mb_pwd">PassWord</label>
		<input type="password" class="form-control"
			id="mb_pwd" name="mb_pwd" maxlength="20">
	</div>
	<div class="form-group">
		<label for="mb_pwdre">PassWord 확인</label>
		<input type="password" class="form-control"
			id="mb_pwdre" name="mb_pwdre" maxlength="20">
	</div>
	<div class="form-group">
		<label for="mb_nm">Name</label>
		<input type="text" class="form-control inputEng mr-1"
				id="mb_nm" name="mb_nm" maxlength="20">
	</div>
	
	<div class="form-group">
		<label for="mb_gen">Gender</label>
		<div class="form-inline">
		<input type="radio" name="mb_gen" value="Male"> Male 
   		<input type="radio" name="mb_gen" value="Female"> Female 
		</div>
	</div>
	
	<div class="form-group">
		<label for="mb_birth1">Birth</label>
		<div class="form-inline">
			<input type="text" class="form-control mr-1 inputNum"
				id="mb_birth1" name="mb_birth1"
				size="4" maxlength="4"> 년
			<input type="text" class="form-control ml-1 mr-1 inputNum"
				id="mb_birth2" name="mb_birth2"
				size="2" maxlength="2"> 월
			<input type="text" class="form-control ml-1 inputNum"
				id="mb_birth3" name="mb_birth3"
				size="2" maxlength="2"> 일
		</div>
	</div>
	
	<div class="form-group">
		<label for="mb_tel">Telephone</label>
		<div class="form-inline">
			<input type="text" class="form-control mr-1 inputNum"
				id="mb_tel1" name="mb_tel1"
				size="3" maxlength="3">
			- <input type="text" class="form-control ml-1 mr-1 inputNum"
				id="mb_tel2" name="mb_tel2"
				size="4" maxlength="4">
			- <input type="text" class="form-control ml-1 inputNum"
				id="mb_tel3" name="mb_tel3"
				size="4" maxlength="4">
		</div>
	</div>
	<div class="form-group">
		<label for="mb_email">Email</label>
		<div class="form-inline">
			<input type="text" class="form-control mr-1 inputEmail"
				id="mb_email1" name="mb_email1"
				maxlength="25">
			@ <input type="text" class="form-control ml-1 inputEmail"
				id="mb_email2" name="mb_email2"
				maxlength="25">
		</div>
	</div>
	
	</form>
	
	<div class="text-right mb-5">
	<button type="button" id="btn_register"
			class="btn btn-primary"> 회 원 가 입 </button>
	</div>
	
	</div>
	
</body>
</html>