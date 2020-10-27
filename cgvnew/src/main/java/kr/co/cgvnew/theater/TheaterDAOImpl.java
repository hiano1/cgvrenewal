package kr.co.cgvnew.theater;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class TheaterDAOImpl implements TheaterDAO {
	
	@Autowired
	private SqlSession sqlsession;
	
	@Override
	public List<TheaterDTO> listAll() {
		List<TheaterDTO> list = sqlsession.selectList("TheaterMapper.largeList");
		return list;
	}

	@Override
	public List<TheaterDTO> selectMiddle(String lcode) {
		List<TheaterDTO> list = sqlsession.selectList("TheaterMapper.middleList",lcode);
		return list;
	}

	@Override
	public List<TheaterDTO> detailMiddle(String mcode) {
		List<TheaterDTO> list = sqlsession.selectList("TheaterMapper.middledetail",mcode);
		return list;
	}

}
