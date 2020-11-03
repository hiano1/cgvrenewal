package kr.co.cgvnew.ticket;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.cgvnew.movie.MDTO;

@Service
public class TicketService {

	@Autowired
	private TicketDAO dao;

	public List<TicketDTO> selectLarge() {
		List<TicketDTO> list = dao.selectLarge();
		return list;
	}

	public List<TicketDTO> selectMiddle(String lcode) {
		List<TicketDTO> list = dao.seletMiddle(lcode);
		return list;
	}

	public List<MDTO> selectedmovie(String mnum) {
		List<MDTO> selectedmovie = dao.selectedmovie(mnum);
		return selectedmovie;
	}

}
