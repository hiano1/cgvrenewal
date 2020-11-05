

$(document).ready(function() {
	$("a[id^=lcode]").click(function() {
		$("#selL").text($(this).text());
		var a;
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
});//ready