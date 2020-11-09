package kr.co.cgvnew;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	@Autowired
	private HomeService service; 
	


	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {

	List<HDTO> list = service.list();
	
	model.addAttribute("home_list",list);
		

		
		return "home";
	}//home
	@RequestMapping(value = "/header", method = RequestMethod.GET)
	public String homeheader(Model model) {
		
		List<HDTO> list = service.list();
		
		model.addAttribute("home_list",list);
		
		
		
		return "home_header2";
	}//home
	

	
}
/*
 * 혜찐이 
 * rudgusfjdjkdjlfa
 * hgbkjjkkjnjㅇㅇㅇㅇ
 */
