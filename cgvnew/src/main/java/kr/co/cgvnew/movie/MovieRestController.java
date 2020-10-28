package kr.co.cgvnew.movie;


import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;



@RestController
@RequestMapping(value = "/rest")
public class MovieRestController {

	
	@Autowired
	private MService service;



	@RequestMapping(value = "/search", method = RequestMethod.GET)
		public List<MDTO> listSearch(String mv_nm ) {

			List<MDTO> list = service.listSearch(mv_nm);
		return list;
	} // list



}
/*
 * 혜찐이 rudgusfjdjkdjlfa hgbkjjkkjnj
 */
