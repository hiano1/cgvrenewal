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
<link rel="stylesheet" href="resources/css/header.css">

<style type="text/css">

body {
	background: black;
	color: white;
}

button {
    font-size: 1.1rem;
    padding: 10px;
    margin: 20px 0px;
    background-color: #b30000;
    color: white;
    border: none;
    border-radius: 8px;
}

.csslogin{
position: static;
text-align: center;
margin-top: 200px;
}



</style>

	<script>
	$(document).ready(function() {
		
		//비밀번호 입력하고 엔터 누르면 로그인
		$("#mb_login_pwd").keyup(function() {
			if(event.keyCode == 13) {
				$("#btn_login").click();
			}
		});//keyup
		
		
		$("#btn_login").click(function() {
			if( $.trim( $("#mb_login_id").val() ) == "" ) {
				$("#notice").text("아이디를 입력 해 주세요.");
				return;
			} 
			if( $.trim( $("#mb_login_pwd").val() ) == "" ) {
				$("#notice").text("비밀번호를 입력 해 주세요.");
				return;
			}
			$.ajax({
				type:"POST"
				, url:"./login"
				, dataType:"JSON"
				, data : {mb_login_id : $("#mb_login_id").val(), mb_login_pwd : $("#mb_login_pwd").val()}
				, success : function(data) {
					if(data == "1") {
						location.href = "${root}/";
					} else if (data == "-1") {
						alert("아이디가 없습니다.");
					} else if(data == "0") {
						alert("비밀번호를 확인해 주세요.");
					}
				}//success
				, error : function(xhr, status, error) {
				}
			});
		});//click
		
	});//ready
	</script>

</head>
<body>
	
	
	
	<div class="wrap">
	
	<div class="header_container">
			<%@ include file="../home_header.jsp"%>
		</div>
	
	<form id="loginForm" method="post" action="${root}/login">
  		
  		<div class="csslogin">
    	<p>
    		<input type="text" id="mb_login_id" name="mb_login_id" placeholder="ID">
    	</p>
    	<p>
      		<input type="password" id="mb_login_pwd" name="mb_login_pwd" placeholder="Access code">
    	</p>
  		<p class="text-center">
			<button type="button" id="btn_login"> Login </button>
  		</p>
  		
		<span id="notice"></span>
  		</div>
  	
		
	</form>
	<div class="footer-container">
		<%@ include file="../home_footer.jsp"%>
	</div>
	</div>
	
	
</body>
</html>