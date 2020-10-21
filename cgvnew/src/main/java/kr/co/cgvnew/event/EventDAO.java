package kr.co.cgvnew.event;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class EventDAO {

	@Autowired
	private SqlSession SqlSession;
	
	

	public List<EventBoardDTO> eventlist() {
		
		List<EventBoardDTO> list = SqlSession.selectList("EventListMapper.list");
		return list;
	}

}
