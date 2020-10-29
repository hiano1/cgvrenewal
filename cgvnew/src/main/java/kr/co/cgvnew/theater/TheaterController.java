package kr.co.cgvnew.theater;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class TheaterController {
	
	@Autowired
	private TheaterService service;
	
	@RequestMapping(value = "/theater", method = RequestMethod.GET)
	public String mTheaterlist(Model model) {
		List<TheaterDTO> list = service.list();
		model.addAttribute("largeList", list);
		return "theater/theater";
	}//mTheater
	
	@RequestMapping(value = "/thea/spT", method = RequestMethod.GET)
	public String spTheater() {
		return "theater/special";
	}//spTheater
	
	
	
}//class
