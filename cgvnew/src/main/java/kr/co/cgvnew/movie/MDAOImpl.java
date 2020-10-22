package kr.co.cgvnew.movie;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MDAOImpl implements MDAO {

	private SqlSession sqlSession;
	
	@Override
	public List<MDTO> list() {

		List<MDTO> list = sqlSession.selectList("MovieMapper.list");
		
		return list;
	}

}
