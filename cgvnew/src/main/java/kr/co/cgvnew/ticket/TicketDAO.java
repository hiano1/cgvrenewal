package kr.co.cgvnew.ticket;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TicketDAO {

	@Autowired
	private SqlSession sqlSession;
	
	public List<TicketDTO> selectLarge() {
		List<TicketDTO> list = sqlSession.selectList("TicketMapper.selectLarge");
		return list;
	}

	public List<TicketDTO> seletMiddle(String lcode) {
		List<TicketDTO> list = sqlSession.selectList("TicketMapper.selectMiddle", lcode);
		return list;
	}

}
