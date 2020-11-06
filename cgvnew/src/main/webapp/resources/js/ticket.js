

$(document).ready(function() {
	let pcscnt;
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
			pcscnt = 1;
		}); //click lcode
	$(document).on("click","a[id^=mcode]",function(){
		$("#selM").text($(this).text());
		pcscnt = 2;
	});
	
	//next 버튼 눌릴때 시간표페이지로 넘어감
	//side var text 가 null이면 false
	$("#nextBtn").click(function(){
	
	$(".tablel").empty();
	$("#mid_table").empty();
	
	let today = new Date();   

	let year = today.getFullYear(); // 년도
	let month = today.getMonth() + 1;  // 월
	let date = today.getDate();  // 날짜
	let day = today.getDay();  // 요일(일요일부터 0으로 6까지 표시)
	
	switch(day){
		case 0 : day = '일'; break;
		case 1 : day = '월'; break;
		case 2 : day = '화'; break;
		case 3 : day = '수'; break;
		case 4 : day = '목'; break;
		case 5 : day = '금'; break;
		case 6 : day = '토'; break;
	};
	
	$(".tablel").append("Timenow : " +year + '/' + month + '/' + date +" "+ day + "요일");
	
	//if(psccnt == 2)
		let ts_num;
		switch ($("#selM").text()) {
			case 'car cinema': ts_num = 1; break;
			case 'cgv강남': ts_num = 2; break;
			case 'cgv강변': ts_num = 3; break;
			case 'cgv홍대': ts_num = 4; break;
			case 'cgv경기광주': ts_num = 5; break;
			case 'cgv고양행신': ts_num = 6; break;
			case 'cgv계양': ts_num = 7; break;
			case 'cgv남주안': ts_num = 8; break;
			case 'cgv강릉': ts_num = 9; break;
			case 'cgv원주': ts_num = 10; break;
			case 'cgv당진': ts_num = 11; break;
			case 'cgv대전': ts_num = 12; break;
			case 'cgv대구': ts_num = 13; break;
			case 'cgv대구수성': ts_num = 14; break;
			case 'cgv남포': ts_num = 15; break;
			case 'cgv대연': ts_num = 16; break;
			case 'cgv거제': ts_num = 17; break;
			case 'cgv고성': ts_num = 18; break;
			case 'cgv광양': ts_num = 19; break;
			case 'cgv광양 엘에프스퀘어': ts_num = 20; break;
			}; //switch
	
		$.ajax({
		url:"/cgvnew/ticketrest/timetable"
		,type:"GET"
		,dataType:"json"
		,contentType: "application/json"
		,data:{ts_num : ts_num}
		,success : function(data){
	 			$.each(data,function(index,dto){
				$(".tablel").append(
					"<tr>"
					+ "<td>"
					+ dto.tt_date +"<br>"
					+ dto.mv_num +"<br>"
					+ dto.ts_num
					+ "</td>"
					+ "</tr>"
				);
			}); //each 
	 			
			}//success								
		});//ajax
	
	});	//click next							
});//ready