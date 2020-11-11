<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!-- find id modal start -->
<div class="modal" id="findid_modal">
<div class="modal-dialog modal-sm">
<div class="modal-content">
<!-- modal header -->
<div class="modal-header">
	<h4>아이디 찾기</h4>
</div>
<!-- modal body -->
<div class="modal-body">
	<form id="findidForm" method="post"
		  action="${root}/findId">
	<div class="form-group">
		<label for="res1_nm">Your Name</label>
		<input class="form-control" type="text" id="res1_nm" name="res1_nm">
	</div>
	<div class="form-group">
		<label for="res1_email">Your Email</label>
		<div class="form-inline">
		<input type="text" class="form-control mr-1"
				id="res1_email1" name="res1_email1">
		@ <input type="text" class="form-control mr-1"
				id="res1_email2" name="res1_email2">
		</div>
	</div>
	</form>
</div>
<span id="find_notice"></span>
<!-- modal footer -->
<div class="modal-footer">
	<button type="button" id="btn_findid"
			class="btn btn-primary">Find ID</button>
	<button type="button"
			class="btn btn-danger"
			data-dismiss="modal">Close</button>
</div>
</div>
</div>
</div>

<script>
$(document).ready(function() {
	
	$("#btn_findid").click(function() {
		$.post(
			"${root}/register/findid"
			, { mb_nm : $("#res1_nm").val() , mb_email : $("#res1_email1").val()+"@"+$("#res1_email2").val() }
			, function(data, status) {
				$("#find_notice").empty();
				if(data.length <= 0) { //id 없음.
					$("#find_notice").append("조회 된 아이디가 없습니다.");
				}else { //id 있음.
					$.each(data, function(idx, dto) {
					$("#find_notice").append("회원님의 정보로 등록된 아이디는 "+dto.mb_id+" 입니다.");
					});//each
				}
			}//function
		);//post
	});//click
	
});//ready
</script>
<!-- find id modal end -->

<style type="text/css">
h4 { color: black; }
.modal-body { color: black; }
#res1_nm { width: 220px; }
#res1_email1, #res1_email2 { width: 115px; }
#find_notice { color: black; }
</style>
