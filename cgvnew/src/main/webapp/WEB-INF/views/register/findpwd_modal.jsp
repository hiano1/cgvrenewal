<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!-- find password modal start -->
<div class="modal" id="findpwd_modal">
<div class="modal-dialog modal-sm">
<div class="modal-content">
<!-- modal header -->
<div class="modal-header">
	<h4>비밀번호 찾기</h4>
</div>
<!-- modal body -->
<div class="modal-body">
	<form id="findpwdForm" method="post"
		  action="${root}/findPwd">
	<div class="form-group">
		<label for="res2_id">Your ID</label>
		<input class="form-control" type="text" id="res2_id" name="res2_id">
	</div>	  
	<div class="form-group">
		<label for="res2_nm">Your Name</label>
		<input class="form-control" type="text" id="res2_nm" name="res2_nm">
	</div>
	<div class="form-group">
		<label for="res2_email">Your Email</label>
		<div class="form-inline">
		<input type="text" class="form-control mr-1"
				id="res2_email1" name="res2_email1">
		@ <input type="text" class="form-control mr-1"
				id="res2_email2" name="res2_email2">
		</div>
	</div>
	</form>
</div>
<!-- modal footer -->
<div class="modal-footer">
	<button type="button" id="btn_findpwd"
			class="btn btn-primary">Find Password</button>
	<button type="button"
			class="btn btn-danger"
			data-dismiss="modal">Close</button>
</div>
</div>
</div>
</div>

<script>
$(document).ready(function() {
	
	$("#btn_findpwd").click(function() {
		$.post(
			"${root}/register/findpwd" 
			, { mb_id : $("#res2_id").val(), mb_nm : $("#res2_nm").val() 
				, mb_email : $("#res2_email1").val()+"@"+$("#res2_email2").val() }
			, function(data, status) {
				
				alert(data);
				//data 1 : 성공.
				//data 0 : 회원 아님.
				//data -1 : 회원 정보 너무 많음.
				//data -2 : 패스워드 수정 실패.
				//data -3 : 이메일 발송 실패.
				if(data == 1) {
					alert("이메일을 확인해 주세요.");
				} else if(data == 0) {
					alert("회원 정보가 없습니다.");
				} else if(data <= -1) {
					alert("관리자에게 문의해 주세요.");
				}
				
			}//function
		);//post
	});//click
	
});//ready
</script>
<!-- find password modal end -->

<style type="text/css">
h4 { color: black; }
.modal-body { color: black; }
#res2_id, #res2_nm { width: 220px; }
#res2_email1, #res2_email2 { width: 115px; }
</style>