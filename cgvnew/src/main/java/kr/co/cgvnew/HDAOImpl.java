package kr.co.cgvnew;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class HDAOImpl implements HDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<HDTO> list() {
		List<HDTO> list = sqlSession.selectList("HomeListMapper.list");
		return list;
	}

}
