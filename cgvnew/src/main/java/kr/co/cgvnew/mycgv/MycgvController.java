package kr.co.cgvnew.mycgv;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
public class MycgvController {
	@Autowired
	private MycgvService service;
	
	@RequestMapping(value = "/mycgv", method = RequestMethod.GET)
	public String myCgvPage(HttpSession session, Model model) {
		String myInfo = (String)session.getAttribute("login_id_session");
		List<MycgvDTO> list = service.myInfo(myInfo);
		model.addAttribute("myInfo",list);
		return"mycgv/mycgv";
	}//myCgvPage
	
	@RequestMapping(value = "/infoupdate", method = RequestMethod.GET)
	public String infoUpdate() {
		return"mycgv/infoUpdate";
	}
	
	
}//class
