package kr.co.cgvnew.event;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EventService {

	@Autowired
	private EventDAO dao;
	
	public List<EventBoardDTO> eventlist() {
		List<EventBoardDTO> list = dao.eventlist();
		return list;
	}
}
