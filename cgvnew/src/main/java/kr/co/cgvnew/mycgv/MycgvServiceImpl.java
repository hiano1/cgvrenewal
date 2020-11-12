package kr.co.cgvnew.mycgv;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class MycgvServiceImpl implements MycgvService {
	@Autowired
	private MycgvDAO dao;
	
	@Override
	public List<MycgvDTO> myInfo(String myInfo) {
		
		List<MycgvDTO> list = dao.myInfo(myInfo);
		return list;
	}

}
