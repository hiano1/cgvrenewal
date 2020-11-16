$(document)
    .ready(
        function() {
            let pcscnt;
            let subtime;
            let tt_date;
            let mv_num;
            let tt_datedate;
            $("a[id^=lcode]")
                .click(
                    function() {
                        $("#selL").text($(this).text());
                        let a;
                        switch ($(this).text()) {
                            case '서울':
                                a = 1;
                                break;
                            case '경기':
                                a = 2;
                                break;
                            case '인천':
                                a = 3;
                                break;
                            case '강원':
                                a = 4;
                                break;
                            case '대전/충청':
                                a = 5;
                                break;
                            case '대구':
                                a = 6;
                                break;
                            case '부산/울산':
                                a = 7;
                                break;
                            case '경상':
                                a = 8;
                                break;
                            case '광주/전라/제주':
                                a = 9;
                                break;
                        }; // switch

                        $
                            .get(
                                "/cgvnew/ticketrest/middle", {
                                    lcode: a
                                },
                                function(data, status) {
                                    $("#mid_table")
                                        .empty();
                                    $
                                        .each(
                                            data,
                                            function(
                                                index,
                                                dto) {
                                                $(
                                                        "#mid_table")
                                                    .append(
                                                        "<tr>" +
                                                        "<td>" +
                                                        "<a href='#' id='mcode" +
                                                        index +
                                                        "'>" +
                                                        dto.tm_nm +
                                                        "</a>" +
                                                        "</td>" +
                                                        "</tr>");
                                            }); // each
                                }, "json"); // get
                        pcscnt = 1;
                    }); // click lcode
            $(document).on("click", "a[id^=mcode]", function() {
                pcscnt = 2;
                $("#selM").text($(this).text());
            }); // click mcode

            // next 버튼 눌릴때 시간표페이지로 넘어감
            // side var text 가 null이면 false
            $("#nextBtn")
                .click(
                    function() {
                        if (pcscnt === 2) {

                            $("#sel_l").empty();
                            $("#mid_table").empty();

                            let today = new Date();

                            let year = today.getFullYear(); // 년도
                            let month = today.getMonth() + 1; // 월
                            let date = today.getDate(); // 날짜
                            let day = today.getDay(); // 요일(일요일부터
                            // 0으로
                            // 6까지
                            // 표시)

                            switch (day) {
                                case 0:
                                    day = '일';
                                    break;
                                case 1:
                                    day = '월';
                                    break;
                                case 2:
                                    day = '화';
                                    break;
                                case 3:
                                    day = '수';
                                    break;
                                case 4:
                                    day = '목';
                                    break;
                                case 5:
                                    day = '금';
                                    break;
                                case 6:
                                    day = '토';
                                    break;
                            };

                            $("#sel_l").append(
                                "Timenow : " + year + '/' +
                                month + '/' +
                                date + " " + day +
                                "요일" + "<br>");
                            $("#mid_table")
                                .append(
                                    "<a id = 'day0' href='#'>" +
                                    (date) +
                                    "</a>" +
                                    "<a id = 'day1' href='#'>" +
                                    (date + 1) +
                                    "</a>" +
                                    "<a id = 'day2' href='#'>" +
                                    (date + 2) +
                                    "</a>" +
                                    "<a id = 'day3' href='#'>" +
                                    (date + 3) +
                                    "</a>" +
                                    "<a id = 'day4' href='#'>" +
                                    (date + 4) +
                                    "</a>" +
                                    "<a id = 'day5' href='#'>" +
                                    (date + 5) +
                                    "</a>");

                            let ts_num = getMcode($("#selM").text());
                            $(document)
                                .on(
                                    "click",
                                    "a[id^=day]",
                                    function() {
                                    	$(".Contentsdiv").empty();
                                    	
                                        date = $(this)
                                            .text()

                                        $
                                            .ajax({
                                                url: "/cgvnew/ticketrest/timetable",
                                                type: "GET",
                                                dataType: "json",
                                                contentType: "application/json",
                                                data: {
                                                    ts_num: ts_num,
                                                    date: date
                                                },
                                                success: function(
                                                    data) {
                                                    $
                                                        .each(
                                                            data,
                                                            function(
                                                                index,
                                                                dto) {
                                                            	tt_date = dto.tt_num;
                                                            	tt_datedate = dto.tt_date;
                                                            	mv_num = dto.mv_num;
                                                                $(".Contentsdiv")
                                                                    .append(
                                                                        "<tr id='scode" +
                                                                        index +
                                                                        "'>" +
                                                                        "<td>" +
                                                                        dto.tt_date +
                                                                        "<br>" +
                                                                        dto.mv_num +
                                                                        "<br>" +
                                                                        dto.ts_num +
                                                                        "<br>" +
                                                                        dto.ts_tcount +
                                                                        "</td>" +
                                                                        "</tr>");
                                                            }); // each
                                                } // success
                                            }); // ajax

                                    }); // click day

                        } else if (pcscnt === 3) {
                        	//ticket con ? 비움
                        	$(".Contentsdiv").empty();
                            // 로그인 검사
                        	let session = sessionStorage.getItem("login_id_storage");
                        	
//                            alert(session);
                             if (session == null) {
                                alert("로그인이 필요한 서비스입니다.");
                                  window.location = "../loginForm";
                              }
                        	
                            // total 가져와서 좌석 찍기

                            // tcount 가져와서
                            // ui 찍기
                            let tmpidPre = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V'];
                            let tmpidSuf = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v'];
                            
                            const seatDiv = document.querySelector(".Contentsdiv");
                            let test = [];
                            let teststr = "";
                            let selectedSeats = new Array();
                            let selectedSeatsMap = [];
                            let clicked = "";
                            let div = "";
                            
                            for (i = 0; i < (subtime / 15); i++) {
                                // tmpidPre = (Int)tmpidPre + 1
                            	
                            	div = document.createElement("div");
                            	seatDiv.append(div);

                                for (j = 0; j < 15; j++) {
                                   
                                    const input = document.createElement('input');
                                    input.type = "button";
                                    input.name = "seats"
                                    input.classList = "seat";
                                    input.value = tmpidPre[i]+tmpidSuf[j];
                                    
                                    
                                    div.append(input);
                                    input.addEventListener('click', function(e) {
                                    	
                                        //중복방지 함수
                                        selectedSeats = selectedSeats.filter((element, index) => selectedSeats.indexOf(element) != index);
                                        $("#selS").empty();
                                        //click class가 존재할때(제거해주는 toggle)
                                        if (input.classList.contains("clicked")) {
                                            input.classList.remove("clicked");
                                            clicked = document.querySelectorAll(".clicked");
                                            selectedSeats.splice(selectedSeats.indexOf(e.target.value), 1);
                                            clicked.forEach((data) => {
                                                selectedSeats.push(data.value);
                                            });
                                            for(let i in test){
                                            	if(test[i] === $(this).val()){
                                            		test.splice(i,1);
                                            	}else{
                                            		teststr = teststr + test[i];
                                            	}
                                            }
                                            $("#selS").text(teststr);
                                            teststr = "";
                                            
                                        //click class가 존재하지 않을때 (추가해주는 toggle)
                                        } else {
                                            input.classList.add("clicked");
                                            clicked = document.querySelectorAll(".clicked");
                                            clicked.forEach((data) => {
                                                selectedSeats.push(data.value);
                                            });
                                            test.push($(this).val());
                                            
                                            for(let i in test){
                                            	teststr = teststr + test[i];
                                            }
                                            $("#selS").text(teststr);
                                            teststr = "";
                                        }//if checked
                                    });//add event
                                    
                                    // 사각형 찍기 체크박스
                                    // if(예매코드 번호 ==
                                    // tmpidPre+tmpidSuf) 비활성된
                                    // 사각형
                                    // append
                                    // else{} 클릭 가능한 사각형 append

                                    // 좌석수 번호가 두자릿수가 될때 코드의 구분을
                                    // 어떻게 할것인지 영어
                                    // 대소문자?

                                } // for j
                                // append(br) 줄바꿈
                            } // for i
                            pcscnt = 4;
                            //next 버튼이 예매 버튼으로 바뀜
                        } else if (pcscnt === 4) {
                            // 결제 + 예매코드 생성
                        	// ticketcon nextbtn seats div(이거는 클래스로 빼기) 묶기?
//                        	$(".nextBtnclass").empty();
//                        	$(".seatsdiv").empty();
                        	let tm_nm = $("#selM").text()
                        	let tm_num = getMcode($("#selM").text())
                        	let seat_num = $("#selS").text()
                        	let mb_id = sessionStorage.getItem("login_id_storage")
                        	
                        	$(".wrap").empty();
                        
                        	$.ajax({
                        		 url:"../ticketrest/makeTicket"
                        		,type:"POST"
                        		,dataType : "JSON"
                        		,data : {mv_num : mv_num
                        				,tm_num :  tm_num
                        				,tt_num : tt_date
                        				,seat_num : seat_num
                        				,mb_id : mb_id //
                        				}
                        		,success : function(data){
                        			//예매코드가 생성되었음을 알림
                        			//영화 사진
                        			//예매코드
                        			//문구(예매가 완료되었습니다)
                        			//버튼 (홈으로)
                        			alert("예매완료");
                        			$(".wrap").append(
                        					"<ul><li> 예매가 완료되었습니다. </li>"
                        					+ "<li> <img src = '' /> </li>"
                        					+ "<li> 영화관 : " + tm_nm + "</li>"
                        					+ "<li> 일시 : " + tt_datedate + "</li>"
                        					+ "<li> 좌석 번호 : "+ seat_num +" </li>"
                        					+ "<li> 홈으로  /  MyCGV </li></ul>"
                        			
                        			)
                        		}
                        	});//ajax
                        	
                        	
                        } else {
                            // 오류 페이지 세션정보를 잃었거나 비 정상일경우
                        }

                    }); // click next

            // day 클릭시 cnt 3 넥스트시 3검사 로그인 세션검사(나중에 페이지에서 로그인시도 시 진행정보 그냥
            // 날리기로?)
            // 클릭한 칸의 값을 스크립트에서 저장? --> if cnt3 으로 가져와서 쿼리 돌려서 tcount 뽑고
            // 거기서 2중
            // if 돌려서 좌석 뽑음
            $(document).on("click", "tr[id^=scode]", function() {
            	pcscnt = 3;
                $("#selT").text($(this).text());
                subtime = ($(this).text()).substring(21,24);
               // $("#selT").text(subtime);
            });
//        	function getFormatDate(date){
//        		
//        		let year = date.getFullyear();
//        		let month = new String(date.getMonth() + 1);
//        		month = month >= 10 ? month : '0' + month; // month 두자리로 저장
//        		let day = new String(date.getDate());
//        		day = day >= 10 ? day : '0' + day; //day 두자리로 저장
//        		
//        		let hours = date.getHours();
//        		hours = hours >= 10 ? hours : '0' + hours;
//        		let min = date.getMinutes();
//        		min = min >= 10 ? min : '0' + min;
//        		let sec = date.getSeconds();
//        		sec = sec >= 10 ? sec : '0' + sec;
//        		
//        		return year + '/' + month + '/' + day + " "+ hours + ":" + min + ":" + sec;
//        	}
        	
            // 좌석 체크박스 클릭시 selS에 텍스트 추가 or 삭제
            // pcscnt = 4;
            
            function getMcode(data){
            	
            		let ts_num = data
            	  switch (ts_num) {
                  case 'car cinema':
                      ts_num = 1;
                      break;
                  case 'cgv강남':
                      ts_num = 2;
                      break;
                  case 'cgv강변':
                      ts_num = 3;
                      break;
                  case 'cgv홍대':
                      ts_num = 4;
                      break;
                  case 'cgv경기광주':
                      ts_num = 5;
                      break;
                  case 'cgv고양행신':
                      ts_num = 6;
                      break;
                  case 'cgv계양':
                      ts_num = 7;
                      break;
                  case 'cgv남주안':
                      ts_num = 8;
                      break;
                  case 'cgv강릉':
                      ts_num = 9;
                      break;
                  case 'cgv원주':
                      ts_num = 10;
                      break;
                  case 'cgv당진':
                      ts_num = 11;
                      break;
                  case 'cgv대전':
                      ts_num = 12;
                      break;
                  case 'cgv대구':
                      ts_num = 13;
                      break;
                  case 'cgv대구수성':
                      ts_num = 14;
                      break;
                  case 'cgv남포':
                      ts_num = 15;
                      break;
                  case 'cgv대연':
                      ts_num = 16;
                      break;
                  case 'cgv거제':
                      ts_num = 17;
                      break;
                  case 'cgv고성':
                      ts_num = 18;
                      break;
                  case 'cgv광양':
                      ts_num = 19;
                      break;
                  case 'cgv광양 엘에프스퀘어':
                      ts_num = 20;
                      break;
              }; // switch
              
              return ts_num;
            }
            

        }); // ready