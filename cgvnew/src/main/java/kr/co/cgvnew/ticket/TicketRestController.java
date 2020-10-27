package kr.co.cgvnew.ticket;

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
	
	

}
