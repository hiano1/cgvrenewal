package kr.co.cgvnew.mycgv;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/mycgv")
public class MycgvRestController {
	
	private static final Logger logger
	= LoggerFactory.getLogger(MycgvRestController.class);
	
	@Autowired
	private MycgvService service;
	
	
	@RequestMapping(value="/infoupdate", method=RequestMethod.POST)
	public int infoUpdate(MycgvDTO inDto) {
		int updateCnt = service.infoUpdate(inDto);
		logger.info(""+updateCnt);
		return updateCnt;
	}//infoUpdate
	
	
}//class
