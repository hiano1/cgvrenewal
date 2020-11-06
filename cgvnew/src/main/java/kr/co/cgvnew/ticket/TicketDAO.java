package kr.co.cgvnew.ticket;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.cgvnew.movie.MDTO;

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

	public List<MDTO> selectedmovie(String mnum) {
		List<MDTO> selectedmovie = sqlSession.selectList("TicketMapper.selectedmovie", mnum);
		return selectedmovie;
	}

	public List<SeatDTO> selectSeat(String mcode) {
		List<SeatDTO> list = sqlSession.selectList("TicketMapper.selectList", mcode);
		return list;
	}

	public List<TTDTO> selectTimeTable(String ts_num) {
		List<TTDTO> list = sqlSession.selectList("TicketMapper.selectTimeTable", ts_num);
		return list;
	}

}
