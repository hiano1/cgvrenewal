package kr.co.cgvnew.theater;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TheaterServiceImpl implements TheaterService {
	@Autowired
	private TheaterDAO dao;
	
	@Override
	public List<TheaterDTO> list() {
		List<TheaterDTO> list = dao.listAll();
		return list;
	}

	@Override
	public List<TheaterDTO> selectMiddle(String lcode) {
		List<TheaterDTO> list = dao.selectMiddle(lcode);
		return list;
	}

	@Override
	public List<TheaterDTO> detailMiddle(String mcode) {
		List<TheaterDTO> list = dao.detailMiddle(mcode);
		return list;
	}

}
