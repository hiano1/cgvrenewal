<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ticket</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<style type="text/css">
		.form-inline{
			
		}
	</style>
	
</head>
<body>
	


	<div class="container">
		<div class="side_nav1">
			<!-- 선택된 영화 -->
			<c:forEach var="smv" items="${smv}" varStatus="status">
				<h3>선택된 영화 : ${smv.mv_nm}</h3>
				<img src="${smv.mv_p}">
			</c:forEach>
		</div>
		<div class="side_nav2">
			<!-- 선택된 지역 / 영화관 -->
			선택된 지역 :
			<h3 id="selL"></h3>
			선택된 영화관 :
			<h3 id="selM"></h3>
		</div>
		<div class="form-inline">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>지역이름</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="llist" items="${largeList}" varStatus="status">
						<tr id="sel_l">

							<td><a href="#" id="lcode${status.count}">${llist.tl_nm}</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

			<table id="mid_table">

			</table>
		</div><!-- form-inline -->
		
		<button id="nextBtn">next</button>
	</div><!-- container -->
	<script type="text/javascript" src="${root}/resources/js/ticket.js"></script>
</body>
</html>