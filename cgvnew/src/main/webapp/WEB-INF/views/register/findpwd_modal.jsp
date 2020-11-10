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
		<label for="res_id">Your ID</label>
		<input class="form-control" type="text" id="res_id" name="res_id">
	</div>	  
	<div class="form-group">
		<label for="res_nm">Your Name</label>
		<input class="form-control" type="text" id="res_nm" name="res_nm">
	</div>
	<div class="form-group">
		<label for="res_email">Your Email</label>
		<div class="form-inline">
		<input type="text" class="form-control mr-1"
				id="res_email1" name="res_email1">
		@ <input type="text" class="form-control mr-1"
				id="res_email2" name="res_email2">
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

</script>
<!-- find password modal end -->

<style type="text/css">
h4 { color: black; }
.modal-body { color: black; }
#res_id, #res_nm { width: 220px; }
#res_email1, #res_email2 { width: 115px; }
</style>