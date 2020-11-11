package kr.co.cgvnew.register;

import java.util.List;

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


	public int idChk(String mb_id) {
		int idCount
		= sqlSession.selectOne("RegisterMapper.idChk", mb_id);
		return idCount;
	}//idChk

	public List<RegisterDTO> findId(RegisterDTO inDto) {
		List<RegisterDTO> list = sqlSession.selectList("RegisterMapper.findId", inDto);
		return list;
	}//findId


	public int userYNForPWD(RegisterDTO inDto) {
		int userYN = sqlSession.selectOne(
				"RegisterMapper.userYNForPWD", inDto);
		return userYN;
	}//userYNForPWD

	
	public int updatePwd(RegisterDTO inDto) {
		int successCnt = sqlSession.update(
				"RegisterMapper.updatePwd", inDto);
		return successCnt;
	}//updatePwd

	
}//class


