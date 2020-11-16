<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>infoupdate_form</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="${root}/resources/css/header_navi.css">
<link rel="stylesheet" type="text/css" href="${root}/resources/css/body.css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@600&display=swap" rel="stylesheet">

<style type="text/css">
body {
	background-image: linear-gradient(to top, #f2f2f2 0%, white 100%);
	padding: 15px 0;
	font-weight: 300;
	font-size: 15px;
}

a{
	text-decoration: none;
}
a:hover{
	text-decoration: none;
}
.wrap {
	width: 1200px;
	margin: 0 auto;
}
header {
	width: 100%;
	min-height: 80%;
	display: flex;
	justify-content: space-between;
	align-items: center;
	position: relative;
	margin-bottom: 60px;
	margin-top: 10px;
	padding-bottom:15px;
	border-bottom: 1px solid grey;
}


.logo {
	width: 150px;
}


span{
	margin-top: 4px;
	font-weight: bold;
	color: grey;
	font-size: 10px;
}
.urlcolor {
	margin-top: 5px;
}

.urlcolor a {
	color: grey;
	text-decoration: none;
	font-size: 13px;
	font-family: 'Poppins', sans-serif;
	margin-left: 15px;
	margin-right: 15px;
	
}

.urlcolor a:hover {
	color: red;
	text-decoration: none;
}

.navi_ul {
	flex: 2;
	text-align: center;
	/* margin-right: 50x; */
	margin-top: 40px;
	font-family: 'Noto Sans KR', sans-serif;
}

.navi_li {
	list-style: none;
	display: inline-block;
}

.navi_li a {
	text-decoration: none;
	color: grey;
	padding: 10px 40px;
	font-size: 20px;
}

.navi_ul .navi_li a:hover {
	text-decoration: none;
	color: red;
	bottom: 2px;
	padding-bottom:29px;
	border-bottom: 4px solid red;
}
/* header css*/

h1, h2, h3, h4, h5, h6 {
	font-family: 'Noto Sans KR', sans-serif;
}
.contentBox {
	min-height: 1000px;
}
.mbrbox {/*회원카드*/
	width: 95%;
	height: 300px;
	margin: 20px auto;
}

.mbrboxTop {/*회원카드 윗부분*/
	position: relative;
	width: 100%;
	height: 200px;
	padding: 20px 100px;
	background-color: #f2f2f2;
	border-radius: 10px 10px 0px 0px;
	border-bottom: 5px solid white;
}
.profileImg{
	float:left;
	position:relative;
	height:100%;
	margin-top: 20px;
	margin-right: 50px;
}
.info{
	margin-top: 20px;
	margin-bottom: 15px;
}
.rate{
	color: #F46D0D;
	float:left;
	font-weight: bold;
}
h6 a{
	text-decoration: none;
	color: #4d4d4d;
}
h6 a:hover{
	text-decoration:underline;
}

.mbrboxBottom {/*회원카드 아랫부분*/
	width: 100%;
	height: 100px;
	padding: 23px 150px;
	background-color: #f2f2f2;
	border-radius: 0px 0px 10px 10px;
}
.listContents{
	width: 90%;
	margin: 50px auto;
	margin-top: 50px;
}
.list-card{
	margin-top: 80px;
	border-bottom: 1px solid grey;
}
.list-Title{
	border-bottom: 5px solid grey;
}
.list-cnt{
	font-family: 'Noto Sans KR', sans-serif;
	text-align: center;
}
.listNone{
	margin-top: 50px;
	margin-bottom: 50px;
	text-align: center;
	auto: 0;
}
.foot{

color : grey;
 width: 100%;
 height: 100px;
 text-align: center;

 }
.copyright{
 margin-top: 70px;
 }

.pnt{
	    padding: 0px 20px;
	    border-right: 1px solid grey
}
.pntd{
	    padding: 0px 40px;
	    font-family: 'Noto Sans KR', sans-serif;
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
.cssinfo{
display: flex;
flex-direction: column;
margin-top: 50px;
align-items: center;
}

h2 { color: #b30000; }
</style>



<script type="text/javascript">
$(document).ready(function() {
	
	$(".inputEng").keyup(function() {
		let tmpElement = event.target;
		let tmpValue = tmpElement.value;
		tmpElement.value
			= tmpValue.replace(/[^ A-Z a-z 0-9 \.]/g, '');
	});//keyup
	$(".inputNum").keyup(function() {
		let tmpElement = event.target;
		let tmpValue = tmpElement.value;
		tmpElement.value
			= tmpValue.replace(/[^ 0-9 \.]/g, '');
	});//keyup
	
	
	$("#btn_infoupdate").click(function() {
		
		if( !confirm("정말 수정하시겠습니까?") ) {
			return;
		}
		if( $.trim( $("#mb_pwd").val() ) == "" ){
			alert("패스워드를 확인 해 주세요.");
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

		$.post(
				"${root}/mycgv/infoupdate"
				, { 
					mb_id : $("#mb_id").val()
					, mb_pwd : $("#mb_pwd").val()
					, mb_nm : $("#mb_nm").val() 
					, mb_gen : $('input:radio[name=mb_gen]:checked').val() 
					, mb_tel1 : $("#mb_tel1").val()
					, mb_tel2 : $("#mb_tel2").val()
					, mb_tel3 : $("#mb_tel3").val()
					, mb_email1 : $("#mb_email1").val()
					, mb_email2 : $("#mb_email2").val()
				}
				, function(data, status) {
					if(status == 'success') {
						if(data == 1) {
							alert("회원 정보가 수정 되었습니다.")
							location.href = "${root}/mycgv";
						} else if(data == "-1") {
							alert("다시 시도 해 주세요.");
						}
					} else {
						alert("에러");
					}
				}
		);//post
	
	});//click
	
});//ready
</script>



</head>
<body>
	
	
	<div class="wrap">
	
	<div class="header_container">
			<%@ include file="../header_navi.jsp"%>
	</div>
	<h2 class="text-center">회원 정보 수정</h2>
	<div class="cssinfo">
	
	
	<form id="infoupdate_form">	
	
	<div class="form-group">
		<label for="mb_id">ID</label>
 		<div class="form-inline">
			<input type="text" class="form-control inputEng mr-1"
				id="mb_id" name="mb_id" maxlength="20" value="${info.mb_id}" disabled>
 		</div>
	</div>
	<div class="form-group">
		<label for="mb_pwd">PassWord</label>
		<input type="password" class="form-control" style="width:250px;"
			id="mb_pwd" name="mb_pwd" maxlength="20" value="${info.mb_pwd}">
	</div>
	<div class="form-group">
		<label for="mb_pwdre">PassWord 확인</label>
		<input type="password" class="form-control" style="width:250px;"
			id="mb_pwdre" name="mb_pwdre" maxlength="20" value="${info.mb_pwd}">
	</div>
	<div class="form-group">
		<label for="mb_nm">Name</label>
		<input type="text" class="form-control inputEng mr-1" style="width:250px;"
				id="mb_nm" name="mb_nm" maxlength="20" value="${info.mb_nm}">
	</div>
	
	<div class="form-group">
		<label for="mb_gen">Gender</label>
		<div class="form-inline">
		<c:choose>	
		<c:when test="${info.mb_gen == 'Male'}" > 
			<input type="radio" name="mb_gen" value="Male" checked > Male 
			<input type="radio" name="mb_gen" value="Female" > Female 
		</c:when>
		<c:otherwise>
			<input type="radio" name="mb_gen" value="Male" > Male 
   			<input type="radio" name="mb_gen" value="Female" checked > Female 
   		</c:otherwise>
		</c:choose>
		</div>
	</div>
	<div class="form-group">
		<label for="mb_birth">Birth</label>
		<div class="form-inline">
			<input type="text" class="form-control mr-1 inputNum"
				id="mb_birth1" name="mb_birth1"
				size="4" maxlength="4" value="${info.mb_birth1}" disabled /> 년
			<input type="text" class="form-control ml-1 mr-1 inputNum"
				id="mb_birth2" name="mb_birth2"
				size="2" maxlength="2" value="${info.mb_birth2}" disabled /> 월 
			<input type="text" class="form-control ml-1 inputNum"
				id="mb_birth3" name="mb_birth3"
				size="2" maxlength="2" value="${info.mb_birth3}" disabled /> 일 
		</div>
	</div>
	<div class="form-group">
		<label for="mb_tel">Telephone</label>
		<div class="form-inline">
			<input type="text" class="form-control mr-1 inputNum"
				id="mb_tel1" name="mb_tel1"
				size="3" maxlength="3" value="${info.mb_tel1}">
			- <input type="text" class="form-control ml-1 mr-1 inputNum"
				id="mb_tel2" name="mb_tel2"
				size="4" maxlength="4" value="${info.mb_tel2}">
			- <input type="text" class="form-control ml-1 inputNum"
				id="mb_tel3" name="mb_tel3"
				size="4" maxlength="4" value="${info.mb_tel3}">
		</div>
	</div>
	<div class="form-group">
		<label for="mb_email">Email</label>
		<div class="form-inline">
			<input type="text" class="form-control mr-1 inputEng"
				id="mb_email1" name="mb_email1"
				maxlength="25" style="width:150px;" value="${info.mb_email1}">
			@ <input type="text" class="form-control ml-1 inputEng"
				id="mb_email2" name="mb_email2"
				maxlength="25" style="width:150px;" value="${info.mb_email2}">
		</div>
	</div>
	
	</form>
	
	<div class="text-center mb-5">
	<button type="button" id="btn_infoupdate"> U P D A T E </button>
	</div>
	</div>
	
	<div class="foot">

			<h5 class="copyright">&copy;2020 CGV. All Rights Reserved</h5>
			<div class="links">
				<a href="#">Terms of Service</a> <a href="#">Privacy Policy</a>
			</div>
		</div>
	</div>
	
	
</body>
</html>