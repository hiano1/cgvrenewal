package kr.co.cgvnew.mycgv;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MycgvController {
	
	@RequestMapping(value = "/mycgv", method = RequestMethod.GET)
	public String myCgvPage() {
		return"mycgv/mycgv";
	}//myCgvPage
	
}//class
