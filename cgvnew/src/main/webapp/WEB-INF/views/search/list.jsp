<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>search</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
	<div class="container">
		<div class="search" id="id">
			<input type="text" placeholder="검색어를 입력해주세요.">
		</div>
		<div class="button">
			<button type="button" name="btn_click" id="btn_click">검색</button>
		</div>

		<table class="table">
			<thead>
				<th>포스터</th>
			</thead>
			<tbody>

			</tbody>
			
		</table>

	</div>
	<script type="text/javascript">
$(document).ready(function() {
	("#btn_click").click(function() {
		$("#btn_click").click(function() {
			if( $.trim( $("#id").val() ) == "" ){
				alert("검색어를 확인해 주세요.");
				return;
			}
			//서버가따오ㄱㅣ post 
			$.get(
			 "${pageContext.request.contextPath}/#"
			, {}
			,function(data,status){
				$.each(function(index, dto) {
					$("tbody").append(
							"<tr>"
							+"<td>"+dto.mv_p+"</td>"
	+"<td>"
	+"<a href='${pageContext.request.contextPath}/free/detail?bno="
	+dto.bno+"'>"+dto.title+"</a>"
	+"</td>" 
	+"</tr>"
						);
					
					
			 }// e.function
			 
				});//each
			}//function 큰애 
			
			
			
			
			
			); //get
			
			
			
			
		if ("#btn_click" == false) {
			return;
			alert("확인되는 정보가 없습니다. 검색어를 확인해 주세요.");
			
		}else if("#btn_click" == true){
 var url = "${pageContext.request.contextPath}/#";
		 location.href = url;
		  console.log(url);
		}
	});
	
}); 
	
</script>

</body>
</html>