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
	private theaService service;
	
	@RequestMapping(value = "/theater1", method = RequestMethod.GET)
	public String mTheaterlist(Model model) {
		List<mTheaterDTO> list = service.list();
		model.addAttribute("mtheaterdetail", list);
		return "theater/theater";
	}
	
	
}//class
