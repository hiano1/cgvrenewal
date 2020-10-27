package kr.co.cgvnew.ticket;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/ticket")
public class TicketController {
	
	@Autowired
	private TicketService service;
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String home(Model model) {
		List<TicketDTO> list = service.selectLarge();
		model.addAttribute("largeList", list);
		
		return "ticket/ticket";
	}
	
}
