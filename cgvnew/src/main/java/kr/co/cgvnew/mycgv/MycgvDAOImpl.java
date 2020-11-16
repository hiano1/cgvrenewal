package kr.co.cgvnew.mycgv;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MycgvDAOImpl implements MycgvDAO {
	
	@Autowired
	private SqlSession sqlsession;
	
	@Override
	public List<MycgvDTO> myInfo(String myInfo) {
		List<MycgvDTO> list = sqlsession.selectList("MycgvMapper.myinfo",myInfo);
		return list;
	}//myInfo

	@Override
	public MycgvDTO memberInfo(String memberInfo) {
		MycgvDTO info = sqlsession.selectOne("MycgvMapper.memberInfo", memberInfo);
		return info;
	}//memberInfo: 회원 정보 수정 페이지

	@Override
	public int infoUpdate(MycgvDTO inDto) {
		int updateCnt = sqlsession.update("MycgvMapper.infoUpdate", inDto);
		return updateCnt;
	}//infoUpdate
	
	@Override
	public List<MycgvDTO> myInfo2(String myInfo) {
		List<MycgvDTO> list2 = sqlsession.selectList("MycgvMapper.myinfo2",myInfo);
		return list2;
	}

	@Override
	public int mbrDelete(MycgvDTO inDto) {
		int deleteCnt = sqlsession.delete("MycgvMapper.mbrDelete", inDto);
		return deleteCnt;
	}//mbrDelete
	
	
}//class
