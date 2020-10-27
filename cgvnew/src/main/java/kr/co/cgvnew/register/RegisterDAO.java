package kr.co.cgvnew.register;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RegisterDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	
	
	public int register(RegisterDTO inDto) {
		int successCnt = sqlSession.insert("RegisterMapper.register", inDto);
		return successCnt;
	}//register

	
	public int login(RegisterDTO inDto) {
		int successCnt
		= sqlSession.selectOne("RegisterMapper.login", inDto);
	return successCnt;
	}//login
	
	
	public int idCheck(RegisterDTO inDto) {
		int successCnt
		= sqlSession.selectOne("RegisterMapper.idCheck", inDto);
	return successCnt;
	}//idCheck

	
	
}//class
