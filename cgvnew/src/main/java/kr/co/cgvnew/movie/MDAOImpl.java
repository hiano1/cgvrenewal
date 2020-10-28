package kr.co.cgvnew.movie;



import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MDAOImpl implements MDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public MDTO detail(String mv_num) {
		MDTO dto = sqlSession.selectOne("MovieMapper.detail", mv_num);
		return dto;
	}

	@Override
	public List<MDTO> list() {
		List<MDTO> list = sqlSession.selectList("MovieMapper.list");
		return list;
	}





	@Override
	public List<MDTO> listSearch(String mv_nm) {
		List<MDTO> listSearch = sqlSession.selectList("MovieMapper.listSearch",mv_nm);
		return listSearch;
	}


	

	
	
}
