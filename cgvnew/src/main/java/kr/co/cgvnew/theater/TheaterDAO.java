package kr.co.cgvnew.theater;

import java.util.List;

public interface TheaterDAO {

	List<TheaterDTO> listAll();

	List<TheaterDTO> selectMiddle(String lcode);

	List<TheaterDTO> detailMiddle(String mcode);

}
