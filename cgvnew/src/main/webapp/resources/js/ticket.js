

$(document).ready(function() {
	$("a[id^=lcode]").click(function() {
		$("#selL").text($(this).text());
		let a;
		switch ($(this).text()) {
		case '서울': a = 1; break;
		case '경기': a = 2; break;
		case '인천': a = 3; break;
		case '강원': a = 4; break;
		case '대전/충청': a = 5; break;
		case '대구': a = 6; break;
		case '부산/울산': a = 7; break;
		case '경상': a = 8; break;
		case '광주/전라/제주': a = 9; break;
		}; //switch
		
		$.get(
			"/cgvnew/ticketrest/middle"
			,{lcode : a}
			,function(data,status){
			$("#mid_table").empty();
			$.each(data,function(index,dto){
				$("#mid_table").append(
					"<tr>"
					+ "<td>"
					+ "<a href='#' id='mcode" + index + "'>"
					+ dto.tm_nm
					+ "</a>"
					+ "</td>"
					+ "</tr>"
				);
			}); //each 
			}
			, "json");
		}); //click
	$(document).on("click","a[id^=mcode]",function(){
		$("#selM").text($(this).text());
	});
	
	//next 버튼 눌릴때 시간표페이지로 넘어감
	//side var text 가 null이면 false
	$("#nextBtn").click(function(){
		
										
	});	
	let mcode;
	switch ($(this).text()) {
		case 'car cinema': mcode = 1; break;
		case 'cgv강남': mcode = 2; break;
		case 'cgv강변': mcode = 3; break;
		case 'cgv홍대': mcode = 4; break;
		case 'cgv경기광주': mcode = 5; break;
		case 'cgv고양행신': mcode = 6; break;
		case 'cgv계양': mcode = 7; break;
		case 'cgv남주안': mcode = 8; break;
		case 'cgv강릉': mcode = 9; break;
		case 'cgv원주': mcode = 10; break;
		case 'cgv당진': mcode = 11; break;
		case 'cgv대전': mcode = 12; break;
		case 'cgv대구': mcode = 13; break;
		case 'cgv대구수성': mcode = 14; break;
		case 'cgv남포': mcode = 15; break;
		case 'cgv대연': mcode = 16; break;
		case 'cgv거제': mcode = 17; break;
		case 'cgv고성': mcode = 18; break;
		case 'cgv광양': mcode = 19; break;
		case 'cgv광양 엘에프스퀘어': mcode = 20; break;
		}; //switch
	
	$.ajax({
	url:"/cgvnew/ticketrest/seat"
	,data:{mcode : mcode}
	,method:"GET"
	,dataType:"json"
	
	});								
});//ready