package kr.co.cgvnew.ticket;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.cgvnew.movie.MDTO;


@Controller
@RequestMapping(value = "/ticket")
public class TicketController {

	@Autowired
	private TicketService service;

	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String home(Model model, String mnum) {
		
		if (mnum == null) {
			mnum = "1";
		} // mnum 없이 넘어온 경우 기본값
		
		List<MDTO> selectedmovie = service.selectedmovie(mnum);// 선택된 영화
		List<TicketDTO> lList = service.selectLarge();// 지역선택
		model.addAttribute("largeList", lList);
		model.addAttribute("smv", selectedmovie);
		
		return "ticket/ticket";
	}//home
	
	
	

}//class
