package kr.co.cgvnew;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service

public class HomeServiceImpl implements HomeService {

	@Autowired
	private HDAO dao;
	
	@Override
	public List<HDTO> list() {
		List<HDTO> list = dao.list();
		return list;
	}

}
