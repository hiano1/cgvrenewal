package kr.co.cgvnew.movie;



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

}
