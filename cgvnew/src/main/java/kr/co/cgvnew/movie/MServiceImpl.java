package kr.co.cgvnew.movie;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MServiceImpl implements MService {

	@Autowired
	private MDAO dao;
	
	@Override
	public MDTO detail(String mv_num) {
		MDTO dto = dao.detail(mv_num);
	
		return dto;
	}

	@Override
	public List<MDTO> list() {
		List<MDTO> list = dao.list();
		return list;
	}


	@Override
	public List<MDTO> listSearch(String mv_nm) {
		 List<MDTO> listSearch = dao.listSearch(mv_nm);
		return listSearch;
	}


}
