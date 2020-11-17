<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!-- password check modal start -->
<div class="modal" id="pwdchk_modal">
<div class="modal-dialog modal-sm">
<div class="modal-content">
<!-- modal header -->
<div class="modal-header">
	<h4>회원 탈퇴</h4>
</div>
<!-- modal body -->
<div class="modal-body">
	<form id="mbrDeleteForm" method="post"
		  action="${root}/">
	<div class="form-group">
		<label for="pwdchk">Your Password</label>
		<span id="pwd_notice"></span>
		<input class="form-control" type="password" id="pwdchk" name="pwdchk">
	</div>
	</form>
</div>
<!-- modal footer -->
<div class="modal-footer">
<button type="button" id="btn_mbrdelete"
			class="btn btn-primary">BYE-BYE</button>
	<button type="button"
			class="btn btn-danger"
			data-dismiss="modal">Close</button>
</div>

</div>
</div>
</div>

<script>
$(document).ready(function() {
	
	$("#btn_mbrdelete").click(function() {
		
		if( $.trim( $("#pwdchk").val() ) == "" ) {
			$("#pwd_notice").text("비밀번호를 입력 해 주세요.");
			return;
		}
		var result = confirm('정말 탈퇴 하시겠습니까?');
		if(result == false){
			return;
		}
		$.post(
			"${root}/mycgv/mbrdelete"
			, { 
				mb_id : sessionStorage.getItem("login_id_storage")
				, mb_pwd : $("#pwdchk").val() 
			}
			, function(data, status) {
				if(data == -1){
					alert("미 사용 예매 티켓이 존재합니다.");
					return;
				} else if(data == 0){
					alert("비밀번호가 올바르지 않습니다.");
					return;
				} else{ //탈퇴
						sessionStorage.clear(); //세션 정보 삭제 (sessionStorage)
						location.href = "${root}/";
				}
				
			}//function
		);//post
		
	});//click
	
});//ready
</script>
<!-- password check modal end -->