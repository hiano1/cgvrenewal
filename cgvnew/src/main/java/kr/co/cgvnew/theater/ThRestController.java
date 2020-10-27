package kr.co.cgvnew.theater;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/Threst")
public class ThRestController {
	@Autowired
	private TheaterService service;
	
	@RequestMapping(value = "/middle", method = RequestMethod.GET)
	public List<TheaterDTO> selectMiddle(String lcode) {
		List<TheaterDTO> list = service.selectMiddle(lcode);
		return list;
	}
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public List<TheaterDTO> detailMiddle(String mcode) {
		System.out.println(mcode+"=====================");
		List<TheaterDTO> list = service.detailMiddle(mcode);
		return list;
	}
	
	
	
	
	
	
}
