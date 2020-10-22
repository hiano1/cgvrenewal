package kr.co.cgvnew.theater;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class theaServiceImpl implements theaService {
	@Autowired
	private mTheaterDAO dao;
	
	@Override
	public List<mTheaterDTO> list() {
		List<mTheaterDTO> list = dao.listAll();
		return list;
	}

}
