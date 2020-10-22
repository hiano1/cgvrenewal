package kr.co.cgvnew.movie;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
public class MovieController {
	
	//private static final Logger logger = LoggerFactory.getLogger(MovieController.class);
@Autowired
	private  MService  service ; 

@RequestMapping(value = "/mdetail", method = RequestMethod.GET)
	public String moviedetail(Model model ,String mv_num) {
//		logger.info("Welcome home! The client locale is {}.", locale);
		
		
 MDTO dto = service.detail(mv_num);
model.addAttribute("movie_detail",dto);
	
		
		return "/movie/detail";
	}
	
}
/*
 * 혜찐이 
 * rudgusfjdjkdjlfa
 * hgbkjjkkjnj
 */
