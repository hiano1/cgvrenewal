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
		List<MycgvDTO> list = service.myInfo(myInfo);//로그인-마이페이지
		model.addAttribute("myInfo",list);

		List<MycgvDTO> list2 = service.myInfo2(myInfo);//쿠폰
		model.addAttribute("myInfo2",list2);
		return"mycgv/mycgv";
	}//myCgvPage
	
	@RequestMapping(value="/infoupdateForm", method = RequestMethod.GET)
	public String infoUpdateForm(HttpSession session, Model model) {
		String memberInfo = (String)session.getAttribute("login_id_session");
		MycgvDTO info = service.memberInfo(memberInfo);
		model.addAttribute("info", info);
		return"mycgv/infoupdate_form";
	}//infoUpdate
	
	
}//class
