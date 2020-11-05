package kr.co.cgvnew.manager;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class ManagerController {
	@Autowired
	private ManagerService service;
	
	public String timeList() {
		List<ManagerDTO> list = service.timelist();
		return "/manager/movieSet";
	}
}
