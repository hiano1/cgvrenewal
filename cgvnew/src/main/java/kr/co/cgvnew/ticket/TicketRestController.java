package kr.co.cgvnew.ticket;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/ticketrest")
public class TicketRestController {
	@Autowired
	private TicketService service;
	
	@RequestMapping(value = "middle", method = RequestMethod.GET)
	public List<TicketDTO> selectMiddle(String lcode) {
		List<TicketDTO> list = service.selectMiddle(lcode);
		
		return list;
	}
	
	@RequestMapping(value = "seat", method = RequestMethod.GET)
	public List<SeatDTO> selectSeat(String mcode){
		List<SeatDTO> list = service.selectSeat(mcode);
		
		return list;
	}
	
	@RequestMapping(value = "timetable", method = RequestMethod.GET)
	public List<TTDTO> selectTimeTable(String ts_num ,String date){
		HashMap<String,Object> map = new HashMap<String, Object>();
		map.put("ts_num", ts_num);
		map.put("date", date);
		List<TTDTO> list = service.selectTimeTable(map);
		
		return list;
	}
}
