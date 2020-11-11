package kr.co.cgvnew.event;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class EventController {
	
	@Autowired
	private EventService service;
	
	@RequestMapping(value = "/ev1" , method = RequestMethod.GET)
	public String eventlist(Model model) {
		
		List<EventBoardDTO> list = service.eventlist();
		
		model.addAttribute("event_list",list);
		
		return "event/ev_main";
	}
	@RequestMapping(value = "/ev_detail",method = RequestMethod.GET)
	public String eventdetail(Model model, String ev_num) {
		
		System.out.println(ev_num);
		EventBoardDTO dto = service.detail(ev_num);
		model.addAttribute("event_detail", dto);
		
		return "/event/ev_detail";
		
		
	}
	
}
