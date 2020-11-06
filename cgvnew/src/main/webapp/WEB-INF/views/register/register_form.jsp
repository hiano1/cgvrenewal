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
.cssres{
display: flex;
flex-direction: column;
margin-top: 50px;
align-items: center;
}

h2 { color: #b30000; }
</style>

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
				
			//$("#register_form").submit();
			}
			
			$.ajax({
				type:"POST"
				, url:"./register"
				, dataType:"JSON"
				, data : {mb_id : $("#mb_id").val(), mb_pwd : $("#mb_pwd").val()
						, mb_nm : $("#mb_nm").val(), mb_gen : $('input:radio[name=mb_gen]:checked').val()
						, mb_birth1 : $("#mb_birth1").val(), mb_birth2 : $("#mb_birth2").val(), mb_birth3 : $("#mb_birth3").val()
						, mb_tel1 : $("#mb_tel1").val(), mb_tel2 : $("#mb_tel2").val(), mb_tel3 : $("#mb_tel3").val()
						, mb_email1 : $("#mb_email1").val(), mb_email2 : $("#mb_email2").val()}
				, success : function(data) {
					if(data == "1") {
						alert("회원 가입을 축하드립니다.")
						location.href = "${root}/";
					} else if(data == "-1") {
						alert("회원 가입을 다시 시도 해 주세요.");
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
	<h2 class="text-center">Create Account</h2>
	<div class="cssres">
	
	<form id="register_form" method="post"
		  action="${root}/register">
	
	<div class="form-group">
		<label for="mb_id">ID<span id="id_desc"></span></label>
 		<div class="form-inline">
			<input type="text" class="form-control inputEng mr-1"
				id="mb_id" name="mb_id" maxlength="20">
 			<button type="button" id="btn_idChk">중복 확인</button>
 		</div>
	</div>
	<div class="form-group">
		<label for="mb_pwd">PassWord</label>
		<input type="password" class="form-control" style="width:250px;"
			id="mb_pwd" name="mb_pwd" maxlength="20">
	</div>
	<div class="form-group">
		<label for="mb_pwdre">PassWord 확인</label>
		<input type="password" class="form-control" style="width:250px;"
			id="mb_pwdre" name="mb_pwdre" maxlength="20">
	</div>
	<div class="form-group">
		<label for="mb_nm">Name</label>
		<input type="text" class="form-control inputEng mr-1" style="width:250px;"
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
		<select id="mb_birth1" name="mb_birth1">
       		<option value="2013">2013</option>
       		<option value="2012">2012</option>
       		<option value="2011">2011</option>
       		<option value="2010">2010</option>
       		<option value="2009">2009</option>
       		<option value="2008">2008</option>
       		<option value="2007">2007</option>
       		<option value="2006">2006</option>
       		<option value="2005">2005</option>
       		<option value="2004">2004</option>
       		<option value="2003">2003</option>
       		<option value="2002">2002</option>
       		<option value="2001">2001</option>
       		<option value="2000">2000</option>
       		<option value="1999">1999</option>
       		<option value="1998">1998</option>
       		<option value="1997">1997</option>
       		<option value="1996">1996</option>
       		<option value="1995">1995</option>
       		<option value="1994">1994</option>
       		<option value="1993">1993</option>
       		<option value="1992">1992</option>
       		<option value="1991">1991</option>
       		<option value="1990">1990</option>
       		<option value="1989">1989</option>
       		<option value="1988">1988</option>
       		<option value="1987">1987</option>
       		<option value="1986">1986</option>
       		<option value="1985">1985</option>
       		<option value="1984">1984</option>
       		<option value="1983">1983</option>
       		<option value="1982">1982</option>
       		<option value="1981">1981</option>
       		<option value="1980">1980</option>
       		<option value="1979">1979</option>
       		<option value="1978">1978</option>
       		<option value="1977">1977</option>
       		<option value="1976">1976</option>
       		<option value="1975">1975</option>
       		<option value="1974">1974</option>
       		<option value="1973">1973</option>
       		<option value="1972">1972</option>
       		<option value="1971">1971</option>
       		<option value="1970">1970</option>
       		<option value="1969">1969</option>
       		<option value="1968">1968</option>
       		<option value="1967">1967</option>
       		<option value="1966">1966</option>
       		<option value="1965">1965</option>
       		<option value="1964">1964</option>
       		<option value="1963">1963</option>
       		<option value="1962">1962</option>
       		<option value="1961">1961</option>
       		<option value="1960">1960</option>
     	</select> 년
     	<select id="mb_birth2" name="mb_birth2">
       		<option value="1">1</option>
       		<option value="2">2</option>
       		<option value="3">3</option>
       		<option value="4">4</option>
       		<option value="5">5</option>
       		<option value="6">6</option>
       		<option value="7">7</option>
       		<option value="8">8</option>
       		<option value="9">9</option>
       		<option value="10">10</option>
       		<option value="11">11</option>
       		<option value="12">12</option>
     	</select> 월 
     	<select id="mb_birth3" name="mb_birth3">
       		<option value="1">1</option>
       		<option value="2">2</option>
       		<option value="3">3</option>
       		<option value="4">4</option>
       		<option value="5">5</option>
       		<option value="6">6</option>
       		<option value="7">7</option>
       		<option value="8">8</option>
       		<option value="9">9</option>
       		<option value="10">10</option>
       		<option value="11">11</option>
       		<option value="12">12</option>
       		<option value="13">13</option>
       		<option value="14">14</option>
       		<option value="15">15</option>
       		<option value="16">16</option>
       		<option value="17">17</option>
       		<option value="18">18</option>
       		<option value="19">19</option>
       		<option value="20">20</option>
       		<option value="21">21</option>
       		<option value="22">22</option>
       		<option value="23">23</option>
       		<option value="24">24</option>
       		<option value="25">25</option>
       		<option value="26">26</option>
       		<option value="27">27</option>
       		<option value="28">28</option>
       		<option value="29">29</option>
       		<option value="30">30</option>
       		<option value="31">31</option>
     	</select> 일
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
			<input type="text" class="form-control mr-1 inputEng"
				id="mb_email1" name="mb_email1"
				maxlength="25" style="width:150px;">
			@ <input type="text" class="form-control ml-1 inputEng"
				id="mb_email2" name="mb_email2"
				maxlength="25" style="width:150px;">
		</div>
	</div>
	
	</form>
	
	<div class="text-center mb-5">
	<button type="button" id="btn_register"> 회 원 가 입 </button>
	</div>
	</div>
	<div class="footer-container">
		<%@ include file="../home_footer.jsp"%>
	</div>
	</div>
	
</body>
</html>