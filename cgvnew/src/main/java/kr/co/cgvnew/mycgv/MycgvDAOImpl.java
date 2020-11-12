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
	}

}
