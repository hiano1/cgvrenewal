package kr.co.cgvnew.movie;



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
	

	
	
}
