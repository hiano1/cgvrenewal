<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>infoUpdate</title>
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
.cssinfo{
display: flex;
flex-direction: column;
margin-top: 50px;
align-items: center;
}

h2 { color: #b30000; }
</style>

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
				id="mb_id" name="mb_id" maxlength="20">
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
	<button type="button" id="btn_infoupdate"> U P D A T E </button>
	</div>
	</div>
	
	<div class="footer-container">
		<%@ include file="../home_footer.jsp"%>
	</div>
	</div>
	
	
</body>
</html>