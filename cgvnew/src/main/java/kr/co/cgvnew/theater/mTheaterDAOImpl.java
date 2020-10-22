package kr.co.cgvnew.theater;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class mTheaterDAOImpl implements mTheaterDAO {
	
	@Autowired
	private SqlSession sqlsession;
	
	@Override
	public List<mTheaterDTO> listAll() {
		List<mTheaterDTO> list = sqlsession.selectList("TheaterMapper.mtheaterlist");
		return list;
	}

}
