package kr.co.cgvnew.register;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class RegisterRestController {
	
	private static final Logger logger
	= LoggerFactory.getLogger(RegisterRestController.class);
	
	
	@Autowired
	private RegisterService service;
	
	
	@RequestMapping(value="/register/findid", method=RequestMethod.POST)
	public List<RegisterDTO> findId(RegisterDTO inDto) {
		
		logger.info("findId");
		List<RegisterDTO> list = service.findId(inDto);
		return list;
		
	}//findId
	
	
	
}
